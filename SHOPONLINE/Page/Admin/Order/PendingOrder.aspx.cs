using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using BUS;
namespace SHOPONLINE.Page.Admin.Order
{
    public partial class PendingOrder : System.Web.UI.Page
    {
        Order_BUS bus = new Order_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowPendingOrder();
        }

        public void ShowPendingOrder()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowPendingOrders();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}