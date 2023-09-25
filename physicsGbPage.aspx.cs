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
    public partial class physicsGbPage : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        DataSet ds;
        string type;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                learnerIDTxtBox.Text = "";
                testRB.Checked = false;
                assignRB.Checked = false;
            }
        }

        protected void requestMarkBtn_Click(object sender, EventArgs e)
        {
            
            
        }


        protected void testRB_CheckedChanged(object sender, EventArgs e)
        {
            if (testRB.Checked == true)
            {
                type = "Tests";
            }

            if(assignRB.Checked == true)
            {
                type = "Assignments";
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
                    Response.Write("<script>alert('Connection Successfully');</script>");
                }

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                PhysicsGridView.DataSource = ds;
                PhysicsGridView.DataBind();

                // close the connection
                conn.Close();

                learnerIDTxtBox.Text = "";
                testRB.Checked = false;
                assignRB.Checked = false;
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void requestMarkBtn_Click1(object sender, EventArgs e)
        {
            if (type == "Tests")
            {
                string sql = $"SELECT Learner_ID, Test1_Mark, Test2_Mark, Test3_Mark FROM PhysicsGbTB WHERE Learner_ID = '{learnerIDTxtBox.Text.Trim()}'";
                display(sql);
            }

            if (type == "Assignments")
            {
                string sql = $"SELECT Learner_ID, Ass1_Mark, Ass2_Mark, Ass3_Mark FROM PhysicsGbTB WHERE Learner_ID = '{learnerIDTxtBox.Text.Trim()}'";
                display(sql);
            }
        }
    }
}