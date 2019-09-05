using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kudell0061060303_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int total = 0;
        test.InnerHtml = "<br/>Cart Items:<br/>";
        if (Session["cart"] != null)
        {
            ArrayList tempCart = new ArrayList();
            tempCart = (ArrayList)Session["cart"];

        
            foreach (Product p in tempCart)
            {
                test.InnerHtml += "<br/>Product: " + p.GetName();
                total += p.GetPrice();
            }
            test.InnerHtml += "<br/><br/>total: $" + total;
        }
        else{
            test.InnerHtml += "<br/>Cart is empty!";
        }
    }

}