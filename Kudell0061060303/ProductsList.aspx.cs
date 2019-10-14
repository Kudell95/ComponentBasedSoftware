using System;
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
        
        //if (cat == null)
        //{
        //    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')" + cat, true);
        //    //cat = "*";
        //}
        XsltArgumentList xslArg = new XsltArgumentList();
        xslArg.AddParam("category", "", "" + cat);
        //this.Xml1.TransformArgumentList = xslArg;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    // protected void Button1_Click(object sender, EventArgs e)
    // {
    // This is being read from the same folder as this page is in.(only for demo purpose)  
    // In real applications this xml might be coming from some external source or database.  
    //   string xmlString = File.ReadAllText(Server.MapPath("XMLFile1.xml"));

    // Define the contents of the XML control  
    //  Xml1.DocumentContent = xmlString;

    // Specify the XSL file to be used for transformation.  
    // Xml1.TransformSource = Server.MapPath("XSLTFile1.xslt");
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
    }

    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void ListView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }

    protected void ListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
    {
        // save button Clicked
        if (e.CommandName == "AddToCart")
        {
            ListViewItem itemClicked = e.Item;
           
            // Find Controls/Retrieve values from the item  here

            //itemClicked
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //ListViewItem itemClicked = e.Item;
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        //int id, string category, string name, int price
        //Product currentProduct = new Product(Eval("productid"), Eval("category"), Eval("name"), Eval("price"));
    }

    public void AddToCartByID(int pid)
    {

    }
}