using BUS;
using System;
using System.Data;
using System.Web.UI.WebControls;
namespace SHOPONLINE.Page.Admin.Order
{
    public partial class Order : System.Web.UI.Page
    {
        Order_BUS bus = new Order_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowOrder();
            }
        }

        public void ShowOrder()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowOrders();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnDetail_Click(object sender, EventArgs e)
        {
            Button btnDetail = sender as Button;
            GridViewRow grvr = btnDetail.NamingContainer as GridViewRow;
            string orderid = GridView1.DataKeys[grvr.RowIndex].Value.ToString();
            Response.Redirect("~/Page/Admin/Order/OrderDetail.aspx?orderid=" + orderid);
        }

        protected void btnDeleteOrder_Click(object sender, EventArgs e)
        {
            Button btnDetail = sender as Button;
            GridViewRow grvr = btnDetail.NamingContainer as GridViewRow;
            int orderid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            bus.DeleteOrder(orderid);
            bus.DeleteOrderDetail(orderid);
            ShowOrder();
        }

        protected void btnCheckOrder_Click(object sender, EventArgs e)
        {
            txtSearchDateOrder.Text = "";
            int number = int.Parse(DropDownList1.SelectedValue);
            DataTable dt = new DataTable();
            if (number == 1)
            {
                dt = bus.ShowOrders();

            }
            else if (number == 2)
            {
                dt = bus.ShowPendingOrders();
            }
            else
            {
                dt = bus.ShowPendedOrders();
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            int number = int.Parse(DropDownList1.SelectedValue);
            string dateorder = txtSearchDateOrder.Text.Trim();
            DataTable dt = new DataTable();

            if (number == 1)
            {
                dt = bus.SerchDateOrder(number, dateorder);

            }
            else if (number == 2)
            {
                dt = bus.SerchDateOrder(number, dateorder);
            }
            else
            {
                dt = bus.SerchDateOrder(number, dateorder);
            }
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm thấy hóa hơn nào!')</script>");
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}