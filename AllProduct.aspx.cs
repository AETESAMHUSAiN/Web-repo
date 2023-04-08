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

public partial class AllProduct : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string St;
        St = System.Configuration.ConfigurationManager.AppSettings["con"];

        con = new SqlConnection(St);
        display();

    }
    void display()
    {
        con.Open();
        cmd = new SqlCommand("Select * from ProductForm", con);
            //cmd.Parameters.AddWithValue("@n", "Shirts");
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();

    }
      protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Assign")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("SingleProductDetails.aspx?Id=" + id);
        
        
        }

    }



      protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
      {

      }
}