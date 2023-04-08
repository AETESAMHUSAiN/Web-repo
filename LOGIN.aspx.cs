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
public partial class LOGIN : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["con"];
        con = new SqlConnection(st);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select cid,name,uname,password from registrationform where uname=@u and password=@p", con);

        cmd.Parameters.AddWithValue("@u", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p", TextBox2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        cmd.ExecuteNonQuery();
        sda.Fill(dt);
        con.Close();

        if (dt.Rows.Count > 0)
        {
            int id = Convert.ToInt32(dt.Rows[0][0]);
            String custname = dt.Rows[0][1].ToString();
            Response.Write("<script>alert('Congrats your login is successfuly')</script>");
            Response.Redirect("AllProduct.aspx?uname=" + custname + "&custid=" + id);
            
        }
        else
        {
            Response.Write("<script>alert('Your username and Password is incorrect')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}