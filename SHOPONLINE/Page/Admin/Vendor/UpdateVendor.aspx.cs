using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace SHOPONLINE.Page.Admin.Vendor
{
    public partial class UpdateVendor : System.Web.UI.Page
    {
        Vendor_BUS bus = new Vendor_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowAVendor();
            }
        }


        public void ShowAVendor()
        {
            int vendorid = int.Parse(Request.QueryString["vendorid"]);
            DataTable dt = new DataTable();
            dt = bus.getAVendor(vendorid);

            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    txtVendorID.Text = dr["VendorID"].ToString();
                    txtVendorName.Text = dr["VendorName"].ToString();
                    if (dr["VendorState"].ToString() == "True")
                    {
                        chbstatus.Checked = true;
                    }
                }
            }
            else
            {
                Response.Redirect("<script>alert('Không có dữ liệu')</script>");
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                int categoryid = int.Parse(txtVendorID.Text);
                string categoryname = txtVendorName.Text;
                int categorystate;
                if (chbstatus.Checked)
                {
                    categorystate = 1;
                }
                else
                {
                    categorystate = 0;
                }

                if (txtVendorName.Text == "")
                {
                    Response.Write("<script>alert('Chưa nhập tên loại!')</script>");
                }
                else
                {
                    bus.updateVendor(categoryid, categoryname, categorystate);
                    //string alert = "Cập nhật thành công";
                    Response.Redirect("~/Page/Admin/Vendor/Vendor.aspx");
                }

            }
            catch (Exception)
            {
                Response.Write("<script>alert('Có lỗi rồi!')</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/Vendor/Vendor.aspx");
        }
    }
}