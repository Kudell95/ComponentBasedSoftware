using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CIS2003_Kudell0061060303_Home : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //initialize cart
        ArrayList cart = new ArrayList();

        if (Session["cart"] == null)
        {
            Session["cart"] = cart;
        }

    }
}