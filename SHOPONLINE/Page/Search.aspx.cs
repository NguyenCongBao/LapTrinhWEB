using BUS;
using System;
using System.Data;
namespace SHOPONLINE.Page
{
    public partial class Search : System.Web.UI.Page
    {
        Search_BUS bus = new Search_BUS();

        protected void Page_Load(object sender, EventArgs e)
        {
            ShowSearchResult();
        }

        public void ShowSearchResult()
        {
            string content = Request.QueryString["searchContent"];
            DataTable dt = new DataTable();
            dt = bus.SearchProduct(content);
            DataListSearch.DataSource = dt;
            DataListSearch.DataBind();

            if (dt.Rows.Count > 0)
            {
                lbSearchResult.Text = (dt.Rows.Count).ToString();
            }
            else
            {
                lbSearchResult.Text = (dt.Rows.Count).ToString();
                Response.Write("<script>alert('Không tìm thấy sản phẩm phù hợp!')</script>");
            }

        }
    }
}