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
                fillGraphicsCards();
                fillHardDrives();
                fillRAM();
                fillPowerUnits();
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

        protected void fillPowerUnits()
        {
            ddlPowerUnits.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.PowerUnits";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "PowerUnits");
                ddlPowerUnits.DataValueField = "Id";
                ddlPowerUnits.DataTextField = "Name";
                ddlPowerUnits.DataSource = ds.Tables["PowerUnits"];

                ddlPowerUnits.DataBind();
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

        public void selectPowerUnit(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.PowerUnits WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    powerUnitNameResult.Text = reader["Name"].ToString();
                    powerUnitsDescResult.Text = reader["Description"].ToString();
                    powerUnitsStockResult.Text = reader["Stock"].ToString();
                    powerUnitsPriceResult.Text = reader["Price"].ToString() + " MKD";
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

        protected void ddlPowerUnits_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectPowerUnit(ddlPowerUnits.SelectedValue);
        }

        protected void fillGraphicsCards()
        {
            ddlGraphicsCards.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.GraphicsCards";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "GraphicsCards");
                ddlGraphicsCards.DataValueField = "Id";
                ddlGraphicsCards.DataTextField = "Name";
                ddlGraphicsCards.DataSource = ds.Tables["GraphicsCards"];

                ddlGraphicsCards.DataBind();
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

        public void selectGraphicsCard(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.GraphicsCards WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    graphicsCardNameResult.Text = reader["Name"].ToString();
                    graphicsCardDescResult.Text = reader["Description"].ToString();
                    graphicsCardStockResult.Text = reader["Stock"].ToString();
                    graphicsCardPriceResult.Text = reader["Price"].ToString() + " MKD";
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

        protected void ddlGraphicsCards_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectGraphicsCard(ddlGraphicsCards.SelectedValue);
        }

        protected void fillRAM()
        {
            ddlRAM.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.RAMS";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "RAM");
                ddlRAM.DataValueField = "Id";
                ddlRAM.DataTextField = "Name";
                ddlRAM.DataSource = ds.Tables["RAM"];

                ddlRAM.DataBind();
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

        public void selectRAM(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.RAMS WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    lblRAMNameResult.Text = reader["Name"].ToString();
                    RAMDescResult.Text = reader["Description"].ToString();
                    RAMStockResult.Text = reader["Stock"].ToString();
                    RAMPriceResult.Text = reader["Price"].ToString() + " MKD";
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

        protected void ddlRAM_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectRAM(ddlRAM.SelectedValue);
        }


        protected void fillHardDrives()
        {
            ddlHardDrives.Items.Clear();
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name FROM dbo.HDDS";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "HDD");
                ddlHardDrives.DataValueField = "Id";
                ddlHardDrives.DataTextField = "Name";
                ddlHardDrives.DataSource = ds.Tables["HDD"];

                ddlHardDrives.DataBind();
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

        public void selectHardDrive(string id)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT * FROM dbo.HDDS WHERE Id='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    hardDriveNameResult.Text = reader["Name"].ToString();
                    hardDriveDescResult.Text = reader["Description"].ToString();
                    hardDriveStockResult.Text = reader["Stock"].ToString();
                    hardDrivePriceResult.Text = reader["Price"].ToString() + " MKD";
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

        protected void ddlHardDrives_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectHardDrive(ddlHardDrives.SelectedValue);
        }

    }
}