using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class purchaseComplete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int total = 0;

        try
        {
            ArrayList tempCart = new ArrayList();
            tempCart = (ArrayList)Session["cart"];
            Customer tempcustomer = new Customer();
            tempcustomer = (Customer)Session["customer"];
            //test.InnerHtml += "<tr><th>Product</th></tr>";



            foreach (Product p in tempCart)
            {
                //test.InnerHtml += "<tr><td>" + p.GetName() +"</td><td>$" + p.GetPrice() + "</td></tr>";
                total += p.GetPrice();
            }

            purchase.InnerHtml = "<br/><br/>total: $" + total + "<br/>Delivered to " + tempcustomer.Custaddress.City;
        }
        catch (NullReferenceException)
        {

        }
    }
}