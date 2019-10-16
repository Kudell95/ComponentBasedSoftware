using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Address
/// </summary>
public class Address
{
    public string Country, State, City, Suburb, Street, StreetType;
    private int streetNum, aptnum;

    public Address()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Address(string country, string state, string city, string suburb,string streettype, string street, int streetnum)
    {
        Country = country;
        State = state;
        City = city;
        Suburb = suburb;
        Street = street;
        streetNum = streetnum;
        StreetType = streettype;
    }
}