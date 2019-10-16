using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_Validate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        System.Diagnostics.Debug.WriteLine("test");
    }


    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        Page.Validate();

        if (Page.IsValid)
        {
            System.Diagnostics.Debug.WriteLine("valid");
            Response.Redirect("Home.aspx");
            lblmsg.Text = "Thank You";
        }
        else
        {

            System.Diagnostics.Debug.WriteLine("not valid");
            lblmsg.Text = "Fill up all the fields";
        }
    }

}