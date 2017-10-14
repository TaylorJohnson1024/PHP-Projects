<?php
// Get the article data
$recid = filter_input(INPUT_POST, 'recid');
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

// Update the article to the database  
$query = 'UPDATE cms_allicense_content_blocks
		  SET publicationDate = :date, title = :title, summary = :summary, content = :content, project = :project
		  WHERE recid = :recid';
$statement = $db->prepare($query);
$statement->bindValue(':recid', $recid);
$statement->bindValue(':date', $date);
$statement->bindValue(':title', $title);
$statement->bindValue(':summary', $summary);
$statement->bindValue(':content', $content);
$statement->bindValue(':project', $project);
$statement->execute();
$statement->closeCursor();

// Display the Article List page
include('index_CRUD.php');
}
?>