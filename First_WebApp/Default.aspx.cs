using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace First_WebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string Name = txtName.Text;
            string Password = txtpass.Text;
            string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\ASP.NET\First_WebApp\App_Data\Customer.mdf;Integrated Security=True";
              
            SqlConnection con = new SqlConnection(constr);
            string query = "select * from Cust where name = '" + Name +"' and password = ' " + Password + " '";
            lblmessage.Text = query;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read()) 
            {
                Session["Name"] = txtName.Text;
                Response.Write("Home.aspx");
            }
            else
            {
                Response.Write("Reenter");
            }

            con.Close();
               
        }
    }
}