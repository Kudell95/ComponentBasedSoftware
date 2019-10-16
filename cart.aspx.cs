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

        try
        {
            ArrayList tempCart = new ArrayList();
            tempCart = (ArrayList)Session["cart"];
            //test.InnerHtml += "<tr><th>Product</th></tr>";



            foreach (Product p in tempCart)
            {
                
                TableRow row = new TableRow();
                Button button = new Button();
                TableCell cell1 = new TableCell();
                TableCell cell2 = new TableCell();
                TableCell cell3 = new TableCell();
                button.Text = "Remove Item";
                button.CommandArgument = p.GetId().ToString();
                button.CommandName = "button_click";
                button.Click += new EventHandler(buttonClickHandler);
                cell1.Text = p.GetName();
                cell2.Text = "$" + p.GetPrice().ToString();
                cell3.Controls.Add(button);
                row.Cells.Add(cell1);
                row.Cells.Add(cell2);
                //row.Cells.Add(cell3);
                myTable.Rows.Add(row);

                
                //test.InnerHtml += "<tr><td>" + p.GetName() +"</td><td>$" + p.GetPrice() + "</td></tr>";
                total += p.GetPrice();
            }

            message.InnerHtml = "<br/><br/>total: $" + total;
        }
        catch (NullReferenceException)
        {
            message.InnerHtml = "<br/>Cart is empty!";
        }







    }

    void buttonClickHandler(object sender, EventArgs e)
    {
        
    }

    public void removeProductById()
    {
        ArrayList tempCart = new ArrayList();
        tempCart = (ArrayList)Session["cart"];

        foreach (Product p in tempCart)
        {
                
                tempCart.Remove(p);
            
        }

        Session["cart"] = tempCart;

    }


    //clear cart
    protected void Button1_Click(object sender, EventArgs e)
    {
        ArrayList tempCart = new ArrayList();
        tempCart = (ArrayList)Session["cart"];

        tempCart.Clear();
        

        Session["cart"] = tempCart;
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }

    protected void Checkout(object sender, EventArgs e)
    {
        ArrayList tempCart = new ArrayList();
        tempCart = (ArrayList)Session["cart"];
        if(tempCart.Count != 0) 
        { 
        Response.Redirect("Checkout.aspx");
        }
    }
}