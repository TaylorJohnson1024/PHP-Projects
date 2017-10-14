<?php
require_once('database.php');
session_start();

// Get search criteria
if (isset($_POST['search_type']))
{
	$selected_radio = $_POST['search_type'];
}
else
{
	$selected_radio = 'test';
}
if (isset($_POST['search']))
{
	$textboxValue = $_POST['search'];
}
else
{
	$textboxValue = 'test';
}

// Get articles

// Acts as a search all
if ($selected_radio == 'date' && $textboxValue == '')
{
	$queryArticles = "SELECT *
    FROM  cms_allicense_content_blocks
	ORDER BY publicationDate desc";
}
// Narrows search to specific date
else if ($selected_radio == 'date' && $textboxValue != null)
{
	$queryArticles = "SELECT *
    FROM  cms_allicense_content_blocks
    WHERE $selected_radio = '".$textboxValue."'
	ORDER BY publicationDate desc";
}
// Uses 'like' for strings
else
{
	$queryArticles = "SELECT *
    FROM  cms_allicense_content_blocks
    WHERE $selected_radio LIKE '%".$textboxValue."%'
	ORDER BY publicationDate desc";
}

$statement1 = $db->prepare($queryArticles);
$statement1->execute();
$articles = $statement1->fetchAll();
$statement1->closeCursor();

$queryCount = "SELECT COUNT(*) as total
FROM cms_allicense_content_blocks";
$statement2 = $db->prepare($queryCount);
$statement2->execute();
$count = $statement2->fetch();
$statement2->closeCursor();
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
    <h1>Article List</h1>
    <p>You may search from the criteria below</p> 
	<form  method="post" action="index_CRUD.php"  id="searchform"> 
	    <input type="text" name="search">*<br>
		<input type="radio" name="search_type" value="title" checked="checked">Title<br>
		<input type="submit" name="submit" value="search">
	</form> 
	<p>*Leave empty to search for all records</p>
	<br>
	<?php
		if (isset($_SESSION['login_user']))
		{?>
			<form action="add_article_form.php" method="post">
			<input type="submit" value="Add New Article">
		<?php }
	?>
    </form>
	<section>
	<table>
		<?php
		if (isset($_POST['search_type']))
		{?>
			<tr>
				<th>Publication Date</th>
				<th>Article Title</th>
			</tr>
		<?php }
		?>
		
		<?php foreach ($articles as $a) : ?>
		<tr>
			<td><?php echo $a['publicationDate']; ?></td>
			<td><form action="articles_full_view.php" method="get">
                    <input type="hidden" name="recid"
                           value="<?php echo $a['recid']; ?>">
                    <input type="submit" value="<?php echo $a['title']; ?>" class='button'>
                </form></td>
		</tr>
        <?php endforeach; ?>  
	</table>
	</section>
</main>    
<footer>
	<?php
		if (isset($_SESSION['login_user']))
		{ 
			//echo $count['total'] . ' Articles have been retrieved.';
			echo 'Welcome back ' . $_SESSION['login_user']?>
			<br>
			<?php
				if (isset($_SESSION['login_project']))
				{
					echo 'Project: ' . $_SESSION['login_project'];
				}
			?>
			<br>
			<a href='login_project.php'>Sign In Project</a>
			<br>
			<a href='logout.php'>Sign Out</a>
		<?php }
	?>
	<?php
		if (!isset($_SESSION['login_user']))
		{ 
			//echo $count['total'] . ' Articles have been retrieved.';?>
			<br>
			<a href='login.php'>Sign In</a>
		<?php }
	?>
	<?php if ($_SERVER["REQUEST_METHOD"] == "POST")
	{
		//echo mysqli_num_rows($articles) . ' Articles have been retrieved.'; 
	}?>
</footer>
</body>
</html>