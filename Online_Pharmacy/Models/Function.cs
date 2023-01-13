using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Online_Pharmacy.Models
{
    
    public class Function
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string Constring;

        public Function()
        {
            Constring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Goral\Documents\OnlineQuize.mdf;Integrated Security=True;Connect Timeout=30";
            con = new SqlConnection(Constring);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, Constring);
            sda.Fill(dt);
            return dt;
        }

        public int SetData(string Query)
        {
            int cnt = 0;
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            con.Close();
            return cnt;
        }
    }
}