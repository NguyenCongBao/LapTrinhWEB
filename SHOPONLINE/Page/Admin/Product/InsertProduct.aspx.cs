using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Product
{
    public partial class InsertProduct1 : System.Web.UI.Page
    {
        Product_BUS bus = new Product_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDrop();
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
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int vendorid = int.Parse(DropDownList1.SelectedValue);
            int categoryid = int.Parse(DropDownList2.SelectedValue);
            string productname = txtName.Text;
            string description = txtDescription.Text;
            int quantity = int.Parse(txtQuantity.Text);
            decimal cost = Convert.ToDecimal(txtCost.Text);
            string photo = "";
            if (FileUploadAnh.FileName != "")
            {
                string path = Server.MapPath("~/Public/images/products/" + FileUploadAnh.FileName);
                FileUploadAnh.PostedFile.SaveAs(path);
                photo = FileUploadAnh.FileName;
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

            if (txtCost.Text == "" || txtDescription.Text == "" || txtName.Text == "" || txtQuantity.Text == "" || photo == "")
            {
                Response.Write("<script>alert('Mời nhập đủ thông tin sản phẩm!')</script>");
            }
            else
            {
                bus.InsertProduct(vendorid, categoryid, productname, description, photo, quantity, cost, state);
                //string alert = "Thêm thành công";
                Response.Redirect("~/Page/Admin/Product/Product.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtDescription.Text = "";
            txtCost.Text = "";
            txtQuantity.Text = "";
            chbState.Checked = false;
        }
    }
}