using System;
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

    void getProductById(int pid)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load("http://localhost:8080/Kudell0061060303/Products.xml");
        XmlNodeList elemList = doc.GetElementsByTagName("product");
       
        for (int i = 0; i < elemList.Count; i++)
        {
            System.Diagnostics.Debug.WriteLine(elemList[i].InnerXml) ;
            
            Console.WriteLine(elemList[i].InnerXml);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", elemList[i].InnerXml, true);
            
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        int pid;        
        Int32.TryParse(Request.QueryString["pid"], out pid);
        getProductById(pid);
    }
}