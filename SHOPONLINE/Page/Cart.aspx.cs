using System;
using System.Data;
using System.Globalization;
using System.Web.UI.WebControls;

namespace SHOPONLINE.Page
{
    public partial class Cart : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CartLogin();
            }

        }

        //Code gio hang
        public void CartLogin(/*string a = null, string b = null, string c = null, string d = null*/)
        {

            if (Session["login"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                try
                {
                    DataTable cart = new DataTable();
                    cart.Columns.Add("ID");
                    cart.Columns.Add("Name");
                    cart.Columns.Add("Photo");
                    cart.Columns.Add("Cost");
                    cart.Columns.Add("Quantity");
                    cart.Columns.Add("TotalMoney");
                    if (Session["cart"] == null)
                    {
                        Session["cart"] = cart;
                    }
                    else
                    {
                        cart = Session["cart"] as DataTable;
                    }

                    string productid = Request.QueryString["productid"];
                    string productname = Request.QueryString["productname"];
                    string photo = Request.QueryString["photo"];
                    decimal cost = Convert.ToDecimal(Request.QueryString["cost"]);
                    
                    //Neu san pham ton tai thi so luong tang len 1 dong thoi tinh gia
                    bool isExisted = false;
                    if (Session["cart"] != null)
                    {
                        foreach (DataRow dr in cart.Rows)
                        {
                            if (productid.Trim() == dr["ID"].ToString().Trim())
                            {
                                dr["Quantity"] = int.Parse(dr["Quantity"].ToString()) + 1;
                                dr["TotalMoney"] = int.Parse(dr["Quantity"].ToString()) * cost;
                                isExisted = true;
                                break;
                            }
                        }
                    }

                    //Neu gio hang trong thi sản pham dược them vao voi so luong la 1
                    if (!isExisted)
                    {
                        DataRow dr = cart.NewRow();
                        dr["ID"] = productid;
                        dr["Name"] = productname;
                        dr["Photo"] = photo;
                        dr["Cost"] = cost;
                        dr["Quantity"] = 1;
                        dr["TotalMoney"] = 1 * cost;
                        cart.Rows.Add(dr);
                    }

                    //Gan datatable cart vao bien Session["cart"]
                    Session["cart"] = cart;
                    GridView1.DataSource = cart;
                    GridView1.DataBind();
                    TotalMoney();
                }
                catch (Exception)
                {

                    Response.Write("<script>alert('Có lỗi xảy ra!')</script>");
                }
            }

        }

        //Tinh tong tien gio hang
        public void TotalMoney()
        {
            DataTable cart = new DataTable();
            cart = Session["cart"] as DataTable;
            decimal tong = 0;
            foreach (DataRow dr in cart.Rows)
            {
                tong = tong + int.Parse(dr["Quantity"].ToString()) * Convert.ToDecimal(dr["cost"].ToString());
            }
            lbTotalMoney.Text = tong.ToString("N", CultureInfo.InvariantCulture) + " VNĐ";
        }


        //Cap nhat so luong san pham trong gio hang
        protected void btnUpdateCart_Click(object sender, EventArgs e)
        {

            DataTable cart = new DataTable();
            cart = Session["cart"] as DataTable;
            foreach (GridViewRow r in GridView1.Rows)
            {
                int id = int.Parse(GridView1.DataKeys[r.DataItemIndex].Value.ToString());
                foreach (DataRow dr in cart.Rows)
                {
                    if (id == int.Parse(dr["ID"].ToString()))
                    {
                        TextBox quantity = r.Cells[4].FindControl("txtQuantity") as TextBox;
                        dr["Quantity"] = quantity.Text;
                        dr["TotalMoney"] = Int32.Parse(quantity.Text) * Convert.ToDecimal(r.Cells[3].Text);
                        break;
                    }

                }

            }
            Session["cart"] = cart;
            GridView1.DataSource = cart;
            GridView1.DataBind();
            TotalMoney();
            Response.Write("<script>alert('Cập nhật số lượng thành công')</script>");

        }


        //xoa san pham khoi gio hang
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Button btnDelete = sender as Button;
            GridViewRow grvr = btnDelete.NamingContainer as GridViewRow;
            string ID = GridView1.DataKeys[grvr.RowIndex].Value.ToString();
            DataTable cart = new DataTable();
            cart = Session["cart"] as DataTable;
            foreach (DataRow dr in cart.Rows)
            {
                if (ID == dr["ID"].ToString())
                {
                    dr.Delete();
                    break;
                }

            }
            Session["cart"] = cart;
            GridView1.DataSource = cart;
            GridView1.DataBind();
            TotalMoney();
            Response.Write("<script>alert('Xóa sản phẩm thành công')</script>");
        }

        //Xoa het gio hang
        protected void btnDeleteAllCart_Click(object sender, EventArgs e)
        {
            Session["cart"] = null;

            DataTable cart = new DataTable();
            cart = Session["cart"] as DataTable;
            GridView1.DataSource = cart;
            GridView1.DataBind();
            lbTotalMoney.Text = 0.ToString();
        }

    }
}