using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for model
/// </summary>
public class model
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
	public model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void modelins(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
    }
}