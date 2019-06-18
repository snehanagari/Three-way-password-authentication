using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register_new_user.aspx");
    }
    protected void txt_log_Click(object sender, EventArgs e)
    {
        Response.Redirect("level1.aspx");
    }
}