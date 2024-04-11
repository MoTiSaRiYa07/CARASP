using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for dealer
/// </summary>
public class dealer
{
    myconn x = new myconn();
   
    SqlCommand cmd = new SqlCommand();

	public dealer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void dealerins(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
    }
}