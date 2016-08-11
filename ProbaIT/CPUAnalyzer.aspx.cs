using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;


namespace ProbaIT
{
    public partial class CPUAnalyzer : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                loadProcessorProducts();
            }
            else
            {
                processors.DataSource = ViewState["data"];
                processors.DataBind();
            }
           

        }

        public void loadProcessorProducts() {

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            String querry = "SELECT id, Name FROM Processors";
            SqlCommand command = new SqlCommand(querry, connection);
            SqlDataAdapter adapter = new SqlDataAdapter();

            adapter.SelectCommand = command;
            DataSet data = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(data, "Processors");
                processors.DataSource = data;
                processors.DataBind();
                processors2.DataSource = data;
                processors2.DataBind();

                ViewState["data"] = data;


            }
            catch (Exception err)
            {
                //  errMsg.Text= err.Message;


            }
            finally
            {
                connection.Close();

            }
        }

       

        protected void BtnBack_Click(object sender, EventArgs e)
        {
           
                Response.Redirect("CPUAnalyzer.aspx");
            
        }

        protected void BtnCompare_Click(object sender, EventArgs e)
        {
            Response.Redirect("CPUPerformance.asmx");
        }

       

       

        protected void processors_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
    
}