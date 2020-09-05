using System;
namespace SHOPONLINE.Page
{
    public partial class Header : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lbSLTC.Text = Application["SLTC"].ToString();
            
            if (Session["login"].ToString() != "")
            {
                lbUserName.Text = "| " + Session["login"];
                lbOL.Text = Session["online"].ToString();
            }
            else
            {
                lbUserName.Text = "| Đăng nhập";
                lbOL.Text = "0";
            }
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session["login"] = "";
            Session["cart"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            string searchContent = txtSearch.Text;
            Response.Redirect("Search.aspx?searchContent=" + searchContent);
        }
    }
}