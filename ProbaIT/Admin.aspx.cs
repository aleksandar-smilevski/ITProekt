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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                loadProcessors();

            }

          
        }
        public void loadProcessors()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "SELECT Id, Name, Cores , Threads , Clock , Cache , Score , Stock, Price FROM dbo.Processors";
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                adapter.Fill(ds, "Processors");

                gvProcessors.DataSource = ds.Tables["Processors"];

                gvProcessors.DataBind();

                ViewState["Processors"] = ds;
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

        protected void gvProcessors_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Processors"];
            gvProcessors.EditIndex = e.NewEditIndex;
            gvProcessors.DataSource = ds;
            gvProcessors.DataBind();
            UpdatePanel1.Update();
        }

        protected void gvProcessors_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            DataSet ds = (DataSet)ViewState["Processors"];
            gvProcessors.EditIndex = -1;
            gvProcessors.DataSource = ds;
            gvProcessors.DataBind();
            UpdatePanel1.Update();
        }

        protected void gvProcessors_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "UPDATE Processors SET   Name = @name, Cores = @cores , Threads = @threads , Clock = @clock , Cache = @cache , Score = @score, Stock = @stock, Price = @price WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);

            TextBox tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[1].Controls[0];
            command.Parameters.AddWithValue("@name", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[2].Controls[0];
            command.Parameters.AddWithValue("@cores", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[3].Controls[0];
            command.Parameters.AddWithValue("@threads", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[4].Controls[0];
            command.Parameters.AddWithValue("@clock", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[5].Controls[0];
            command.Parameters.AddWithValue("@cache", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[6].Controls[0];
            command.Parameters.AddWithValue("@score", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[7].Controls[0];
            command.Parameters.AddWithValue("@stock", tb.Text);

             tb = (TextBox)gvProcessors.Rows[e.RowIndex].Cells[8].Controls[0];
            command.Parameters.AddWithValue("@price", tb.Text);

            command.Parameters.AddWithValue("@id", gvProcessors.Rows[e.RowIndex].Cells[0].Text);

            int done = 0;
        
            try
            {
                connection.Open();
                done = command.ExecuteNonQuery();

               
            }
            catch (Exception err)
            {
                //lblErr.Text = err.Message;
            }
            finally
            {
                connection.Close();
                gvProcessors.EditIndex = -1;

            }
            if (done != 0)
                loadProcessors();
            UpdatePanel1.Update();

        }

        protected void gvProcessors_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
            gvProcessors.PageIndex = e.NewPageIndex;
            gvProcessors.SelectedIndex = -1;
            DataSet ds = (DataSet)ViewState["Processors"];
            gvProcessors.DataSource = ds;
            gvProcessors.DataBind();
            UpdatePanel1.Update();

        }
        protected void addNewProcessor()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "INSERT INTO Processors ( Name , Cores , Threads , Clock , Cache , Score , Stock , Price ) VALUES ( @name , @cores , @threads , @clock , @cache , @score , @stock , @price )";
            SqlCommand command = new SqlCommand(query, connection);

           
            command.Parameters.AddWithValue("@name", tbNameProc.Text);
            command.Parameters.AddWithValue("@cores",int.Parse( tbCoresProc.Text));
            command.Parameters.AddWithValue("@threads", int.Parse( tbThreadsProc.Text));
            command.Parameters.AddWithValue("@clock",  tbClockProc.Text);
            command.Parameters.AddWithValue("@cache", tbCacheProc.Text);
            command.Parameters.AddWithValue("@score", int.Parse( tbScoreProc.Text));
            command.Parameters.AddWithValue("@stock", int.Parse( tbStockProc.Text));
            command.Parameters.AddWithValue("@price",int.Parse(tbPriceProc.Text));

            int done = 0;

            try
            {
                

                connection.Open();
                done = command.ExecuteNonQuery();


            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine( err.Message);
            }
            finally
            {
                connection.Close();
               

            }
            
                loadProcessors();
            UpdatePanel1.Update();


        }
        public void cleanFields()
        {
            tbNameProc.Text = "";
            tbCoresProc.Text = "";
            tbThreadsProc.Text = "";
            tbClockProc.Text = "";
            tbCacheProc.Text = "";
            tbScoreProc.Text = "";
            tbStockProc.Text = "";
            tbPriceProc.Text = "";
            UpdatePanel1.Update();

        }

        protected void btnAddProc_Click(object sender, EventArgs e)
        {
            addNewProcessor();
            cleanFields();
        }

        protected void btnCancelProc_Click(object sender, EventArgs e)
        {
            cleanFields();
        }

        protected void gvProcessors_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ITProekt"].ConnectionString;
            string query = "DELETE FROM dbo.Processors WHERE Id = @id";
            SqlCommand command = new SqlCommand(query, connection);
            String tb = gvProcessors.Rows[e.RowIndex].Cells[0].Text;
            int id = int.Parse(tb);
            command.Parameters.AddWithValue("@id", id);
          
            DataSet ds = new DataSet();
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception err)
            {
                System.Diagnostics.Debug.WriteLine(err.Message);
            }
            finally
            {
                connection.Close();
            }
            loadProcessors();
            UpdatePanel1.Update();
        }
    }
}