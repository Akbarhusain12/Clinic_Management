using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Clinic_Management.Modules
{
    public class Functions
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private string conStr;
        private SqlDataAdapter sda;
        public Functions() {
            conStr = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|Clinic.mdf;Integrated Security=True;User Instance=True";
            con = new SqlConnection(conStr);
            cmd = new SqlCommand();
            cmd.Connection = con;
        
        }


        public int SetDatas(String sql)
        {
            int cnt = 0;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = sql;
            cnt = cmd.ExecuteNonQuery();
            con.Close();
            return cnt;
        }

        public DataTable GetDatas(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query,conStr);
            sda.Fill(dt);
            return dt;

        }
    }
}