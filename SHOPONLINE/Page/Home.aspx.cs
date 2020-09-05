using BUS;
using System;
using System.Data;
namespace SHOPONLINE.Page
{
    public partial class Home1 : System.Web.UI.Page
    {
        public Home_BUS bus = new Home_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            Top5Phone();
            Top5Laptop();
            Top5Prouduct();
            Top5News();
        }

        public void Top5Phone()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowTop5Phone();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        public void Top5Laptop()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowTop5Laptop();
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }

        public void Top5Prouduct()
        {
            DataTable dt = new DataTable();
            dt = bus.ShopTop5Product();
            DataList3.DataSource = dt;
            DataList3.DataBind();
        }

        public void Top5News()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowTopNews();
            DataList4.DataSource = dt;
            DataList4.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}