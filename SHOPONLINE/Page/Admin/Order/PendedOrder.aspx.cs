using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Order
{
    public partial class PendedOrder : System.Web.UI.Page
    {
        Order_BUS bus = new Order_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowPendedOrder();
        }
        public void ShowPendedOrder()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowPendingOrders();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}