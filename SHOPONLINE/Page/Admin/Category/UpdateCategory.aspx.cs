using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Category
{
    public partial class UpdateCategory : System.Web.UI.Page
    {
        Category_BUS bus = new Category_BUS();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowACategory();
            }
        }

        public void ShowACategory()
        {
            int categoryid = int.Parse(Request.QueryString["categoryid"]);
            DataTable dt = new DataTable();
            dt = bus.getACategory(categoryid);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    txtCategoryID.Text = dr["CategoryID"].ToString();
                    txtCategoryName.Text = dr["CategoryName"].ToString();
                    if (dr["CategoryState"].ToString() == "True")
                    {
                        chbstatus.Checked = true;
                    }
                }
            }
            else
            {
                Response.Redirect("<script>alert('Không có dữ liệu')</script>");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                int categoryid = int.Parse(txtCategoryID.Text);
                string categoryname = txtCategoryName.Text;
                int categorystate;
                if (chbstatus.Checked)
                {
                    categorystate = 1;
                }
                else
                {
                    categorystate = 0;
                }

                if (txtCategoryName.Text == "")
                {
                    Response.Write("<script>alert('Chưa nhập tên loại!')</script>");
                }
                else
                {
                    bus.UpdateCategory(categoryid, categoryname, categorystate);
                    //string alert = "Cập nhật thành công";
                    Response.Redirect("~/Page/Admin/Category/Category.aspx");
                }

            }
            catch (Exception)
            {

                Response.Write("<script>alert('Có lỗi rồi!')</script>");
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/Category/Category.aspx");
        }
    }
}