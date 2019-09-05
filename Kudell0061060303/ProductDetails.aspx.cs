using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;


public partial class CIS2003_Kudell0061060303_ProductDetails : System.Web.UI.Page
{
    public Product currentProduct;
    int pid_int;
    private void GetProductById(string pid)
    {
        //int pid_int;
        int price;

        //Load the xml document
        XmlDocument doc = new XmlDocument();
        doc.Load("http://localhost:8080/Kudell0061060303/Products.xml");
        XmlNodeList elemList = doc.GetElementsByTagName("product");
        
        //loop through every node
        for (int i = 0; i < elemList.Count; i++)
        {
            //if node contains the passed Product Id
            if(elemList[i].InnerXml.Contains(pid))
            {
                //apply xml data to the current product object.
                Int32.TryParse(elemList[i].ChildNodes[2].InnerText, out price);
                //System.Diagnostics.Debug.WriteLine(elemList[i].ChildNodes[1].InnerText);
                currentProduct = new Product(pid_int, elemList[i].Attributes["category"].Value, elemList[i].ChildNodes[1].InnerText, price);

            }
            
            
        }
    }

    protected void btnAddToCart(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("add to cart");
        // do something
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        

        string pid = Request.QueryString["pid"];
        //parse to int 
        Int32.TryParse(pid, out pid_int);

        GetProductById(pid);
        System.Diagnostics.Debug.WriteLine(currentProduct.GetCategory());

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
        tempCart.Add(currentProduct);

        


        Session["cart"] = tempCart;
        Response.Redirect("Cart.aspx");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", currentProduct.GetName() + " added to cart", true);


    }
}