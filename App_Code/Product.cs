using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Product
{
    private string Category, Name;
    private int Id, Price;
    public Product()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Product(int id, string category, string name, int price)
    {
        Category = category;
        Name = name;
        Id = id;
        Price = price;
    }
        
    public string GetCategory(){ return Category; }
    public string GetName() { return Name; }
    public int GetId() { return Id; }
    public int GetPrice() { return Price; }
}