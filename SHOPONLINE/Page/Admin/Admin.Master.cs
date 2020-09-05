using System;

namespace SHOPONLINE.Page.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbNameAdmin.Text = "Admin : "+Session["admin"].ToString();
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session["admin"] = "";
            Response.Redirect("~/Page/Admin/Login.aspx");
        }
    }
}