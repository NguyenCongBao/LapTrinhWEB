using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Lop_DAL
    {
        public SqlConnection GetConnect()
        {
            return new SqlConnection(@"Data Source=DESKTOP-4S7NRSE;Initial Catalog=Shop25n;Integrated Security=True");
            //Data Source=DESKTOP-4S7NRSE;Initial Catalog=Shop24h;Integrated Security=True
            //Data Source=LONGLD\LLD;Initial Catalog=Shop24h;Integrated Security=True
        }

        public DataTable GetTable(string sql)
        {
            SqlConnection conn = GetConnect();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql,conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void ExecuteNonQuery(string sql)
        {
            SqlConnection conn = GetConnect();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql,conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
        }
    }
}
