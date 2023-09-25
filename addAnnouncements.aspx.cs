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
    public partial class addAnnouncements : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddAnnBtn_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                    Response.Write("<script>alert('Connection Opened');</script>");
                }

                String date = eventDateTxtBox.Text.Trim();

                DateTime eventDate = Convert.ToDateTime(date);

                string sql = $"INSERT INTO AnnouncementsTB(Event_Name, Event_Type, Event_Date, Event_Organiser, AdminID) " +
                    $"VALUES('{eventNameTxtBox.Text.Trim()}', '{eventTypeList.SelectedItem.Value}', '{eventDate}', '{eventOrgTxtBox.Text.Trim()}', '{adminIDTxtBox.Text.Trim()}')";

               
                addToDb(sql);

            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        private void addToDb(string query)
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
                adpt.InsertCommand = cmd;
                adpt.InsertCommand.ExecuteNonQuery();

                // close the connection
                conn.Close();

                eventNameTxtBox.Text = "";
                eventDateTxtBox.Text = "";
                eventOrgTxtBox.Text = "";
                eventTypeList.SelectedIndex = -1;
                adminIDTxtBox.Text = "";

                Response.Write("<script>alert('Announcement Added Successfully');</script>");
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}