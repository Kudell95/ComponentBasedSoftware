using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    private int Id;
    private string Fname, Lname;
    public Customer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Customer(int id, string fname, string lname)
    {
        Id = id;
        Fname = fname;
        Lname = lname;
    }

    public string GetFName() { return Fname; }
    public string GetLName() { return Lname; }
    public int GetId() { return Id; }
}