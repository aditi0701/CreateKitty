
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Expenses</title>
         <link rel="shortcut icon" type="image/png" href="images/favicon.png">
         <link rel="stylesheet" href="css1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
        
    </head>
    
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light" style="opacity: 0.85">
                <a class="navbar-brand" href="#">Kitty Split</a>
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
        <blockquote class="blockquote text-right">
            <p class="mb-0" style="color: white">Some Ideas</p>
            <footer class="blockquote-footer" style="color: white"> <cite title="Source Title">Jack paid for rental car.</cite></footer>
        </blockquote>
        
        

            <form action="overview.jsp"  method="post">
                
                <table cellpadding = "15" cellspacing = "20">
                    <tr>
                        <td><button type="button" class="btn btn-outline-primary" style="font-size: 20px">Expense</button></td>
                       <td><button type="button" class="btn btn-outline-danger" style="font-size: 20px">Money Given</button></td>
                       <td><button type="button" class="btn btn-outline-warning" style="font-size: 20px">Income</button></td>
                    </tr>
                </table>
            
            
          
            <fieldset>
                <legend>Paid for something</legend>
                </fieldset>
                <select name="paid" id="paid">
                    <option value="person1">Person 1</option>
                    <option value="person2">Person 2</option>
                    <option value="person3">Person 3</option>
                    <option value="person4">So On...</option>
                </select>
                
                 <fieldset>
                <legend>How Much?</legend>
                 </fieldset>  
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="color: #696969">$</span>
                    </div>
                    <input type="text" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" required>
                </div>
                    
                <p style="font-size:17px; color: #A569BD ">To use multiple currencies ,upgrade this kitty.</p>
                

            <div class="split-selector unequal-split radio">
            <label class="split-equally-everyone">       
                <input autocomplete="off" data-parties-count="2" id="entry_split_equally_all_true" name="entry[split_equally_all]" type="radio" value="true" checked onclick="show(1)">
                    Split equally between everyone      
            </label>
                  <br>
            <label>      
                <input autocomplete="off" id="entry_split_equally_all_false" name="entry[split_equally_all]" type="radio" value="false" onclick="show(0)">
                    Split differently     
            </label>
            </div>
                
                <div id="split" style="display: none">
                    <table cellpadding = "15" cellspacing = "20">
                    <tr>
                        <td><button type="button" class="btn btn-outline-primary" style="font-size: 20px">Equally</button></td>
                       <td><button type="button" class="btn btn-outline-danger" style="font-size: 20px">Amount</button></td>
                       <td><button type="button" class="btn btn-outline-warning" style="font-size: 20px">Weight</button></td>
                    </tr>
                    </table>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <input type="checkbox" aria-label="Checkbox for following text input">
                          </div>
                        </div>
                        <input type="text" class="form-control" aria-label="All" placeholder="All" readonly>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <input type="checkbox" aria-label="Checkbox for following text input">
                          </div>
                        </div>
                        <input type="text" class="form-control" aria-label="name" placeholder="Person 1" readonly>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <div class="input-group-text">
                            <input type="checkbox" aria-label="Checkbox for following text input">
                          </div>
                        </div>
                        <input type="text" class="form-control" aria-label="name" placeholder="Person 2" readonly>
                    </div>
                    
                
                <script>
                        function show(val){
                           if(val==0){
                            document.getElementById('split').style.display="block";
                            }
                            if(val==1){
                              document.getElementById('split').style.display="none";  
                            }
                        }
                </script> 
                
                
                    
                </div>    
                <fieldset>
                    <legend style="margin-top: 30px">What for?</legend>
                    </fieldset>
                <input type="text" id="whatfor" name="whatfor" placeholder="Ski Pass">
                
                <fieldset>
                <legend>When?</legend>
                </fieldset>
                <input type="date" id="password" name="dob_signup" required>
               <hr>
               
                
                     <table cellpadding = "25" cellspacing = "20">
                    <tr>
                        <td><button type="submit" style="font-size:25px ; padding: 10px">Add</button></td>
                        
                        <td><a class="btn btn-primary" href="expenses.jsp" role="button" style="background-color: red; padding: 10px; font-size:25px " >Cancel</a></td>
                    </tr>
                </table>
                </form> 
        
            
            <%@include  file="footer.jsp" %>
        
        
    </body>
</html>
