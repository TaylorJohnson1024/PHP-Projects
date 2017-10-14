<?php
require_once('database.php');

// Get IDs
$recid = filter_input(INPUT_POST, 'recid', FILTER_VALIDATE_INT);

// Delete the product from the database
$query = 'DELETE FROM cms_allicense_content_blocks
		  WHERE recid = :recid';
$statement = $db->prepare($query);
$statement->bindValue(':recid', $recid);
$success = $statement->execute();
$statement->closeCursor();    

// Display the Product List page
include('index_CRUD.php');