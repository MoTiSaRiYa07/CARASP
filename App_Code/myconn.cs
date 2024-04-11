using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for admin
/// </summary>
public class myconn
{
    public SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
   
	public myconn()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void cnopen()
    {
        cn.Open();
    }
    public void cnclose()
    {
        cn.Close();
    }

}
