using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace ProbaIT
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insertSQL = "INSERT INTO Users (username, password, type, firstname, lastname, email) VALUES (@username, @password, @type, @firstname, @lastname ,@email)";
            string connectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", CalculateMD5Hash(TextBox2.Text));
            cmd.Parameters.AddWithValue("@type", "user");
            cmd.Parameters.AddWithValue("@firstname", TextBox5.Text);
            cmd.Parameters.AddWithValue("@lastname", TextBox4.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch(Exception err)
            {
                Label1.Text = err.Message;
            }
            finally
            {
                con.Close();
            }
                Response.Redirect("SignIn.aspx");
            
        }
        public string CalculateMD5Hash(string input)
        {

            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }
}