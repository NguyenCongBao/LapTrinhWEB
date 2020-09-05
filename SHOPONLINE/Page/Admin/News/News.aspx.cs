using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SHOPONLINE.Page.Admin.News
{
    public partial class News : System.Web.UI.Page
    {
        News_BUS bus = new News_BUS();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowNews();
            }

            //string alert = Request.QueryString["alert"];
            //if (alert != null)
            //{
            //    Response.Write("<script>alert('" + alert + "')</script>");
            //}
        }


        protected void btnXem_Click(object sender, EventArgs e)
        {
            Button btnSua = sender as Button;
            GridViewRow grvr = btnSua.NamingContainer as GridViewRow;
            string newsid = GridView1.DataKeys[grvr.RowIndex].Value.ToString();
            Response.Redirect("~/Page/Admin/News/UpdateNews.aspx?newsid=" + newsid);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            Button btnXoa = sender as Button;
            GridViewRow grvr = btnXoa.NamingContainer as GridViewRow;
            int newsid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            bus.DeleteNews(newsid);
            string alert = "xóa thành công";
            Response.Redirect("~/Page/Admin/News/News.aspx?alert=" + alert);
        }

        public void ShowNews()
        {
            GridView1.DataSource = bus.ShowNews();
            GridView1.DataBind();
        }

        protected void btnThemTinTuc_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/News/InsertNews.aspx");
        }

        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = bus.SearchNew(txtnews.Text);
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm thấy tin tức phù hợp!')</script>");
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }
    }
}