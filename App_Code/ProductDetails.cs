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

/// <summary>
/// Summary description for ProductDetails
/// </summary>
public class ProductDetails
{
    public Product currentProduct;
    public int pid_int;
    public string Pid;

    public ProductDetails()
    {

        //
        // TODO: Add constructor logic here
        //
    }

    public ProductDetails(string pid)
    {
        Int32.TryParse(pid, out pid_int);
        Pid = pid;
    }

    

    public void GetProductById(string pid, XmlDocument doc)
    {
        //int pid_int;
        int price;

        //Load the xml document
        //XmlDocument doc = new XmlDocument();
        //doc.Load(Server.MapPath("Products.xml"));
        XmlNodeList elemList = doc.GetElementsByTagName("product");

        //loop through every node
        for (int i = 0; i < elemList.Count; i++)
        {
            //if node contains the passed Product Id
            if (elemList[i].InnerXml.Contains(pid))
            {
                //apply xml data to the current product object.
                Int32.TryParse(elemList[i].ChildNodes[2].InnerText, out price);
                System.Diagnostics.Debug.WriteLine(elemList[i].ChildNodes[1].InnerText);
                currentProduct = new Product(pid_int, elemList[i].Attributes["category"].Value, elemList[i].ChildNodes[1].InnerText, price);

            }


        }
    }





}