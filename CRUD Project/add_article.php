<?php
// Get the article data
$date = filter_input(INPUT_POST, 'date');
$title = filter_input(INPUT_POST, 'title');
$summary = filter_input(INPUT_POST, 'summary');
$content = filter_input(INPUT_POST, 'content');
$project = filter_input(INPUT_POST, 'project');

// Validate inputs
if ($title == null || $content == null || $summary == null || $date == null) {
    $error = "Please provide a title, content, and date at minimum.";
    include('error.php');
} else {
    require_once('database.php');

    // Add the article to the database  
    $query = 'INSERT INTO cms_allicense_content_blocks
                 (publicationDate, title, summary, content, project)
              VALUES
                 (:date, :title, :summary, :content, :project)';
    $statement = $db->prepare($query);
    $statement->bindValue(':date', $date);
    $statement->bindValue(':title', $title);
    $statement->bindValue(':summary', $summary);
    $statement->bindValue(':content', $content);
	$statement->bindValue(':project', $project);
    $statement->execute();
    $statement->closeCursor();

    // Display the Customer List page
    include('index_CRUD.php');
}
?>