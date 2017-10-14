<?php
require_once('database.php');
session_start();

// Get IDs
$recid = filter_input(INPUT_GET, 'recid', FILTER_VALIDATE_INT);

// Get the article from the database
$query = 'SELECT * FROM cms_allicense_content_blocks
		  WHERE recid = :recid';
$statement1 = $db->prepare($query);
$statement1->bindValue(':recid', $recid);
$statement1->execute();
$articles = $statement1->fetch();
$statement1->closeCursor();
?>
<!DOCTYPE html>
<html>
<!-- the head section -->
<head>
    <title>AMS</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
</head>

<!-- the body section -->
<body>
<main>
    <h1><?php echo $articles['title']; ?></h1>
	<h2><?php echo $articles['publicationDate']; ?></h2>
	<i><?php echo $articles['summary']; ?></i>
	<p><?php echo $articles['content']; ?></p>
	<h2><?php echo 'Project: ' . $articles['project']; ?></h2>
</main> 
<section>
	<?php
		if ((empty($articles['project']) && isset($_SESSION['login_user'])) || (isset($_SESSION['login_project']) && $_SESSION['login_project'] == $articles['project']))
		{?>
			<form action="update_article_form.php" method="post">
				<input type="hidden" name="recid"
					   value="<?php echo $articles['recid']; ?>">
				<input type="submit" value="Update">
			</form>
			<form action="delete_article_confirmation.php" method="post">
				<input type="hidden" name="recid"
					   value="<?php echo $articles['recid']; ?>">
				<input type="submit" value="Delete">
			</form>
		<?php }
	?>
	
	
	<p><a href="index_CRUD.php">View Article List</a></p>
</section>   
<footer>
</footer>
</body>
</html>