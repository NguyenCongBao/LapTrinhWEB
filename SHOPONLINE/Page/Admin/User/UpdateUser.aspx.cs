using BUS;
using System;
using System.Data;
namespace SHOPONLINE.Page.Admin.User
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        User_BUS bus = new User_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }

        }

        public void ShowData()
        {
            int userid = int.Parse(Request.QueryString["userid"]);
            DataTable dt = new DataTable();
            dt = bus.ShowAUser(userid);
            foreach (DataRow dr in dt.Rows)
            {
                txtuserid.Text = dr["UserID"].ToString().Trim();
                txtusername.Text = dr["UserName"].ToString().Trim();
                txtpassword.Text = dr["Password"].ToString().Trim();
                txtemail.Text = dr["Email"].ToString().Trim();
                txtphone.Text = dr["Phone"].ToString().Trim();
                txtAddress.Text = dr["Address"].ToString().Trim();
                txtrole.Text = dr["Role"].ToString().Trim();
                if (dr["UserState"].ToString() == "True")
                {
                    chbUserstate.Checked = true;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int userid = int.Parse(txtuserid.Text.Trim());
            string username = txtusername.Text;
            string password = txtpassword.Text;
            string email = txtemail.Text;
            string phone = txtphone.Text;
            string address = txtAddress.Text;
            string role = txtrole.Text;
            int userstate;
            if (chbUserstate.Checked == true)
            {
                userstate = 1;
            }
            else
            {
                userstate = 0;
            }

            if (username == "" || password == "" || email == "" || phone == "" || address == "" || role == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đủ thông tin, nhập lại!')</script>");
            }
            else
            {
                bus.UpdateUser(userid, username, password, email, phone, address, role, userstate);
                //string alert = "Sửa thành công";
                Response.Redirect("~/Page/Admin/User/User.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            string alert = "Đã hủy";
            Response.Redirect("~/Page/Admin/User/User.aspx?alert=" + alert);
        }
    }
}