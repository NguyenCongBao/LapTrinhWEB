using BUS;
using System;
using System.Data;
using System.Web.UI.WebControls;
namespace SHOPONLINE.Page.Admin.product
{
    public partial class product : System.Web.UI.Page
    {
        Product_BUS bus = new Product_BUS();
        Category_BUS category_bus = new Category_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowProduct();
                LoadDropDownList();
            }
            //string alert = Request.QueryString["alert"];
            //if (alert != null)
            //{
            //    Response.Write("<script>alert('" + alert + "')</script>");
            //}
        }

        public void ShowProduct()
        {
            GridView1.DataSource = bus.ShowProduct();
            GridView1.DataBind();
        }

        public void LoadDropDownList()
        {
            DataTable dt = new DataTable();
            dt = bus.getAllCategory();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "CategoryName";
            DropDownList1.DataValueField = "CategoryID";
            DropDownList1.DataBind();
        }

        protected void btnThemSP_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/Product/InsertProduct.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnXoa = sender as Button;
            GridViewRow grvr = btnXoa.NamingContainer as GridViewRow;
            int proid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            bus.DeleteProduct(proid);
            string alert = "Xóa thành công";
            Response.Redirect("~/Page/Admin/Product/Product.aspx?alert=" + alert);
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            Button btnUpdate = sender as Button;
            GridViewRow grvr = btnUpdate.NamingContainer as GridViewRow;
            string id = GridView1.DataKeys[grvr.RowIndex].Value.ToString();
            Response.Redirect("~/Page/Admin/Product/UpdateProduct.aspx?id=" + id);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = bus.ShopTop10Product();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            string productname = txttensp.Text;
            DataTable dt = new DataTable();
            dt = bus.SearchProduct(productname);
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm thấy sản phẩm phù hợp!')</script>");
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowProduct();
        }

        protected void btnFilterProduct_Click(object sender, EventArgs e)
        {
            int categoryid = int.Parse(DropDownList1.SelectedValue);
            DataTable dt = new DataTable();
            dt = bus.SearchProductCateProduct(categoryid);
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm thấy sản phẩm phù hợp!')</script>");
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}