
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("sessionUsername");
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Overview</title>
         <link rel="shortcut icon" type="image/png" href="images/favicon.png">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <link rel="stylesheet" href="css1.css">
    </head>
    
   
    <body>
        <nav  class="navbar navbar-expand-lg navbar-light bg-light" style="opacity: 0.85">
            <a class="navbar-brand" href="#" style="color: black">Kitty Split</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                  <div class="navbar-nav">
                    <a class="nav-link active" href="index.html">Home <span class="sr-only">(current)</span></a>
                    <a class="nav-link active" href="error.jsp">Logout</a>
                    <a class="nav-link active" href="images/favicon.png">About</a>
                  </div>
                </div>
        </nav>
       
            <form action="error.jsp"  method="post">
                
               
                
                 <p style="font-size:24px; color:#F42AB4 ;font-family: initial;">Upgrade to a super Kitty!</p>
                 
                 <label for="you">You Are</label>
                 <select name="paid" id="paid">
                    <option value="person1"><%=username%></option>
                    <option value="person2">Person 2</option>
                    <option value="person3">Person 3</option>
                    <option value="person4">So On...</option>
                </select>
                
            
                 <table style= "border-collapse: collapse; " cellpadding = "30" cellspacing = "20">
                   
                    
                    <tbody>
                      <tr>
                        <th scope="row">This event costs the group:</th>
                        <td>&euro;100</td>
                      </tr>
                      <tr>
                          
                      <tr>
                        <th scope="row">It cost You:</th>
                        <td>&euro;50</td>
                      </tr>
                      <tr>
                        <th scope="row">You have Paid:</th>
                        <td>&euro;100</td>
                      </tr>
                      <tr>
                        <th scope="row">You are owned:</th>
                        <td colspan="2">&euro;50</td>
                      </tr>
                    </tbody>
                 </table>   
                
                    <button type="submit">Add Expense</button>
            </form>
            
        
    </body>
</html>
<%@include  file="footer.jsp" %>