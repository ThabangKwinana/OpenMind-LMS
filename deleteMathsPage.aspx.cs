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
    public partial class deleteMathsPage : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dltLearnBtn_Click(object sender, EventArgs e)
        {

            try
            {
                string sql = $"DELETE FROM MathsGbTB  WHERE Learner_ID = '{learnerIDTxtBox.Text.Trim()}' ";

                delLearnMarks(sql);
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        private void delLearnMarks(string query)
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                    Response.Write("<script>alert('Connection Opened');</script>");
                }


                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                adpt.DeleteCommand = cmd;
                adpt.DeleteCommand.ExecuteNonQuery();


                // close the connection
                conn.Close();

                Response.Write("<script>alert('Learners Marks Record Deleted Successfully');</script>");
                learnerIDTxtBox.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}