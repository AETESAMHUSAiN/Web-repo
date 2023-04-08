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


public partial class Products : System.Web.UI.Page
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/images/") + fileName);
            String f1 = "~/images/" + fileName;
            con.Open();
            /* cmd = new SqlCommand("insert into ProductForm(pname,EnterRate,UploadImage,Quantity,EnterProductInfo) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + ("~/images/") + fileName + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);*/
            cmd = new SqlCommand("insert into ProductForm(pname,EnterRate,UploadImage,Quantity,EnterProductInfo) values(@pn,@er,@up,@q,@epi)", con);
            cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
            cmd.Parameters.AddWithValue("@up", f1.ToString());
            cmd.Parameters.AddWithValue("@er", TextBox2.Text);
            cmd.Parameters.AddWithValue("@q", TextBox5.Text);
            cmd.Parameters.AddWithValue("@epi", TextBox6.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "YOUR PRODUCT IS ADDED";
            display();

        }

    }
    protected void Button4_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/images/") + Filename);
            String f1 = ("~/images/" + Filename);

            cmd = new SqlCommand("UPDATE ProductForm SET pname=@N,EnterRate=@R,UploadImage=@I,Quantity=@Q,EnterProductInfo=@E WHERE pid=@id", con);
            con.Open();
            cmd.Parameters.AddWithValue("@N", TextBox1.Text);
            cmd.Parameters.AddWithValue("@R", System.Convert.ToInt64(TextBox2.Text));
            cmd.Parameters.AddWithValue("@I", f1.ToString());
            cmd.Parameters.AddWithValue("@Q", TextBox5.Text);
            cmd.Parameters.AddWithValue("@E", TextBox6.Text);
            cmd.Parameters.AddWithValue("@id", System.Convert.ToInt32(Label1.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Your Product Is Updated";
            display();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("delete From ProductForm where pid=@id", con);
        cmd.Parameters.AddWithValue("@id", System.Convert.ToInt32(Label1.Text));
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "YOUR Product Record Is Deleted Successfully";
        display();

    }
    public void display()
    {
        con.Open();
        cmd = new SqlCommand("select * from ProductForm", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = "Id";
        Label1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
        //FileUpload = GridView1.SelectedRow.Cells[4];
        TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[6].Text;

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
        
          

     


   