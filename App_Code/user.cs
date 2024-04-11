using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for user
/// </summary>
public class user
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    public user()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void userins(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
    }
    public void usersele(string str)
    {
        x.cnopen();
        cmd = new SqlCommand(str, x.cn);
        dr = cmd.ExecuteReader();
        x.cnclose();
    }
}