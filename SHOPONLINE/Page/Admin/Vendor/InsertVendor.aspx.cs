using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Vendor
{
    public partial class InsertVendor : System.Web.UI.Page
    {
        Vendor_BUS bus = new Vendor_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string vendorname = txtVendorName.Text;
            int vendorstate;
            if (chbstatus.Checked)
            {
                vendorstate = 1;
            }
            else
            {
                vendorstate = 0;
            }

            if (txtVendorName.Text == "")
            {
                Response.Write("<script>alert('Chưa nhập tên nhà sản xuất!')</script>");
            }
            else
            {
                bus.insertVendor(vendorname, vendorstate);
                //string alert = "Thêm thành công";
                Response.Redirect("~/Page/Admin/Vendor/Vendor.aspx");
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtVendorName.Text = "";
            chbstatus.Checked = false;
        }
    }
}