using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OpenMind
{
    public partial class MathsMarksManagement : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadAll();
            }
        }

        protected void UpdMarkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateMathsPage.aspx");
        }

        protected void DelMarkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteMathsPage.aspx");
        }

        protected void displayBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = $"SELECT * FROM MathsGBTb";
                display(sql);
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = $"SELECT * FROM MathsGBTb WHERE Learner_ID LIKE '%{learnerID.Text.Trim()}%'";
                display(sql);
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void loadAll()
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                string query = "SELECT * FROM MathsGbTB";

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                mathsMarksGd.DataSource = ds;
                mathsMarksGd.DataBind();

                // close the connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void display(string query)
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                mathsMarksGd.DataSource = ds;
                mathsMarksGd.DataBind();

                // close the connection
                conn.Close();
                learnerID.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}