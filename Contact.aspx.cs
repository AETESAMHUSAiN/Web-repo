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




public partial class Contact : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into FeedbackForm(name,massage,email) values(@n,@m,@e)", con);
        cmd.Parameters.AddWithValue("@n", TextBox1.Text);
        cmd.Parameters.AddWithValue("@m", TextBox2.Text);
        cmd.Parameters.AddWithValue("@e", TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();
       
        Label1.Text = "Your Feedback Is Sended";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
     }
}