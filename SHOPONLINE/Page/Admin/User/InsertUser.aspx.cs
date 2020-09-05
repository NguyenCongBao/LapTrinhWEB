using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.User
{
    public partial class InsertUser1 : System.Web.UI.Page
    {
        User_BUS bus = new User_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string pass = txtPass.Text;
            string username = txtTen.Text;
            string email = txtEmail.Text;
            string sdt = txtSdt.Text;
            string address = txtDiachi.Text;
            string role = txtRole.Text;
            int userstate;

            if (chbState.Checked)
            {
                userstate = 1;
            }
            else
            {
                userstate = 0;
            }

            if (txtTen.Text == "" || txtPass.Text == "" || txtEmail.Text == "" || txtSdt.Text == "" || txtDiachi.Text == "" || txtRole.Text == "")
            {
                Response.Write("<script>alert('Mời nhập đủ thông người dùng!')</script>");
            }
            else
            {
                bus.InsertUser(username, pass, email, sdt, address, role, userstate);
                //string alert = "thêm thành công";
                Response.Redirect("~/Page/Admin/user/User.aspx");
            }
        }
    }
}