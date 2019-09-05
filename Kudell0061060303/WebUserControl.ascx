﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="CIS2003_Kudell0061060303_WebUserControl" %>
<script>
    function myFunction() {
        document.getElementById("categories").classList.toggle("show");
    }


    window.onclick = function (clickedElement) {
        if (!clickedElement.target.matches('.dropbtn')) {
            var myDropdown = document.getElementById("categories");
            if (myDropdown.classList.contains('show')) {
                myDropdown.classList.remove('show');
            }
        }
    }

</script>
<link rel="stylesheet" href="NavBar.css" type="text/css"/>

<div id="NavMenu">
    
                <div class="navbar">
                  
                  <a href="Home.aspx" id="Active">Home</a>
                 
                      <div class="dropdown">
                      <button class="dropbtn" onclick="myFunction()">Products
                        <i class="fa fa-caret-down"></i>
                      </button>
                            <div class="dropdown-content" id="categories">
                            <a href="ProductsList.aspx?category=Guitars">Guitars</a>
                            <a href="ProductsList.aspx?category=Keys">Keys</a>
                            <a href="ProductsList.aspx?category=Other">Other Instruments</a>
                            <a href="ProductsList.aspx?category=Accessories">Accessories</a>
                          </div>
                      </div>
                        
                     <a href="cart.aspx" id="container">Shopping Cart</a>
                   
                   
                </div>
                
</div>