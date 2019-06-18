using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class level2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Save2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.FileName.ToString();

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + strname);
                SqlDataReader reader = null;
                SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\project_se\App_Data\Registration.mdf;Integrated Security=True;User Instance=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from level2 where ID=@id and Image=@Image", con);
                cmd.Parameters.AddWithValue("@id", TextBox1.Text);
                StartUpLoad();
                cmd.Parameters.AddWithValue("@Image", strname);

                reader = cmd.ExecuteReader();
                // SqlDataAdapter adt = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //adt.Fill(dt);
                if (reader != null && reader.HasRows)
                {
                    Label2.Text = "Image successfully login";
                    Button2.Visible = true;
                }
                else
                {
                    Label2.Text = "enter correct ID and Image";
                }

                con.Close();
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

        string imgName = FileUpload1.FileName;

        //sets the image path

        string imgPath = "Images/" + imgName;

        //get the size in bytes that
        int imgSize = FileUpload1.PostedFile.ContentLength;

        //validates the posted file before saving

        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {

            // 10240 KB means 10MB, You can change the value based on your requirement

            //then save it to the Folder

            FileUpload1.SaveAs(Server.MapPath(imgPath));

            Image1.ImageUrl = "~/" + imgPath;

            // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);

        }
            }
            protected void Button2_Click(object sender, EventArgs e)
            {
                Response.Redirect("level3.aspx");
            }
}