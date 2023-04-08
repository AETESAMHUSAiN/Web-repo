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



public partial class Registration_Form : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["con"];
        con = new SqlConnection(st);
    }
    protected void Button1_Click(object Sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into registrationform (name,mobile,address,email,uname,password) values(@n,@m,@a,@e,@u,@p)", con);
        cmd.Parameters.AddWithValue("@n", TextBox1.Text);
        cmd.Parameters.AddWithValue("@m", System.Convert.ToInt64(TextBox2.Text));
        cmd.Parameters.AddWithValue("@a", TextBox3.Text);
        cmd.Parameters.AddWithValue("@e", TextBox4.Text);
        cmd.Parameters.AddWithValue("@u", TextBox5.Text);
        cmd.Parameters.AddWithValue("@p", TextBox6.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Record Added Successfullyy";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}