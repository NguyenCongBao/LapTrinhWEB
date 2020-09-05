using BUS;
using System;
using System.Data;
namespace SHOPONLINE.Page
{
    public partial class DetailNews : System.Web.UI.Page
    {
        News_BUS bus = new News_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowDetailNews();
        }

        public void ShowDetailNews()
        {
            int newsid = int.Parse(Request.QueryString["newsid"]);
            DataTable dt = new DataTable();
            dt = bus.DetailNews(newsid);

            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
    }
}