using BUS;
using System;
using System.Data;
namespace SHOPONLINE.Page
{
    public partial class Register : System.Web.UI.Page
    {
        Register_BUS bus = new Register_BUS();
        DataTable dtUsers = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            dtUsers = bus.Users();
            //nguyen duc nhat
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string confirm = txtConfirm.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;

            int dem = 0;
            if (txtUsername.Text == "" || txtPassword.Text == "" || txtConfirm.Text == "")
            {
                Response.Write("<script>alert('Bạn chưa nhập đủ thông tin, nhập lại!')</script>");
            }
            else
            {


                foreach (DataRow dr in dtUsers.Rows)
                {
                    if (dr["UserName"].ToString().Trim() == username.Trim())
                    {
                        dem++;
                        break;
                    }
                }
                if (dem == 0)
                {
                    if (password != confirm)
                    {
                        Response.Write("<script>alert('Mật khẩu không khớp, nhập lại!')</script>");
                        txtPassword.Focus();
                    }
                    else
                    {
                        bus.RegisterUser(username, password, email, phone, address);
                        Response.Write("<script>alert('Đăng ký thành công!')</script>");
                        Response.Redirect(@"~\Page\Login.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Tên người dùng đã tồn tại, nhập lại!')</script>");
                    txtUsername.Focus();
                }
            }
        }
    }
}