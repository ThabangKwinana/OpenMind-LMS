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
    public partial class maintainAnn : System.Web.UI.Page
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

        protected void addAnnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("addAnnouncements.aspx");
        }

        protected void UpdAnnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateAnnouncements.aspx");
        }

        protected void DelAnnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteAnnouncements.aspx");
        }

        protected void displayBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "SELECT * FROM AnnouncementsTB";
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
                string sql = $"SELECT * FROM AnnouncementsTB WHERE Event_Name LIKE '%{EventNameTxtBox.Text.Trim()}%'";
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

                string query = "SELECT * FROM AnnouncementsTB";

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                announcementsGridView.DataSource = ds;
                announcementsGridView.DataBind();

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

                announcementsGridView.DataSource = ds;
                announcementsGridView.DataBind();

                // close the connection
                conn.Close();
                EventNameTxtBox.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

      
    }
}