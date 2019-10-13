using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;
using System.IO;


public partial class CIS2003_Kudell0061060303_ProductDetails : System.Web.UI.Page
{

      ProductDetails details; // instantiate the details object, to load the information from the xml file.



   
    protected void Page_Load(object sender, EventArgs e)
    {        
        string pid = Request.QueryString["pid"];
        //parse to int 
        //Int32.TryParse(pid, out pid_int);
        details = new ProductDetails(pid);
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Products.xml"));
        details.GetProductById(pid, doc);

        //GetProductById(pid);
        //System.Diagnostics.Debug.WriteLine(currentProduct.GetCategory());

        XsltArgumentList xslArg = new XsltArgumentList();
        xslArg.AddParam("product", "", "" + pid);
        this.Xml1.TransformArgumentList = xslArg;
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Button1.Attributes.Add("onclick", "return false;");
        System.Diagnostics.Debug.WriteLine("add to cart");
        //unload session variable for editing
        ArrayList tempCart = new ArrayList();
        tempCart = (ArrayList)Session["cart"];

        //add current  product to cart.
        tempCart.Add(details.currentProduct);

        


        Session["cart"] = tempCart;
        Response.Redirect("Cart.aspx");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", details.currentProduct.GetName() + " added to cart", true);


    }
}