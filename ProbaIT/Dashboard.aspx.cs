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
                    double stars = int.Parse(reader["Score"].ToString()) / 100.0;
                    int numStars = Convert.ToInt32(stars);
                    addStar(numStars);
                    if (Convert.ToInt32(reader["Stock"]) > 1)
                    {
                        processorStockResult.Text = "Yes";
                    }
                    else
                    {
                        processorStockResult.Text = "No";
                    }
                    processorPriceResult.Text = reader["Price"].ToString() + " MKD";
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
        
        protected void addStar(int count)
        {
            Image star;
            for (int i = 0; i < count; i++)
            {
                star = new Image();
                star.ImageUrl = "Styles/img/star.png";
                star.Width = Unit.Pixel(15);
                star.Height = Unit.Pixel(15);
                pnlStars.Controls.Add(star);
            }
            for (int i = count; i < 10; i++)
            {
                star = new Image();
                star.ImageUrl = "Styles/img/empty-star.png";
                star.Width = Unit.Pixel(15);
                star.Height = Unit.Pixel(15);
                pnlStars.Controls.Add(star);
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