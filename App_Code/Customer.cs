using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    //private int Id;
    private string Fname, Lname, PhoneNumber;

    private Payment Custpayment;
    public Address Custaddress;

    public Customer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Customer( string fname, string lname, Payment payment, Address address)
    {
        //Id = id;
        Fname = fname;
        Lname = lname;
        Custpayment = payment;
        Custaddress = address;
    }

    public string GetFName() { return Fname; }
    public string GetLName() { return Lname; }
    //public int GetId() { return Id; }
}