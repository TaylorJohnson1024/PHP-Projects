<?php
// Get the user data
$userName = filter_input(INPUT_POST, 'username');
$userPass = filter_input(INPUT_POST, 'userpass');
$firstName = filter_input(INPUT_POST, 'first_name');
$lastName = filter_input(INPUT_POST, 'last_name');
$email = filter_input(INPUT_POST, 'email');

// Validate inputs
if ($userName == null || $userPass == null || $email == null) {
    $error = "Please provide a username, password, and email at minimum.";
    include('error.php');
} else {
    require_once('database.php');

    // Add the article to the database  
    $query = 'INSERT INTO cms_allicense_content_accounts
                 (firstName, lastName, userName, userPass, emailAddr)
              VALUES
                 (:firstName, :lastName, :userName, :userPass, :email)';
    $statement = $db->prepare($query);
    $statement->bindValue(':firstName', $firstName);
    $statement->bindValue(':lastName', $lastName);
	$statement->bindValue(':userName', $userName);
    $statement->bindValue(':userPass', $userPass);
	$statement->bindValue(':email', $email);
    $statement->execute();
    $statement->closeCursor();

    // Display the Customer List page
    include('login.php');
}
?>