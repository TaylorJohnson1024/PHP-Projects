<?php
    $dsn = 'mysql:host=mysql13.ezhostingserver.com;port=3306;dbname=allicense';
    $username = 'webdata';
    $password = 'W3bD@t@';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }
?>