<?php
session_start();

// Get the user data
$projectName = filter_input(INPUT_POST, 'projectName');
$projectKey = filter_input(INPUT_POST, 'projectKey');
$projectDesc = filter_input(INPUT_POST, 'projectDescription');
$id = $_SESSION['login_id'];

// Validate inputs
if ($projectName == null || $projectKey == null || $projectDesc == null) {
    $error = "Please provide a name, key, and descirption at minimum.";
    include('error.php');
} 
else if ($id == null) {
	$error = "Please be logged in.";
    include('error.php');
}
else {
    require_once('database.php');

    // Add the project to the database  
    $query = 'INSERT INTO cms_allicense_content_projects
                 (projectKey, projectName, projectDescription, ownerID)
              VALUES
                 (:projectKey, :projectName, :projectDesc, :ownerID)';
    $statement = $db->prepare($query);
    $statement->bindValue(':projectKey', $projectKey);
    $statement->bindValue(':projectName', $projectName);
	$statement->bindValue(':projectDesc', $projectDesc);
    $statement->bindValue(':ownerID', $id);
    $statement->execute();
    $statement->closeCursor();

    // Display the Customer List page
    //include('index_CRUD.php');
	header('Location: /wd16/0800/taylor/Project/index_CRUD.php');
}
?>