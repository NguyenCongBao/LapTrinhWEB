using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BUS
{
    public class Home_BUS
    {
        Lop_DAL dal = new Lop_DAL();

        public DataTable ShowTop5Phone()
        {
            string sql = "SELECT TOP 5 * FROM Product WHERE CategoryID=1 AND Quantity > 0";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable ShowTop5Laptop()
        {
            string sql = "SELECT TOP 5 * FROM Product WHERE CategoryID=2 AND Quantity > 0";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable ShopTop5Product()
        {
            string sql = "SELECT TOP 5 Product.ProductID,Product.ProductName,Product.Photo,Product.Cost,SUM(ProductQuantity) FROM OrderDetail INNER JOIN Product ON OrderDetail.ProductID = Product.ProductID GROUP BY Product.ProductID,Product.ProductName,Product.Photo,Product.Cost HAVING( SUM(ProductQuantity) >=10)";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable ShowTopNews()
        {
            string sql = "SELECT TOP 5 * FROM News ORDER BY NewsDate DESC";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable AllPhone()
        {
            string sql = "SELECT * FROM Product WHERE CategoryID=1";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable AllLaptop()
        {
            string sql = "SELECT * FROM Product WHERE CategoryID=2";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
    }
}
