using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BUS
{
    public class AllPhoneAndLaptop_BUS
    {
        Lop_DAL dal = new Lop_DAL();
        public DataTable AllPhone()
        {
            string sql = "select  * from Product inner join ProductInfor on Product.ProductID=ProductInfor.ProductID where CategoryID=1";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable AllLaptop()
        {
            string sql = "SELECT * FROM Product inner join ProductInfor on Product.ProductID=ProductInfor.ProductID WHERE CategoryID=2";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable PhoneFilter(int a, int b)
        {
            string sql = "select * from Product inner join ProductInfor on Product.ProductID=ProductInfor.ProductID where CategoryID=1 and Cost between " + a + " and " + b + "";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable LaptopFilter(int a, int b)
        {
            string sql = "select * from Product inner join ProductInfor on Product.ProductID=ProductInfor.ProductID where CategoryID=2 and Cost between " + a + " and " + b + "";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

    }
}
