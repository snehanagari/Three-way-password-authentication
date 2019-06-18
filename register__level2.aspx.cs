using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class register__level2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload11.HasFile)
            {
                string strname = FileUpload11.FileName.ToString();

                FileUpload11.PostedFile.SaveAs(Server.MapPath("~/Images/") + strname);
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project_se\App_Data\Registration.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into level2 values(@id,@Image)", con);
                cmd.Parameters.AddWithValue("id", TextBox1.Text);
                //cmd.Parameters.AddWithValue("pswd", r_pswd.Text);

                //cmd.Parameters.AddWithValue("pattern", r_pattern.Text);

                StartUpLoad();
                cmd.Parameters.AddWithValue("Image", strname);
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
                Label1.Text = "Image Uploaded successfully";
                Button2.Visible = true;

            }


        }
        catch (SqlException ex)
        {
            throw ex;
        }


    }
    private void StartUpLoad()
    {

        //get the file name of the posted image

        string imgName = FileUpload11.FileName;

        //sets the image path

        string imgPath = "Images/" + imgName;

        //get the size in bytes that
        int imgSize = FileUpload11.PostedFile.ContentLength;

        //validates the posted file before saving

        if (FileUpload11.PostedFile != null && FileUpload11.PostedFile.FileName != "")
        {

            // 10240 KB means 10MB, You can change the value based on your requirement

            //then save it to the Folder

            FileUpload11.SaveAs(Server.MapPath(imgPath));

            r_image_pswd.ImageUrl = "~/" + imgPath;

            // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
   
        Response.Redirect("register_level3.aspx");
    }
}