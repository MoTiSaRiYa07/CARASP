using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>s
/// Summary description for company
/// </summary>
public class company
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    public SqlDataAdapter da=new SqlDataAdapter();
   public DataSet ds;
	public company()
	{
		//
		// TODO: Add constructor logic here
		//http://localhost:58959/automobile/App_Code/company.cs
	}
    public void compins(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
    }

    public void compmodify(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();     
    }

    public void compsele(string str)
    {
        x.cnopen();
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        x.cnclose();
    }

    public DataTable GetDataTable(string query)
    {
        throw new NotImplementedException();
    }
}