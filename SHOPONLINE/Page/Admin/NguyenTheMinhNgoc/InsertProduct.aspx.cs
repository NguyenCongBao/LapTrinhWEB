using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using DTO;
using BUS;

namespace SHOPONLINE.Page.Admin.NguyenTheMinhNgoc
{
    public partial class InsertProduct : System.Web.UI.Page
    {
        Product_DTO L = new Product_DTO();
        Product_BUS bus = new Product_BUS();

        public void HienThi()
        {
            dtgProduct.DataSource = bus.ShowProduct();
            dtgProduct.DataBind();
            //fdfdf
        }

        public void loadloai()
        {
            ddrMaloai.DataSource = bus.ShowCategory();
            ddrMaloai.DataTextField = "CategoryName";
            ddrMaloai.DataValueField = "CategoryID";
            ddrMaloai.DataBind();

        }

        public void loadMansx()
        {
            ddrMansx.DataSource = bus.ShowVendor();
            ddrMansx.DataTextField = "VendorName";
            ddrMansx.DataValueField = "VendorID";
            ddrMansx.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
            loadloai();
            loadMansx();
        }

        public void SaveFileUpload()
        {
            string strFilePath="";
            if (FileUploadAnh.FileName != "")
            {
                strFilePath = Server.MapPath("~/Public/images/products/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(strFilePath);
            }
        }

        protected void btn_Them_Click(object sender, EventArgs e)
        {
            L.ProductID_ = Int32.Parse(txtMasp.Text);
            L.VenderID_ = Int32.Parse(ddrMansx.SelectedValue);
            L.CategoryID_ = Int32.Parse(ddrMaloai.SelectedValue);
            L.ProductName_ = txtTen.Text;
            L.Description_ = txtMieuta.Text;
            L.Photo_ = FileUploadAnh.FileName;
            L.Quantity_ = Int32.Parse(txtSoluong.Text);
            L.Cost_ = Int32.Parse(txtGia.Text);
            L.Amount_ = Int32.Parse(txtAmout.Text);
            L.ProductState_ = Int32.Parse(ddrState.Text);
            SaveFileUpload();
            bus.InsertProduct(L.ProductID_, L.VenderID_, L.CategoryID_, L.ProductName_, L.Description_,
                L.Photo_, L.Quantity_, L.Cost_, L.Amount_, L.ProductState_);
            Response.Write("<script>alert('Thêm thành công!');</script>");
            HienThi();
        }
    }
}