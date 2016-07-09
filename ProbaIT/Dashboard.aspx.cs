using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProbaIT
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insertSQL = "INSERT INTO Orders (userid, orderContent) VALUES (@userid, @orderContent)";
            string connectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            cmd.Parameters.AddWithValue("@userid", Convert.ToInt32(Session["id"].ToString()));
            cmd.Parameters.AddWithValue("@orderContent", TextBox1.Text);
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
        }
    }
}