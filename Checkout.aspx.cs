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
        delivery.Disabled = true;
        delivery.Visible = false;

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
            Address address = new Address(Country.Text, state.Text, city.Text, Suburb.Text,DropDownList2.Text, streetName.Text, Convert.ToInt32(Suburb0.Text));
            Payment payment = new Payment(DropDownList3.Text, CardNumber.Text, CSV.Text, NameOnCard.Text, date.Text);
            Customer customer = new Customer(Fname.Text, Lname.Text, payment, address);
            Session["customer"] = customer;
            System.Diagnostics.Debug.WriteLine("valid");
            Response.Redirect("review.aspx");
            lblmsg.Text = "Thank You";
        }
        else
        {

            System.Diagnostics.Debug.WriteLine("not valid");
            lblmsg.Text = "Fill up all the fields";
        }
    }


    protected void Fname0_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Lname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(args.Value.Length == 10)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length == 16)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

  



    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        System.Diagnostics.Debug.WriteLine("setting");
        if (CheckBox1.Checked)
        {
            delivery.Disabled = false;
            delivery.Visible = true;
            System.Diagnostics.Debug.WriteLine("setting");

        }
        else
        {
            delivery.Disabled = true;
            delivery.Visible = false;

        }
    }

    protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length == 3)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}