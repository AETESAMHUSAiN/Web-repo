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

public partial class Add_To_Cart : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string St;
        St = System.Configuration.ConfigurationManager.AppSettings["con"];
        con = new SqlConnection(St);
       // display();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    { 
       con.Open();
       cmd = new SqlCommand("insert into addtocart(productid,productname,quantity,price) values(@pid,@pn,@pq,@pp)", con);
       cmd.Parameters.AddWithValue("@pid", TextBox1.Text);
       cmd.Parameters.AddWithValue("@pn", TextBox2);
       cmd.Parameters.AddWithValue("@pq", DropDownList1 .Text);
       cmd.Parameters.AddWithValue("@pp", TextBox6.Text);
       cmd.ExecuteNonQuery();
       con.Close();
       Label1.Text = "ADD TO CART SUCESSFULLY";
       //display();

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}