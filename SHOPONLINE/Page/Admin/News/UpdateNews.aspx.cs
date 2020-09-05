using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SHOPONLINE.Page.Admin.News
{
    public partial class Update : System.Web.UI.Page
    {
        News_BUS bus = new News_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowANews();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtID.Text.Trim());
            string newsname = txtName.Text;
            string description = HttpUtility.HtmlDecode(txtDes.Text);
            string content = HttpUtility.HtmlDecode(txtContent.Text);
            string date = lblDate.Text;
            string author = txtAuthor.Text;
            string linkImage;
            if (FileUploadAnh.FileName != "")
            {
                string path = Server.MapPath("~/Public/images/news/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(path);
                linkImage = FileUploadAnh.FileName;
            }
            else
            {
                linkImage = lbImage.Text;
            }

            int state;
            if (chbState.Checked)
            {
                state = 1;
            }
            else
            {
                state = 0;
            }
            if (txtName.Text == "" || txtAuthor.Text == "" || txtDes.Text == "" || txtContent.Text == "")
            {
                Response.Write("<script>alert('Mời nhập đủ thông tin NEWS!')</script>");
            }
            else
            {
                bus.UpdateNews(id, newsname, author, linkImage, description, content, date, state);
                //string alert = "Sửa thành công";
                Response.Redirect("~/Page/Admin/News/News.aspx");
            }
        }

        public void ShowANews()
        {
            int id = int.Parse(Request.QueryString["newsid"]);
            DataTable dt = new DataTable();
            dt = bus.ShowANews(id);

            foreach (DataRow dr in dt.Rows)
            {
                txtID.Text = dr["NewsID"].ToString();
                txtName.Text = dr["NewsName"].ToString();
                txtAuthor.Text = dr["NewsAuthor"].ToString();
                txtDes.Text = dr["NewsDescription"].ToString();
                txtContent.Text = dr["NewsContent"].ToString();
                string[] imagelist = (dr["NewsPhoto"].ToString()).Split('/');
                lbImage.Text = imagelist[4];
                string newsdate = dr["NewsDate"].ToString();
                lblDate.Text = newsdate;
                if (dr["NewsState"].ToString() == "True")
                {
                    chbState.Checked = true;
                }
            }
        }

        protected void btnHuy_Click(object sender, EventArgs e)
        {
            string alert = "Đã hủy";
            Response.Redirect("~/Page/Admin/News/News.aspx?alert=" + alert);
        }

        public void SavePhoto()
        {
            string path = "";
            HttpPostedFile image = Request.Files["FileUploadAnh"];
            if (image != null && image.ContentLength > 0)
            {
                path = Server.MapPath("~/Public/images/news/") + Path.GetFileName(image.FileName);
                image.SaveAs(path);
            }
        }
    }
}