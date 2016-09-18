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
            string selectSQL = "SELECT username FROM Users WHERE username=@username";
            string connectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlCommand insertCMD = new SqlCommand(insertSQL, con);
            cmd.Parameters.AddWithValue("@username", TxtUsername.Text);
            insertCMD.Parameters.AddWithValue("@username", TxtUsername.Text);
            insertCMD.Parameters.AddWithValue("@password", CalculateMD5Hash(TxtPassword.Text));
            insertCMD.Parameters.AddWithValue("@type", "user");
            insertCMD.Parameters.AddWithValue("@firstname", TxtFirstName.Text);
            insertCMD.Parameters.AddWithValue("@lastname", TxtLastName.Text);
            insertCMD.Parameters.AddWithValue("@email", TxtEmail.Text);
            bool valid = true;
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    if (reader["username"] != null)
                    {
                        valid = false;
                    }
                }
                if (valid)
                {
                    reader.Close();
                    insertCMD.ExecuteNonQuery();
                }
            }
            catch (Exception err)
            {
                Label1.Text = err.Message;
            }
            finally
            {
                con.Close();
            }
            if (!valid)
            {
                Label1.Text = "A user with that username already exists";
            }

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