using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace SHOPONLINE.Page.Admin.BAO
{
    public partial class categoryAdminView : System.Web.UI.Page
    {
        Category_BUS bao_bus = new Category_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowCategory();
            }
            //string alert = Request.QueryString["alert"];
            //if (alert != null)
            //{
            //    Response.Write("<script>alert('" + alert + "')</script>");
            //}
        }
        public void ShowCategory()
        {
            GridView1.DataSource = bao_bus.getAllCategory();
            GridView1.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Button btnUpdate = sender as Button;
            GridViewRow grvr = btnUpdate.NamingContainer as GridViewRow;
            int categoryid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            Response.Redirect("~/Page/Admin/Category/UpdateCategory.aspx?categoryid=" + categoryid);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnDelete = sender as Button;
            GridViewRow grvr = btnDelete.NamingContainer as GridViewRow;
            int categoryid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            bao_bus.deleteCategory(categoryid);
            string alert = "Xóa thành công";
            Response.Redirect("~/Page/Admin/Category/Category.aspx?alert" + alert);
        }

        protected void btnThemUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/Category/InsertCategory.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = bao_bus.getTop3Category();
            GridView1.DataBind();
        }

        protected void LinkButtonSearch_Click1(object sender, EventArgs e)
        {
            string categoryname = txttenloai.Text;
            DataTable dt = new DataTable();
            dt = bao_bus.getCategoryByName(categoryname);
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm thấy tên loại sản phẩm tương ứng!')</script>");
            }
            else
            {
                GridView1.DataSource = bao_bus.getCategoryByName(categoryname);
                GridView1.DataBind();
            }
        }

    }
}