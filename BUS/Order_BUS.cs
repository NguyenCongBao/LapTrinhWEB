using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using DAL;

namespace BUS
{
    public class Order_BUS
    {

        //QUAN LY ORDER PHIA NGUOI DUNG
        Lop_DAL dal = new Lop_DAL();
        //Hien thi phuong thuc thanh toan
        public object GetSession(string key)
        {
            object sessionKey = HttpContext.Current.Session[key];
            return sessionKey;
        }

        public DataTable ShowPayment()
        {
            string sql = "SELECT * FROM Payment";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable GetUserID()
        {
            string username = HttpContext.Current.Session["login"].ToString();
            string sql = "SELECT * FROM Users WHERE UserName='" + username + "'";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable GetOrder()
        {
            string sql = "SELECT TOP (1) [OrderID] FROM Orders order by OrderID desc";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public void InsertOrder(int userid, string orderdate, string receivername, string receiverphone, string receiveraddress, string receiveremail, int paymentid, string totalmoney)
        {
            string sql = "INSERT INTO Orders VALUES(" + userid + ",'" + orderdate + "',N'" + receivername + "','" + receiverphone + "',N'" + receiveraddress + "','" + receiveremail + "','" + paymentid + "','" + totalmoney + "','" + 1 + "')";
            dal.ExecuteNonQuery(sql);

        }

        public void InsertOrderDetail(int orderid, int productid, decimal cost, int quantity)
        {
            string sql = "INSERT INTO OrderDetail VALUES('" + orderid + "','" + productid + "','" + cost + "','" + quantity + "')";
            dal.ExecuteNonQuery(sql);

        }

        //===================================================================
        //===================================================================

        //QUAN LY ORDER PHIA ADMIN

        //lay ra don hang cua khach hang
        public DataTable ShowOrders()
        {
            DataTable dt = new DataTable();
            string sql = "SELECT OrderID,Users.UserName,OrderDate,ReceiverPhone FROM Orders INNER JOIN Users ON Orders.UserID= Users.UserID WHERE Status=1 ORDER BY OrderID DESC";
            dt = dal.GetTable(sql);
            return dt;
        }
        // lay ra don hang dang cho xu ly
        public DataTable ShowPendingOrders()
        {
            DataTable dt = new DataTable();
            string sql = "SELECT OrderID,Users.UserName,OrderDate,ReceiverPhone FROM Orders INNER JOIN Users ON Orders.UserID= Users.UserID WHERE Status=2";
            dt = dal.GetTable(sql);
            return dt;
        }
        //lay ra don hang da duoc xu ly
        public DataTable ShowPendedOrders()
        {
            DataTable dt = new DataTable();
            string sql = "SELECT OrderID,Users.UserName,OrderDate,ReceiverPhone FROM Orders INNER JOIN Users ON Orders.UserID= Users.UserID WHERE Status=3";
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable GetOrderDetail(int orderid)
        {
            string sql = "SELECT OrderID,OrderDate,ReceiverName,ReceiverPhone,ReceiverAddress,ReceiverEmail,TotalMoney,Users.UserName,PaymentName FROM Orders INNER JOIN Users ON Orders.UserID= Users.UserID INNER JOIN Payment ON Orders.PaymentID=Payment.PaymentID WHERE Orders.OrderID=" + orderid;
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable GetProductInOrder(int orderid)
        {
            string sql = "SELECT Orders.OrderID,OrderDate,ProductName,ProductCost,ProductQuantity,sum(ProductCost*ProductQuantity) as 'TongTien' FROM Orders INNER JOIN OrderDetail ON Orders.OrderID= OrderDetail.OrderID INNER JOIN Product ON OrderDetail.ProductID=Product.ProductID WHERE Orders.OrderID =" + orderid + " GROUP BY Orders.OrderID,OrderDate,ProductName,ProductCost,ProductQuantity";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public void DeleteOrder(int orderid)
        {
            string sql = "DELETE FROM Orders WHERE OrderID=" + orderid;
            dal.ExecuteNonQuery(sql);
        }

        public void DeleteOrderDetail(int orderid)
        {
            string sql = "DELETE FROM OrderDetail WHERE OrderID=" + orderid;
            dal.ExecuteNonQuery(sql);
        }

        public void UpdateStatusOrder(int orderid, int status)
        {
            string sql = "UPDATE Orders SET Status='" + status + "' WHERE OrderID=" + orderid;
            dal.ExecuteNonQuery(sql);
        }

        //Tim kiem hoa don theo ngày
        public DataTable SerchDateOrder(int status,string orderdate)
        {
            DataTable dt = new DataTable();
            string sql = "SELECT OrderID, Users.UserName,OrderDate,ReceiverPhone FROM Orders INNER JOIN Users ON Orders.UserID = Users.UserID WHERE OrderDate='" + orderdate+"' AND Status="+ status;
            dt = dal.GetTable(sql);
            return dt;
        }
    }
}