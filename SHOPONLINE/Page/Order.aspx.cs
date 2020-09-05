using BUS;
using System;
using System.Data;
using System.Globalization;
namespace SHOPONLINE.Page
{
    public partial class Order : System.Web.UI.Page
    {
        Order_BUS bus = new Order_BUS();
        DataTable cartOrder = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            cartOrder = Session["cart"] as DataTable;
            GridView1.DataSource = cartOrder;
            GridView1.DataBind();
            TotalMoney();

            lbBookDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            if (!IsPostBack)
            {
                LoadPayment();
            }

        }

        public void LoadPayment()
        {
            DataTable dt = new DataTable();
            dt = bus.ShowPayment();
            drdPayment.DataSource = dt;
            drdPayment.DataTextField = "PaymentName";
            drdPayment.DataValueField = "PaymentID";
            drdPayment.DataBind();
        }

        public void TotalMoney()
        {
            //DataTable cart = new DataTable();
            cartOrder = Session["cart"] as DataTable;
            decimal tong = 0;
            foreach (DataRow dr in cartOrder.Rows)
            {
                tong = tong + int.Parse(dr["Quantity"].ToString()) * Convert.ToDecimal(dr["cost"].ToString());
            }
            lbTotalMoney.Text = tong.ToString("N", CultureInfo.InvariantCulture) + " VNĐ";
        }

        protected void btnXacNhan_Click(object sender, EventArgs e)
        {
            //try
            //{
            string receivername = txtReceiverName.Text;
            string receiverphone = txtReceiverPhone.Text;
            string receiveraddress = txtReceiverAddress.Text;
            string receiveremail = txtReceiverEmail.Text;
            string orderdate = lbBookDate.Text;
            string totalmoney = lbTotalMoney.Text;
            int paymentid = int.Parse(drdPayment.SelectedValue);

            if (receivername == "" || receiverphone == "" || receiveraddress == "" || drdPayment.SelectedValue == "")
            {
                Response.Write("<script>alert('Chưa nhập đủ thông tin, nhập lại!')</script>");
            }
            else
            {
                DataTable dt = new DataTable();
                dt = bus.GetUserID();
                int userid = 0;
                foreach (DataRow dr in dt.Rows)
                {
                    userid = int.Parse(dr["UserID"].ToString());
                }


                bus.InsertOrder(userid, orderdate, receivername, receiverphone, receiveraddress, receiveremail, paymentid, totalmoney);

                DataTable dtOrder = new DataTable();
                dtOrder = bus.GetOrder();
                int orderid = 0;
                foreach (DataRow dr in dtOrder.Rows)
                {
                    orderid = int.Parse(dr["OrderID"].ToString().Trim());
                }
                DataTable cart = new DataTable();
                cart = Session["cart"] as DataTable;
                foreach (DataRow dr in cart.Rows)
                {
                    int productid = int.Parse(dr["ID"].ToString());
                    decimal productcost = Convert.ToDecimal(dr["Cost"].ToString());
                    int productquantity = int.Parse(dr["Quantity"].ToString());
                    bus.InsertOrderDetail(orderid, productid, productcost, productquantity);
                }

                Session["cart"] = null;
                string alert = "Mua hàng thành công";
                Response.Redirect("~/Page/Home.aspx?alert=" + alert);
                //Response.Write("<script>alert('Mua hàng thành công')</script>");
            }
            //}
            //catch (Exception)
            //{

            //    Response.Write("<script>alert('Có lỗi rồi!')</script>");
            //}
        }
    }
}