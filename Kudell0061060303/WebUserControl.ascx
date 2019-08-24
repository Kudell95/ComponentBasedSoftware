<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="CIS2003_Kudell0061060303_WebUserControl" %>
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
<link rel="stylesheet" href="NavBar.css" type="text/css"/>

<div id="NavMenu">
                <div class="navbar">
                  <a href="#home" id="Active">Home</a>
                  
                  <div class="dropdown">
                  <button class="dropbtn" onclick="myFunction()">Products
                    <i class="fa fa-caret-down"></i>
                  </button>
                  <div class="dropdown-content" id="myDropdown">
                    <a href="#">Guitars</a>
                    <a href="#">Keys</a>
                    <a href="#">Other Instruments</a>
                    <a href="#">Accesories</a>
                  </div>
                  </div> 
                </div>
                
</div>