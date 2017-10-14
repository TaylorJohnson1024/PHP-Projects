<?php
   require_once("database.php");
   session_start();
   $error = '';
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
	  $myusername = filter_input(INPUT_POST, 'username');
	  $mypassword = filter_input(INPUT_POST, 'password');
	  
	  $query = 'SELECT acctid, count(*) as total
	      FROM cms_allicense_content_accounts
		  WHERE userName = :username and
		    userPass = :password
		  GROUP BY acctid';
	  $statement = $db->prepare($query);
	  $statement->bindValue(':username', $myusername);
	  $statement->bindValue(':password', $mypassword);
      $statement->execute();
	  $login = $statement->fetch();
	  $count = $login['total'];
	  $myuserid = $login['acctid'];;
	  $statement->closeCursor();
	  
	  
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         $_SESSION['login_user'] = $myusername;
		 $_SESSION['login_id'] = $myuserid;
         
         header("location: index_CRUD.php");
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }
?>
<html>
   
   <head>
      <title>Login Page</title>
      
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
                  <label>UserName :</label><input type = "text" name = "username" class = "box"/><br /><br />
                  <label>Password :</label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
			   <a href="register_form.php">Register</a><br>
			   <a href="index_CRUD.php">View Article List</a>
            </div>
				
         </div>
			
      </div>
   </body>
</html>