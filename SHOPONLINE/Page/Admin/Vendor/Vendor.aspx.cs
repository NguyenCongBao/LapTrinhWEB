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
    public partial class Vendor : System.Web.UI.Page
    {
        Vendor_BUS bus = new Vendor_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowVendor();
            }

            //string alert = Request.QueryString["alert"];
            //if (alert != null)
            //{
            //    Response.Write("<script>alert('" + alert + "')</script>");
            //}
        }

        public void ShowVendor()
        {
            DataTable dt = new DataTable();
            dt = bus.getAllVendor();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/Vendor/InsertVendor.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Button btnUpdate = sender as Button;
            GridViewRow grvr = btnUpdate.NamingContainer as GridViewRow;
            int vendorid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            Response.Redirect("~/Page/Admin/Vendor/UpdateVendor.aspx?vendorid=" + vendorid);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnDelete = sender as Button;
            GridViewRow grvr = btnDelete.NamingContainer as GridViewRow;
            int categoryid = int.Parse(GridView1.DataKeys[grvr.RowIndex].Value.ToString());
            bus.deleteVendor(categoryid);
            Response.Redirect("~/Page/Admin/Vendor/Vendor.aspx");
        }

        protected void btnVendorNull_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = bus.getVendorNull();
            GridView1.DataBind();
        }

        protected void LinkButtonSearch_Click(object sender, EventArgs e)
        {
            string vendorname = txtvendor.Text;

            DataTable dt = new DataTable();
            dt = bus.getVendorByName(vendorname);
            if (dt.Rows.Count <= 0)
            {
                Response.Write("<script>alert('Không tìm thấy nhà phù hợp!')</script>");
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnThem_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Admin/Vendor/InsertVendor.aspx");
        }
    }
}