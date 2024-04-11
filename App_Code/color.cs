using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for color
/// </summary>
public class color
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
	public color()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void colorins(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
    }

}