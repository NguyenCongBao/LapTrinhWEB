//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using BUS;
//namespace SHOPONLINE.Page.Admin.Vendor
//{
//    public partial class Detail_vendor : System.Web.UI.Page
//    {
//        Vendor_BUS v_b = new Vendor_BUS();
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            string id = Request.QueryString["id"].ToString();
//            Label1.Text = Label1.Text +":"+ id;
//            GridView1.DataSource = v_b.getProductByIdOfVendor(Int32.Parse(id));
//            GridView1.DataBind();
//        }

//        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
//        {
//            GridView1.PageIndex = e.NewPageIndex;
//            string id = Request.QueryString["id"].ToString();
//            Label1.Text = Label1.Text + ":" + id;
//            GridView1.DataSource = v_b.getProductByIdOfVendor(Int32.Parse(id));
//            GridView1.DataBind();
//        }
//    }
//}