using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Product
{
    public partial class UpdateProduct1 : System.Web.UI.Page
    {
        Product_BUS bus = new Product_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDrop();
                ShowAProduct();
            }
        }
        public void LoadDrop()
        {
            DropDownList1.DataSource = bus.ShowVendor();
            DropDownList1.DataTextField = "VendorName";
            DropDownList1.DataValueField = "VendorID";
            DropDownList1.DataBind();

            DropDownList2.DataSource = bus.ShowCategory();
            DropDownList2.DataTextField = "CategoryName";
            DropDownList2.DataValueField = "CategoryID";
            DropDownList2.DataBind();
        }
        public void ShowAProduct()
        {
            int id = int.Parse(Request.QueryString["id"]);
            DataTable dt = new DataTable();
            dt = bus.ShowAProduct(id);

            foreach (DataRow dr in dt.Rows)
            {
                txtProductID.Text = dr["ProductID"].ToString();
                DropDownList1.SelectedValue = dr["VendorID"].ToString();
                DropDownList2.SelectedValue = dr["CategoryID"].ToString();
                txtName.Text = dr["ProductName"].ToString();
                txtDescription.Text = dr["Description"].ToString();
                string[] imagelist = (dr["Photo"].ToString()).Split('/');
                lbImage.Text = imagelist[4];
                txtQuantity.Text = dr["Quantity"].ToString();
                txtCost.Text = dr["Cost"].ToString();
                if (dr["ProductState"].ToString() == "True")
                {
                    chbState.Checked = true;
                }
            }
        }

        //public void SavePhoto()
        //{
        //    string path = "";
        //    HttpPostedFile image = Request.Files["FileUploadAnh"];
        //    if (image != null && image.ContentLength > 0)
        //    {
        //        path = Server.MapPath("~/Public/images/products/") + Path.GetFileName(image.FileName);
        //        image.SaveAs(path);
        //    }
        //}
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtProductID.Text);
            int vendorid = int.Parse(DropDownList1.SelectedValue);
            int categoryid = int.Parse(DropDownList2.SelectedValue);
            string productname = txtName.Text;
            string description = txtDescription.Text;
            int quantity = int.Parse(txtQuantity.Text);
            decimal cost = Convert.ToDecimal(txtCost.Text);
            string linkImage;
            if (FileUploadAnh.FileName != "")
            {
                string path = Server.MapPath("~/Public/images/products/" + FileUploadAnh.FileName);
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
            if (txtCost.Text == "" || txtDescription.Text == "" || txtName.Text == "" || txtQuantity.Text == "" || linkImage == "")
            {
                Response.Write("<script>alert('Mời nhập đủ thông tin sản phẩm!')</script>");
            }
            else
            {
                bus.UpdateProduct(id, vendorid, categoryid, productname, description, linkImage, quantity, cost, state);
                //string alert = "Sửa thành công";
                Response.Redirect("~/Page/Admin/Product/Product.aspx");
            }
        }
    }
}