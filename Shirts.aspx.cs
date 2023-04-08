using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Shirts : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    int p;
    protected void Page_Load(object sender, EventArgs e)
    {
        string St;
        St = System.Configuration.ConfigurationManager.AppSettings["con"];

        con = new SqlConnection(St);

        display();


    }
    public void display()
    {
        con.Open();
        p = System.Convert.ToInt32(Request.QueryString["Id"]);
        cmd = new SqlCommand("Select * from ProductForm where pid=@id", con);
        cmd.Parameters.AddWithValue("@id", p);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }
    protected void DataList1_ItemCommand(object sender, EventArgs e)
    {
        {

        }

    }
}