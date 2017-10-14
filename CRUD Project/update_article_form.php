<?php
require_once('database.php');

// Get IDs
$recid = filter_input(INPUT_POST, 'recid', FILTER_VALIDATE_INT);

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
    <link rel="stylesheet" type="text/css" href="main.css">
</head>

<!-- the body section -->
<body>
    <main>
        <h1>Update Article</h1>
        <form action="update_article.php" method="post"
              id="update_article_form">
			  
			<input type="hidden" name="recid"
                value="<?php echo $articles['recid']; ?>">

            <label>Title:</label>
            <input type="text" name="title" value="<?php echo $articles['title']; ?>"><br>

            <label>Publication Date:</label>
            <input type="text" name="date" value="<?php echo $articles['publicationDate']; ?>"><br>

            <label>Summary:</label>
            <textarea name="summary"><?php echo $articles['summary']; ?></textarea><br>
			
			<label>Content:</label>
            <textarea name="content"><?php echo $articles['content']; ?></textarea><br>

            <label>Project:</label>
            <input type="text" name="project" value="<?php echo $articles['project']; ?>"><br><br>

            <label>&nbsp;</label>
            <input type="submit" value="Update Article"><br>
        </form>
        <p><a href="index_CRUD.php">View Article List</a></p>
    </main>
</body>
</html>