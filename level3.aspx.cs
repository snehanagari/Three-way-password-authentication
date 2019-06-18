using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class level3 : System.Web.UI.Page
{
    string a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void red_Click(object sender, EventArgs e)
    {
        a = red.Text;
        for (int i = 1; i <= a.Length; i++)
        {
            level3_text.Text = level3_text.Text + "*";
        }
    }
    protected void green_Click(object sender, EventArgs e)
    {
        a = green.Text;
        for (int i = 1; i <= a.Length; i++)
        {
            level3_text.Text = level3_text.Text + "*";
        }
    }
    protected void blue_Click(object sender, EventArgs e)
    {
        a = blue.Text;
        for (int i = 1; i <= a.Length; i++)
        {
            level3_text.Text = level3_text.Text + "*";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader reader = null;
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project_se\App_Data\Registration.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from level3 where ID=@id and Pattern=@pattern", con);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                //StartUpLoad();
                cmd.Parameters.AddWithValue("@pattern", level3_text.Text);

                reader = cmd.ExecuteReader();
                // SqlDataAdapter adt = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //adt.Fill(dt);
                if (reader != null && reader.HasRows)
                {
                    Label1.Text = " successfully logged in";
                    Response.Redirect("wlcm.aspx");
                    
                }
                else
                {
                    Label1.Text = "enter correct ID and Pattern";
                }

                con.Close();
            }
        
        catch (SqlException ex)
        {
            throw ex;
        }
    }
    }
    
   
  
