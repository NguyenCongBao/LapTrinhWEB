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
    public class News_BUS
    {
        Lop_DAL dal = new Lop_DAL();

        public DataTable ShowNews()
        {
            string sql = "SELECT * FROM News ORDER BY NewsID DESC";
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

        public DataTable DetailNews(int newsid)
        {
            string sql = "SELECT * FROM News WHERE NewsID=" + newsid;
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
        

        //=====================================================================
        //=====================================================================
        public void InsertNews(string name, string author, string photo, string des, string content, string date, int state)
        {
            string sql = "insert into News values('" + name + "','" + author + "','" + "~/Public/images/news/" + photo + "', '" + des + "','" + content + "','" + date + "', '" + state + "')";
            dal.ExecuteNonQuery(sql);
        }

        public void UpdateNews(int id, string name, string author, string photo, string des, string content, string date, int state)
        {
            string sql = "UPDATE News SET NewsName=N'" + name + "', NewsAuthor='" + author + "', NewsPhoto= '"+"~/Public/images/news/" + photo + "',NewsDescription=N'" + des + "',NewsContent=N'" + content + "',NewsDate='" + date + "',NewsState='" + state + "' WHERE NewsID='" + id + "'";
            dal.ExecuteNonQuery(sql);
        }

        public void DeleteNews(int id)
        {
            string sql = "delete from News where NewsID='" + id + "'";
            dal.ExecuteNonQuery(sql);
        }

        public DataTable ShowANews(int id)
        {
            string sql = "select * from News WHERE NewsID=" + id;
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        //Tìm kiếm
        public DataTable SearchNew(string newName)
        {
            string sql = "SELECT * FROM News WHERE NewsName=N'" + newName + "'";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

    }
}
