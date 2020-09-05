using BUS;
using System;
using System.Data;
namespace SHOPONLINE.Page
{
    public partial class News : System.Web.UI.Page
    {
        News_BUS bus = new News_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayNews();
        }

        public void DisplayNews()
        {
            DataTable dt1 = new DataTable();
            dt1 = bus.ShowNews();
            DataList1.DataSource = dt1;
            DataList1.DataBind();

            DataTable dt2 = new DataTable();
            dt2 = bus.ShowTopNews();
            DataList2.DataSource = dt2;
            DataList2.DataBind();
        }
    }
}