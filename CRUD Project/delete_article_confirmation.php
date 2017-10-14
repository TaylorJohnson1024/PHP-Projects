<?php
require_once('database.php');

// Get IDs
$recid = filter_input(INPUT_POST, 'recid', FILTER_VALIDATE_INT);
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
        <h1>Delete Article</h1>
        <form action="delete_article.php" method="post"
              id="delete_article_form">
			  
			<input type="hidden" name="recid"
                value="<?php echo $recid; ?>">

            <input type="submit" value="Delete Article"><br>
        </form>
        <form action="articles_full_view.php" method="get"
              id="delete_cancel_link">
			  
			<input type="hidden" name="recid"
                value="<?php echo $recid; ?>">

            <input type="submit" value="Cancel"><br>
        </form>
    </main>
</body>
</html>