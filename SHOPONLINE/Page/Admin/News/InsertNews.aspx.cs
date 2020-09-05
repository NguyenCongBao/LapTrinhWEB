using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace SHOPONLINE.Page.Admin.News
{
    public partial class InsertNews : System.Web.UI.Page
    {
        News_BUS bus = new News_BUS();

        string s = DateTime.Now.AddDays(2).ToShortDateString();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = s;
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

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string newsname = txtName.Text.Trim();
            string newsauthor = txtAuthor.Text.Trim();
            string newsdes = HttpUtility.HtmlDecode(txtDes.Text.Trim());
            string newscontent = HttpUtility.HtmlDecode(txtContent.Text.Trim());
            string newsphoto = "";
            string newsdate = lblDate.Text;
            if (FileUploadAnh.FileName != "")
            {
                string path = Server.MapPath("~/Public/images/news/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(path);
                newsphoto = FileUploadAnh.FileName;
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

            if (txtName.Text == "" || txtAuthor.Text == "" || txtContent.Text == "" || txtDes.Text == "" || newsphoto == "")
            {
                Response.Write("<script>alert('Mời nhập đủ thông tin NEWS!')</script>");
            }
            else
            {
                bus.InsertNews(newsname, newsauthor, newsphoto, newsdes, newscontent, newsdate, state);
                //string alert = "Thêm thành công";
                Response.Redirect("~/Page/Admin/News/News.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtDes.Text = "";
            txtContent.Text = "";
            txtAuthor.Text = "";
            chbState.Checked = false;
        }
    }
}