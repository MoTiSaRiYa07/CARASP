using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for version
/// </summary>
public class version
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
	public version()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void versionins(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
    }
}