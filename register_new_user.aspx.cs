using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class register_new_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void save_Click(object sender, EventArgs e)
    {

        try
        {

            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project_se\App_Data\Registration.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into User_data values(@U_nm,@Pswd)", con);
                cmd.Parameters.AddWithValue("U_nm", r_u_nm.Text);
                cmd.Parameters.AddWithValue("Pswd", r_pswd.Text);
            
                //cmd.Parameters.AddWithValue("pattern", r_pattern.Text);

                //StartUpLoad();
            //    cmd.Parameters.AddWithValue("image", strname);
                cmd.ExecuteNonQuery();
                con.Close();
                Rlabel.Visible = true;
                Rlabel.Text = "Registered successfully";
                Button1.Visible = true;

            }


        
        catch (SqlException ex)
        {
            throw ex;
        }


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register__level2.aspx");
    }
}
