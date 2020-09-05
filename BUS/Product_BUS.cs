using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
using System.Data;
using System.Data.SqlClient;

namespace BUS
{
    public class Product_BUS
    {
        Lop_DAL da = new Lop_DAL();
        Product_DTO L = new Product_DTO();

        public DataTable ShowProduct()
        {
            string sql = "SELECT * FROM   Product ORDER BY ProductID DESC";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
        public DataTable ShowAProduct(int id)
        {
            string sql = "SELECT * FROM   Product WHERE ProductID=" + id;
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }

        public DataTable ShowVendor()
        {
            string sql = "SELECT * FROM Vendor";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }

        public DataTable ShowCategory()
        {
            string sql = "SELECT * FROM Category";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }

        public void InsertProduct(int venID, int cateID, string proName, string des, string photo, int quantity, decimal cost, int state)
        {
            string sql = "INSERT INTO Product VALUES('" + venID + "','" + cateID + "','" + proName + "','" + des + "','" + "~/Public/images/products/" + photo + "','" + quantity + "','" + cost + "', '" + state + "')";
            da.ExecuteNonQuery(sql);
        }

        public void UpdateProduct(int proID, int venID, int cateID, string proName, string des, string photo, int quantity, decimal cost, int state)
        {
            string sql = "UPDATE Product SET VendorID='" + venID + "',CategoryID='" + cateID + "',ProductName=N'" + proName + "',Description=N'" + des + "',Photo='~/Public/images/products/" + photo + "',Quantity='" + quantity + "',Cost='" + cost + "',ProductState='" + state + "' WHERE ProductID='" + proID + "'";
            da.ExecuteNonQuery(sql);
        }

        public void DeleteProduct(int proID)
        {
            string sql = "Delete FROM Product WHERE ProductID='" + proID + "'";
            da.ExecuteNonQuery(sql);
        }


        public DataTable ShopTop10Product()
        {
            string sql = "SELECT TOP 10 Product.ProductID,Product.ProductName,Product.Photo,Product.Cost,Product.Quantity,SUM(ProductQuantity) FROM OrderDetail INNER JOIN Product ON OrderDetail.ProductID = Product.ProductID GROUP BY Product.ProductID,Product.ProductName,Product.Photo,Product.Cost,Product.Quantity HAVING( SUM(ProductQuantity) >=10)";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }

        public DataTable SearchProduct(string productname)
        {
            string sql = "SELECT * FROM   Product WHERE ProductName LIKE '%"+productname+"%'";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }

        //tim san pham theo loai san pham
        public DataTable SearchProductCateProduct(int categoryid)
        {
            string sql = "SELECT * FROM   Product WHERE CategoryID=" + categoryid;
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }

        //lay tat ca loại hàng
        public DataTable getAllCategory()
        {
            string sql = "SELECT * FROM Category";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt;
        }
    }
}