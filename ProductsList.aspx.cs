using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;

public partial class Assignment_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cat = Request.QueryString["category"];

        if (cat == null)
        {
            Response.Redirect("ProductsList.aspx?category=%");          
        }
        //NOTE: this is probably not the best way to do this, but it fixes the issue.
        
    }

  

  
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
    //}

   

    protected void ListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        // save button Clicked
        if (e.CommandName == "AddToCart")
        {
            ListViewItem itemClicked = e.Item;

            string arg = e.CommandArgument.ToString();
            System.Diagnostics.Debug.WriteLine(arg);

            string[] details = arg.Split(',');


            ArrayList tempCart = new ArrayList();
            tempCart = (ArrayList)Session["cart"];


            //add current  product to cart.
            Product tempProduct = new Product(Int32.Parse(details[0]), details[1], details[2], Int32.Parse(details[3]));

            tempCart.Add(tempProduct);


            System.Diagnostics.Debug.WriteLine(tempProduct.GetName());

            Session["cart"] = tempCart;

        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //ListViewItem itemClicked = e.Item;
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        //int id, string category, string name, int price
        //Product currentProduct = new Product(Eval("productid"), Eval("category"), Eval("name"), Eval("price"));
    }

    //public void AddToCartByID(int pid)
    //{

    //}
}