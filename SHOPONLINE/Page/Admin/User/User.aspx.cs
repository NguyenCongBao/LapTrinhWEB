using BUS;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace SHOPONLINE.Page.Admin.user
{
    public partial class User : System.Web.UI.Page
    {
        User_BUS bus = new User_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowUser();
            }

            //string alert = Request.QueryString["alert"];
            //if (alert != null)
            //{
            //    Response.Write("<script>alert('" + alert + "')</script>");
            //}
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            Button btnXoa = sender as Button;
            GridViewRow grvr = btnXoa.NamingContainer as GridViewRow;
            int userid = int.Parse(GridView2.DataKeys[grvr.RowIndex].Value.ToString());
            bus.DeleteUser(userid);
            string alert = "xóa thành công";
            Response.Redirect("~/Page/Admin/user/User.aspx?alert=" + alert);
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            Button btnSua = sender as Button;
            GridViewRow grvr = btnSua.NamingContainer as GridViewRow;
            string userid = GridView2.DataKeys[grvr.RowIndex].Value.ToString();
            Response.Redirect("~/Page/Admin/User/UpdateUser.aspx?userid=" + userid);
        }

        public void ShowUser()
        {
            GridView2.DataSource = bus.ShowUser();
            GridView2.DataBind();
        }

        //them nguoi dung
        protected void btnThemUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/User/InsertUser.aspx");
        }

        // loc nguoi dung theo Role
        protected void btnFilterRole_Click(object sender, EventArgs e)
        {
            string role = DropDownList1.SelectedValue;
            GridView2.DataSource = bus.SearchUserCategorys(role);
            GridView2.DataBind();
        }

        //tim kiem ngươi dung theo username
        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = bus.searchUser(txtusername.Text);
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm người dùng nào, nhập lại!')</script>");
            }
            else
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }

        }
    }
}