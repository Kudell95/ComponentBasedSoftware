using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Payment
/// </summary>
public class Payment
{
    private string cardtype, csv, name, date;
    private string cardnum;

    public Payment()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Payment(string CardType, string CardNum, string Csv, string Name, string Date)
    {
        cardtype = CardType;
        cardnum = CardNum;
        csv = Csv;
        name = Name;
        date = Date;
    }


}