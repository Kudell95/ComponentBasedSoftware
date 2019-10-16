using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class review : System.Web.UI.Page
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

                TableRow row = new TableRow();
                Button button = new Button();
                TableCell cell1 = new TableCell();
                TableCell cell2 = new TableCell();
               
                cell1.Text = p.GetName();
                cell2.Text = "$" + p.GetPrice().ToString();
                
                row.Cells.Add(cell1);
                row.Cells.Add(cell2);
                
                myTable.Rows.Add(row);


                //test.InnerHtml += "<tr><td>" + p.GetName() +"</td><td>$" + p.GetPrice() + "</td></tr>";
                total += p.GetPrice();
            }

            message.InnerHtml = "<br/><br/>total: $" + total + "<br/>Delivered to " + tempcustomer.Custaddress.City +", " + tempcustomer.Custaddress.State;
        }
        catch (NullReferenceException)
        {
            
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //add customer to database
        Response.Redirect("purchaseComplete.aspx");
    }
}