using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class level1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void save_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project_se\App_Data\Registration.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from User_data where u_nm=@U_nm and pswd=@Pswd", con);
        cmd.Parameters.AddWithValue("@U_nm", u_nm.Text);
        cmd.Parameters.AddWithValue("@Pswd", pswd.Text);
        reader = cmd.ExecuteReader();
        // SqlDataAdapter adt = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //adt.Fill(dt);
        if (reader != null && reader.HasRows)
        {
            Label1.Text = "Successfully login";
            Response.Redirect("level2.aspx");
        }
        else
        {
            Label1.Text = "enter correct username and password";
        }

        con.Close();
    }
}