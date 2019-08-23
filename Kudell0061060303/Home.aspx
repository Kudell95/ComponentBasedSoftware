<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="CIS2003_Kudell0061060303_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="home.css" type="text/css"/>
    

        
</head>
<body style="height: 373px">
    <script>
        /* When the user clicks on the button, 
        toggle between hiding and showing the dropdown content */
        function myFunction() {
            document.getElementById("myDropdown").classList.toggle("show");
        }

        // Close the dropdown if the user clicks outside of it
        window.onclick = function (e) {
            if (!e.target.matches('.dropbtn')) {
                var myDropdown = document.getElementById("myDropdown");
                if (myDropdown.classList.contains('show')) {
                    myDropdown.classList.remove('show');
                }
            }
        }

</script>
    <form id="form1" runat="server">
        <div>
            <div id="NavMenu">
                <div class="navbar">
                  <a href="#home">Home</a>
                  <a href="#news">News</a>
                  <div class="dropdown">
                  <button class="dropbtn" onclick="myFunction()">Products
                    <i class="fa fa-caret-down"></i>
                  </button>
                  <div class="dropdown-content" id="myDropdown">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                  </div>
                  </div> 
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
