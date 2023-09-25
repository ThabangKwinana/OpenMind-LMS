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
    public partial class updateAnnouncements : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdAnnBtn_Click(object sender, EventArgs e)
        {
            try
            {

                string sql = $"UPDATE AnnouncementsTB SET Event_Name = '{eventNameTxtBox.Text}', Event_Date = '{eventDateTxtBox.Text}', Event_Type = '{eventType.SelectedItem}', Event_Organiser = '{eventOrgTxtBox.Text.Trim()}'  WHERE Announcement_ID ='{annIDTxtBox.Text.Trim()}' ";

                update(sql);
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        private void update(string query)
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

                adpt = new SqlDataAdapter();
                adpt.UpdateCommand = cmd;
                adpt.UpdateCommand.ExecuteNonQuery();

                conn.Close();
                Response.Write("<script>alert('Announcement Updated Successfully');</script>");
                eventNameTxtBox.Text = "";
                eventDateTxtBox.Text = "";
                eventOrgTxtBox.Text = "";
                eventType.SelectedIndex = -1;
                annIDTxtBox.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}