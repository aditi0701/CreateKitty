
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("sessionUsername");
    
%>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>New Kitty</title>
         <link rel="shortcut icon" type="image/png" href="images/favicon.png">
         <link rel="stylesheet" href="css1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
       
        <SCRIPT language="javascript">
		function addRow(tableID) {
                        
			var table = document.getElementById(tableID);
                        
			var rowCount = table.rows.length;
                        console.log(rowCount);
			var row = table.insertRow(rowCount);
                       
			var colCount = table.rows[0].cells.length;

			for(var i=0; i<colCount; i++) {

				var newcell	= row.insertCell(i);

				newcell.innerHTML = table.rows[0].cells[i].innerHTML;
				//alert(newcell.childNodes);
				switch(newcell.childNodes[0].type) {
					case "text":
							newcell.childNodes[0].value = "";
							break;
					case "checkbox":
							newcell.childNodes[0].checked = false;
							break;
					case "select-one":
							newcell.childNodes[0].selectedIndex = 0;
							break;
				}
			}
                       
		}

		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
                        console.log(rowCount);
			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					if(rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
			}catch(e) {
				alert(e);
			}
		}

	</SCRIPT>
            
     
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
            <p class="mb-0" style="color: white; ">Example of Kitty</p>
            <footer class="blockquote-footer" style="color: cyan"> <cite title="Source Title">Split party cost with your friends</cite></footer>
        </blockquote>
       
        <form action="expenses.jsp"  method="post">

            <h1>Create a new Kitty </h1>
            <fieldset>
           
                <legend><span class="number">1</span>Your basic info</legend>
                <label for="event_name">Event name</label>
                <input type="text" id="name" name="event_name" required>
                
                <label for="currency">Home Currency</label>
                <select name="currency" id="currency" required>
                    <option value="EUR">EUR</option>
                    <option value="USD">USD</option>
                    <option value="GBP">GBP</option>
                    <option value="AED">AED</option>
                </select>
                
                <hr>
                <legend><span class="number">2</span>Participants</legend>
                    <label for="you">You</label>
                    <input type="text" id="you" name="you" placeholder="<%=username%>" readonly>
                    
                    <input type="text" id="email" name="email" placeholder="jack@gmail.com" required="">
                    
                <legend>Person2</legend> 
                <table id="dataTable" width="350px" >
                        <tr>
                                <td><INPUT type="checkbox" name="chk"/></td>
                                <td><input type="text" id="you" name="person" placeholder="Name"></td>
                        </tr>
                        
                </table>
                <%int val=0;%>
                
                <input type="button" value="Add new person" class="btn btn-outline-primary" style="margin-bottom:7px " onclick="addRow('dataTable')" onclick="<%=val++%>"/>
                <input type="button" value="Delete a person" class="btn btn-outline-danger"  style="margin-bottom:7px "onclick="deleteRow('dataTable')" onclick="<%=val++%>"/>
               
               <hr>
                <fieldset>
                    <button type="submit">Create Kitty</button>
                </fieldset>
            </form>
                </fieldset>
        
        
    </body>
    
    </html>

<%@include  file="footer.jsp" %>