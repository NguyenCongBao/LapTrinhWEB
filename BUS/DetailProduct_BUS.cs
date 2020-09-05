using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace BUS
{
    public class DetailProduct_BUS
    {
        Lop_DAL dal = new Lop_DAL();

        public DataTable detailProduct(int proid)
        {
            string sql = "select *,CategoryName,VendorName from Product inner join Category on Product.CategoryID= Category.CategoryID inner join Vendor on Product.VendorID = Vendor.VendorID where ProductID = " + proid;
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable top5ProductVendor(int proid)
        {
            string sql = "select top 4 * from Product where VendorID=(select VendorID from Product where ProductID=" + proid + ")";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable top5ProductCost()
        {
            string sql = "select top 4 * from Product order by Cost desc";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        public DataTable productinfor(int proid)
        {
            string sql = "select * from Product inner join ProductInfor on Product.ProductID=ProductInfor.ProductID  where Product.ProductID=" + proid;
            DataTable dt = new DataTable();
            dt.Clear();
            dt = dal.GetTable(sql);
            return dt;
        }
    }
}

