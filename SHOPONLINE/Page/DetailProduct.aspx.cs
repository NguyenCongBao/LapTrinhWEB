using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Data.SqlClient;

namespace SHOPONLINE.Page
{
    public partial class DetailProduct : System.Web.UI.Page
    {
        DetailProduct_BUS bus = new DetailProduct_BUS();
         
        
        public void detailProduct()
        {
            int id = Int32.Parse(Request.QueryString["productid"]);
            DataTable dt = new DataTable();
            dt = bus.detailProduct(id);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        public void top5Vendor()
        {
            int id = Int32.Parse(Request.QueryString["productid"]);
            DataTable dt2 = new DataTable();
            try
            {
                dt2 = bus.top5ProductVendor(id);
                DataList2.DataSource = dt2;
                DataList2.DataBind();
            }
            catch
            {
                dt2 = bus.top5ProductCost();
                DataList2.DataSource = dt2;
                DataList2.DataBind();
            }
            

        }
        public void productInfor()
        {
            int id = Int32.Parse(Request.QueryString["productid"]);
            DataTable dt3 = new DataTable();
            dt3 = bus.productinfor(id);
            DataList3.DataSource = dt3;
            DataList3.DataBind();

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                detailProduct();
                top5Vendor();
                productInfor();
            }
            catch
            {
                Response.Redirect("Home.aspx");
                Response.Write("<script>alert('Chưa chọn sản phẩm')</script>");
            }
            
        }
    }
}