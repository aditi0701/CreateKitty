
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
   <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
         <link rel="shortcut icon" type="image/png" href="images/favicon.png">
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css1.css">
    </head>

    <!-- Title Page-->
    
    <body>
       
        
      <form action="signup_dsc" method="post" >
      
        <h1>Sign Up</h1>
        
        <fieldset>
          <legend><span class="number">1</span>Your basic info</legend>
          
          <label for="name">Username:</label>
          <input type="text" id="username_signup" name="username_signup">
          
          <label for="name">First Name:</label>
          <input type="text" id="fname_signup" name="fname_signup">
          
           <label for="name">Last Name:</label>
          <input type="text" id="lname_signup" name="lname_signup">
          
          <label for="email">Email:</label>
          <input type="email" id="email_signup" name="email_signup">
          
          <label for="password">Password:</label>
          <input type="password" id="password_signup" name="password_signup">
             
          </fieldset>
       
        <button type="submit">Sign Up</button>
      </form>
</html>
