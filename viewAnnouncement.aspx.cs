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
    public partial class viewAnnouncement : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataReader read;
        String fmt = "{0, -20}{1, -20}";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                displayEventNames();
            }
           
        }

        protected void eventsNamesListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(eventsNamesListBox.SelectedIndex != 1)
            {
                string name = eventsNamesListBox.SelectedValue.ToString();

                Response.Write("<script>alert('" + name + "');</script>");

                string sql = $"SELECT * FROM AnnouncementsTB WHERE Event_Name = '{name}'";

                displayEventDetaikls(sql);

            }
        }

        private void displayEventNames()
        {
            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                string sql = "SELECT * FROM AnnouncementsTB";

                cmd = new SqlCommand(sql, conn);
                read = cmd.ExecuteReader();

                

                while (read.Read())
                {
                    eventsNamesListBox.Items.Add(read.GetValue(3).ToString());
                }

                conn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        private void displayEventDetaikls(string query)
        {
            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                    Response.Write("<script>alert('Connection Opened');</script>");
                }

                

                cmd = new SqlCommand(query, conn);
                read = cmd.ExecuteReader();

                eventsDetailsListBox.Items.Add("Event Name\t\t Event Type\t\t Event Date\t\t Event Organiser");

                while (read.Read())
                {
                    eventsDetailsListBox.Items.Add(read.GetValue(1).ToString() + "\t\t" + read.GetValue(2).ToString() + "\t\t" + read.GetValue(3).ToString() + "\t\t" + read.GetValue(4).ToString());
                }

                conn.Close();

                eventsNamesListBox.Items.Clear();
                displayEventNames();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void theCalendar_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void viewBtn_Click(object sender, EventArgs e)
        {
            string tempDate = eventDateTime.Text;

            DateTime date = Convert.ToDateTime(tempDate);

            theCalendar.SelectedDate = date;

            eventsDetailsListBox.Items.Clear();
            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                    Response.Write("<script>alert('Connection Opened');</script>");
                }


                string sql = $"SELECT * FROM AnnouncementsTB WHERE Event_Date = '{date}'";
                cmd = new SqlCommand(sql, conn);
                read = cmd.ExecuteReader();

                eventsDetailsListBox.Items.Add("Event Name" + "                  " + "Event Type"  + "                   " + "Event Organiser");
                eventsDetailsListBox.Items.Add("\n----------------------------------------------------------------");
                while (read.Read())
                {
                    eventsDetailsListBox.Items.Add(read.GetValue(1).ToString() + "\t\t\t\t" + read.GetValue(2).ToString() +  "\t\t\t\t" + read.GetValue(4).ToString());
                }



                conn.Close();

                eventsNamesListBox.Items.Clear();
                displayEventNames();
                eventDateTime.Text = "";
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}