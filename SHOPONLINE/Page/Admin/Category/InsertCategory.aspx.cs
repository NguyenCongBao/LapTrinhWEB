using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Category
{
    public partial class Detail_Category : System.Web.UI.Page
    {
        Category_BUS bus = new Category_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
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
                bus.InsertCategory(categoryname, categorystate);
                //string alert = "Thêm thành công";
                Response.Redirect("~/Page/Admin/Category/Category.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtCategoryName.Text = "";
            chbstatus.Checked = false;
        }
    }
}