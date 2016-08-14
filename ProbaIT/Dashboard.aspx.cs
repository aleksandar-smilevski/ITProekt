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
                fillMotherboards();
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
                //lblErr.Text = err.Message;
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
                    double stars = Convert.ToDouble(reader["Score"].ToString()) / 10.0;
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
                //lblErr.Text = err.Message;
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
                star.ImageUrl = "Styles/img/star1.png";
                star.Width = Unit.Pixel(15);
                star.Height = Unit.Pixel(15);
                pnlStars.Controls.Add(star);
            }
            for (int i = count; i < 10; i++)
            {
                star = new Image();
                star.ImageUrl = "Styles/img/empty-star1.png";
                star.Width = Unit.Pixel(15);
                star.Height = Unit.Pixel(15);
                pnlStars.Controls.Add(star);
            }
        }

        protected void fillMotherboards()
        {
            ddlMotherboards.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.Motherboards";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Motherboards");
                ddlMotherboards.DataValueField = "Id";
                ddlMotherboards.DataTextField = "Name";
                ddlMotherboards.DataSource = ds.Tables["Motherboards"];

                ddlMotherboards.DataBind();
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        protected void ddlMotherboards_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlProcessor.Visible = true;
            selectMotherboard(ddlMotherboards.SelectedValue);

        }

        public void selectMotherboard(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM Motherboards WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    motherboardNameResult.Text = reader["Name"].ToString();
                    descResult.Text = reader["Description"].ToString();
                    stockMotherboardsResult.Text = reader["Stock"].ToString();
                    motherboardsPriceResult.Text = reader["Price"].ToString() + " MKD";
                }
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
            }
        }

    }
}