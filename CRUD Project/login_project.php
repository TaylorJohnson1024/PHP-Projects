<?php
   require_once("database.php");
   session_start();
   $error = '';
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // project and key sent from form 
      
	  $myproject = filter_input(INPUT_POST, 'projectName');
	  $mykey = filter_input(INPUT_POST, 'projectKey');
	  
	  $query = 'SELECT projectid, count(*) as total
	      FROM cms_allicense_content_projects
		  WHERE projectName = :projectName and
		    projectKey = :projectKey
		  GROUP BY projectid';
	  $statement = $db->prepare($query);
	  $statement->bindValue(':projectName', $myproject);
	  $statement->bindValue(':projectKey', $mykey);
      $statement->execute();
	  $login = $statement->fetch();
	  $count = $login['total'];
	  $statement->closeCursor();
	  
	  
      
      // If result matched $myproject and $mykey, table row must be 1 row
		
      if($count == 1) {
         $_SESSION['login_project'] = $mykey;
         
         header("location: index_CRUD.php");
      }else {
         $error = "Your Login Project or Key is invalid";
      }
   }
?>
<html>
   
   <head>
      <title>Login Project Page</title>
      
      <style type = "text/css">
         body {
            font-family:Arial, Helvetica, sans-serif;
            font-size:14px;
         }
         
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         }
         
         .box {
            border:#666666 solid 1px;
         }
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post">
                  <label>Project :</label><input type = "text" name = "projectName" class = "box"/><br /><br />
                  <label>Key :</label><input type = "password" name = "projectKey" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
			   <a href="add_project_form.php">Create Project</a><br>
			   <a href="index_CRUD.php">View Article List</a>
            </div>
				
         </div>
			
      </div>
   </body>
</html>