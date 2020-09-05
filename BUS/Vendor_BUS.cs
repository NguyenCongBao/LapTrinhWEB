using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BUS
{
   public class Vendor_BUS
    {
        Lop_DAL bao_dal = new Lop_DAL();
        public DataTable getAllVendor()
        {
            string sql = "SELECT * FROM Vendor ORDER BY VendorID DESC";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }

        public DataTable getAVendor(int vendorid)
        {
            string sql = "SELECT * FROM Vendor WHERE VendorID="+vendorid;
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        public void insertVendor(string vendorname,int vendorstate)
        {
            string sql = "insert into Vendor(VendorName, VendorState) values(N'"+ vendorname + "','" + vendorstate + "')";
            bao_dal.ExecuteNonQuery(sql);
        }
        public void updateVendor(int vendorid,string vendorname,int vendorstate)
        {
            string sql = "update Vendor set VendorName=N'" + vendorname + "',VendorState='" + vendorstate + "' where VendorID=" + vendorid;
            bao_dal.ExecuteNonQuery(sql);
        }
        public void deleteVendor(int id)
        {
            string sql = "delete from Vendor where VendorID=" + id;
            bao_dal.ExecuteNonQuery(sql);
        }
        public DataTable getVendorByName(string vendorname)
        {
            string sql = "SELECT * FROM Vendor where VendorName LIKE'%" +vendorname+"%'";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        public DataTable getTop3Vendor()
        {
            string sql = "SELECT TOP(3) Count(*) as Amount,Vendor.VendorID," +
                "VendorName FROM Vendor inner join Product on Vendor.VendorID=" +
                "Product.VendorID Group by Vendor.VendorID,VendorName Order by Amount";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        public DataTable getVendorNull()
        {
            string sql = "SELECT * from Vendor where VendorID not in (select Vendor.VendorID FROM Vendor inner join Product on Vendor.VendorID = Product.VendorID inner join OrderDetail on Product.ProductID = OrderDetail.ProductID)";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        //Check
        public bool checkIDVendor(int id)
        {
            string sql = "SELECT * from Vendor";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            foreach (DataRow row in dt.Rows)
            {
                if (id == Int32.Parse(row["VendorID"].ToString()))
                {
                    return true;
                }
            }
            return false;
        }
        public DataTable getProductByIdOfVendor(int id)
        {
            string sql = "SELECT ProductID,ProductName FROM Vendor inner join Product" +
                " on Vendor.VendorID=Product.VendorID where Vendor.VendorID="+id;
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
    }
}
