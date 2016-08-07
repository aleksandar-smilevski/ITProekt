using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
            if(!IsPostBack)
            {
                fillProcessors();
            }
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[1] { new DataColumn("ImageUrl") });
            dt.Rows.Add("http://static.flickr.com/66/199481236_dc98b5abb3_s.jpg");
            dt.Rows.Add("http://static.flickr.com/75/199481072_b4a0d09597_s.jpg");
            dt.Rows.Add("http://static.flickr.com/57/199481087_33ae73a8de_s.jpg");
            dt.Rows.Add("http://static.flickr.com/77/199481108_4359e6b971_s.jpg");
            dt.Rows.Add("http://static.flickr.com/58/199481143_3c148d9dd3_s.jpg");
            dt.Rows.Add("http://static.flickr.com/72/199481203_ad4cdcf109_s.jpg");
            dt.Rows.Add("http://static.flickr.com/58/199481218_264ce20da0_s.jpg");
            dt.Rows.Add("http://static.flickr.com/69/199481255_fdfe885f87_s.jpg");
            dt.Rows.Add("http://static.flickr.com/60/199480111_87d4cb3e38_s.jpg");
            dt.Rows.Add("http://static.flickr.com/70/229228324_08223b70fa_s.jpg");
            //rptImages.DataSource = dt;
            //rptImages.DataBind();
        }

        protected void fillProcessors()
        {
            ddlProcessors.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.Processors";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Processors");
                ddlProcessors.DataValueField = "Id";
                ddlProcessors.DataTextField = "Name";
                ddlProcessors.DataSource = ds.Tables["Processors"];
    
                ddlProcessors.DataBind();
            }
            catch(Exception err)
            {
                lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        protected void ddlProcessors_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlProcessor.Visible = true;
            selectProcessor(ddlProcessors.SelectedValue);
            if(ddlProcessors.SelectedItem.Text.Contains("Intel"))
            {
                imgLogo.ImageUrl = "~/Styles/img/intel-logo.png";
            } 
            else
            {
                imgLogo.ImageUrl = "~/Styles/img/amd-logo.png";
            }
        }

        public void selectProcessor(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM Processors WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if(reader.Read())
                {
                    processorNameResult.Text = reader["Name"].ToString();
                    coresResult.Text = reader["Cores"].ToString();
                    threadsResult.Text = reader["Threads"].ToString();
                    clockResult.Text = reader["Clock"].ToString();
                    cacheResult.Text = reader["Cache"].ToString();
                    processorScoreResult.Text = reader["Score"].ToString();
                    processorStockResult.Text = reader["Stock"].ToString();
                    processorPriceResult.Text = reader["Price"].ToString();
                }
            }
            catch (Exception err)
            {
                lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string insertSQL = "INSERT INTO Orders (userid, orderContent) VALUES (@userid, @orderContent)";
        //    string connectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connectionString);
        //    SqlCommand cmd = new SqlCommand(insertSQL, con);
        //    cmd.Parameters.AddWithValue("@userid", Convert.ToInt32(Session["id"].ToString()));
        //    cmd.Parameters.AddWithValue("@orderContent", TextBox1.Text);
        //    try
        //    {
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //    }
        //    catch(Exception err)
        //    {
        //        Label1.Text = err.Message;
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }
        //}
    }
}