using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Customer
{
    

    private string Name, Address;
    private int Age, Id;
    
    public Customer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Customer(string name, int age, string address)
    {
        Name = name;
        Age = age;
        Address = address;

    }

    //Getters-------------------------------|
    public string GetName() { return Name; }
    public string GetAddress() { return Address; }
    public int GetAge() { return Age; }
    public int GetID() { return Id; }
    

    //Setters ------------------------------|
    public void SetName(string name) { Name = name; }
    public void SetAddress(string address) { Address = address; }
    public void SetAge(int age) { Age = age; }
    public void GenerateID()
    {
        //create unique id;
    }
         








}