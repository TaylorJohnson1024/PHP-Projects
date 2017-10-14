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
        <h1>Add New Project</h1>
        <form action="add_project.php" method="post"
              id="add_project_form">

            <label>Project Name:</label>
            <input type="text" name="projectName"><br>
			
			<label>Project Key:</label>
            <input type="password" name="projectKey" ><br>

            <label>Project Description:</label>
            <textarea name="projectDescription"></textarea><br>

            <label>&nbsp;</label>
            <input type="submit" value="Add Project"><br>
        </form>
        <p><a href="login_project.php">View Login Project Page</a></p>
    </main>
</body>
</html>