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
    public class Category_BUS
    {
        Lop_DAL bao_dal = new Lop_DAL();
        //Get all category
        public DataTable getAllCategory()
        {
            string sql = "SELECT * FROM Category";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }

        public DataTable getACategory(int categoryid)
        {
            string sql = "SELECT * FROM Category WHERE CategoryID=" + categoryid;
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }

        public void InsertCategory(string categoryname, int categorystate)
        {
            string sql = "insert into Category(CategoryName, CategoryState) values(N'" + categoryname + "','" + categorystate + "')";
            bao_dal.ExecuteNonQuery(sql);
        }

        public void UpdateCategory(int categoryid, string categoryname, int categorystate)
        {
            string sql = "UPDATE Category SET CategoryName=N'" + categoryname + "',CategoryState='" + categorystate + "' WHERE CategoryID='" + categoryid + "'";
            bao_dal.ExecuteNonQuery(sql);
        }
        public void deleteCategory(int id)
        {
            string sql = "delete from Category where CategoryID=" + id;
            bao_dal.ExecuteNonQuery(sql);
        }






        public DataTable getCategoryByName(string categoryname)
        {
            string sql = "SELECT * FROM Category where CategoryName=N'" + categoryname + "'";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        public DataTable getTop3Category()
        {
            string sql = "SELECT TOP(3) Count(*) as Amount,Category.CategoryID," +
                "CategoryName, CategoryState FROM Category inner join Product on Category.CategoryID=" +
                "Product.CategoryID Group by Category.CategoryID,CategoryName,CategoryState Order by Amount";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        public DataTable getCategoryNull()
        {
            string sql = "SELECT CategoryID,CategoryName from Category where CategoryID not in (select Category.CategoryID FROM Category inner join Product " +
            " on Category.CategoryID = Product.CategoryID)";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }
        //Check
        public bool checkIDCategory(int id)
        {
            string sql = "SELECT * from Category";
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            foreach (DataRow row in dt.Rows)
            {
                if (id == Int32.Parse(row["CategoryID"].ToString()))
                {
                    return true;
                }
            }
            return false;
        }

        public DataTable getProductByIdOfCategory(int id)
        {
            string sql = "SELECT ProductID,ProductName FROM Category inner join Product" +
                " on Category.CategoryID=Product.CategoryID where Category.CategoryID=" + id;
            DataTable dt = new DataTable();
            dt = bao_dal.GetTable(sql);
            return dt;
        }

    }
}
