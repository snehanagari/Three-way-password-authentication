using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register_level3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project_se\App_Data\Registration.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into level3 values(@id,@pattern)", con);
                cmd.Parameters.AddWithValue("id", TextBox1.Text);
                cmd.Parameters.AddWithValue("pattern", r_pattern.Text);
            
                //cmd.Parameters.AddWithValue("pattern", r_pattern.Text);

                
                //cmd.Parameters.AddWithValue("image", strname);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
               Label1.Text = "Pattern selected successfully";
               Response.Redirect("Default.aspx");

            }


        
        catch (SqlException ex)
        {
            throw ex;
        }


    }
    
        string b;
   
    protected void r_red_Click(object sender, EventArgs e)
    {
        b = r_red.Text;
        for (int i = 1; i <= b.Length; i++)
        {
            r_pattern.Text = r_pattern.Text + "*";
        }
    }
    protected void r_green_Click(object sender, EventArgs e)
    {
        b = r_green.Text;
        for (int i = 1; i <= b.Length; i++)
        {
            r_pattern.Text = r_pattern.Text + "*";
        }
    }
    protected void r_blue_Click(object sender, EventArgs e)
    {
        b = r_blue.Text;
        for (int i = 1; i <= b.Length; i++)
        {
            r_pattern.Text = r_pattern.Text + "*";
        }
    }
}
