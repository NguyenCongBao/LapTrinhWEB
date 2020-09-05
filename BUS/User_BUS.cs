using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BUS
{
    public class User_BUS
    {
        Lop_DAL dal = new Lop_DAL();
        public DataTable ShowUser()
        {
            string sql = "select * from Users ORDER BY UserID DESC";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable ShowAUser(int userid)
        {
            string sql = "select * from Users WHERE UserID=" + userid;
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public DataTable searchUser(string name)
        {
            string sql = "select * from Users WHERE UserName=N'" + name + "'";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }

        public void InsertUser(string username, string password, string email, string phone, string address, string role, int userstate)
        {
            string sql = "insert into Users values('" + username + "','" + password + "','" + email + "', '" + phone + "',N'" + address + "','" + role + "','" + userstate + "')";
            dal.ExecuteNonQuery(sql);
        }

        public void UpdateUser(int userid, string username, string password, string email, string phone, string address, string role, int userstate)
        {
            string sql = "UPDATE Users SET UserName=N'" + username + "', Password='" + password + "', Email='" + email + "', Phone='" + phone + "', Address=N'" + address + "', Role='" + role + "', UserState=" + userstate + " WHERE UserID=" + userid;
            dal.ExecuteNonQuery(sql);
        }

        public void DeleteUser(int userid)
        {
            string sql = "delete from Users where UserID='" + userid + "'";
            dal.ExecuteNonQuery(sql);
        }

        //lay du lieu do vao dropdrownlist khi tim kiem theo loai nguoi dung
        public DataTable SearchUserCategorys(string role)
        {
            string sql = "select * from Users WHERE Role='" + role+"'";
            DataTable dt = new DataTable();
            dt = dal.GetTable(sql);
            return dt;
        }
    }
}