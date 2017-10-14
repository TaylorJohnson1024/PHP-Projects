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
        <h1>Add New Article</h1>
        <form action="add_article.php" method="post"
              id="add_article_form">

            <label>Title:</label>
            <input type="text" name="title"><br>
			
			<label>Publication Date:</label>
            <input type="text" name="date" placeholder="2016-03-04"><br>

            <label>Summary:</label>
            <textarea name="summary"></textarea><br>
			
			<label>Content:</label>
            <textarea name="content"></textarea><br>

            <label>Project:</label>
            <input type="text" name="project"><br><br>

            <label>&nbsp;</label>
            <input type="submit" value="Add Article"><br>
        </form>
        <p><a href="index_CRUD.php">View Article List</a></p>
    </main>
</body>
</html>