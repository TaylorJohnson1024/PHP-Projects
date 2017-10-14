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
        <h1>Add New User</h1>
        <form action="register.php" method="post"
              id="register_form">

            <label>UserName:</label>
            <input type="text" name="username"><br>
			
			<label>Password:</label>
            <input type="password" name="userpass" ><br>

            <label>First Name:</label>
            <input type="text" name="first_name"><br>
			
			<label>Last Name:</label>
            <input type="text" name="last_name"><br>
			
			<label>Email Address:</label>
            <input type="text" name="email"><br>

            <label>&nbsp;</label>
            <input type="submit" value="Add User"><br>
        </form>
        <p><a href="login.php">View Login Page</a></p>
    </main>
</body>
</html>