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
    public partial class MathsReportPage : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        DataSet ds;
        int termNum, num;
        string reportType, filterTy;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            generateReport.Enabled = false;
        }

        

        protected void generateReport_Click(object sender, EventArgs e)
        {
            string textfile = string.Empty;

            foreach (TableCell tcell in reportGridView.HeaderRow.Cells)
            {
                textfile += tcell.Text + "\t\t";
            }

            textfile +=  "\r\n";

            foreach (GridViewRow row in reportGridView.Rows)
            {
                foreach (TableCell rowcell in row.Cells)
                {
                    textfile += rowcell.Text + "\t\t";
                }
                textfile += "\r\n";
            }

            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("Content-disposition", "attachment; filename=CroxleyReport.txt");
            Response.Charset = "";
            Response.ContentType = "application/text";

            Response.Output.Write(textfile);
            Response.Flush();
            Response.End();
        
    }

        protected void reportOnscreen_Click(object sender, EventArgs e)
        {
            generateReport.Enabled = true;

            if (termNum == 1)
            {
                if (reportType == "Test")
                {
                    if (filterTy == "Highest to Lowest")
                    {
                        if (num == 1)
                        {
                            try
                            {
                                string sql = $"SELECT Learner_ID, Test1_Mark FROM MathsGbTb ORDER BY Test1_Mark DESC";

                                display(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 2)
                        {
                            try
                            {
                                string sql = $"SELECT Learner_ID, Test2_Mark FROM MathsGbTb ORDER BY Test2_Mark DESC";

                                display(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 3)
                        {
                            try
                            {
                                string sql = $"SELECT Learner_ID, Test3_Mark FROM MathsGbTb ORDER BY Test3_Mark DESC";

                                display(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }
                    }

                    if (filterTy == "Average")
                    {
                        if (num == 1)
                        {
                            try
                            {
                                string sql = $"SELECT AVG(Test1_Mark) FROM MathsGbTB";

                                displayAverage(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 2)
                        {
                            try
                            {
                                string sql = $"SELECT AVG(Test2_Mark) FROM MathsGbTB";

                                displayAverage(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 3)
                        {
                            try
                            {
                                string sql = $"SELECT AVG(Test3_Mark) FROM MathsGbTB";

                                displayAverage(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }
                    }
                }

                if (reportType == "Assignment")
                {
                    if (filterTy == "Highest to Lowest")
                    {
                        if (num == 1)
                        {
                            try
                            {
                                string sql = $"SELECT Learner_ID, Ass1_Mark FROM MathsGbTb ORDER BY Ass1_Mark DESC";

                                display(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 2)
                        {
                            try
                            {
                                string sql = $"SELECT Learner_ID, Ass2_Mark FROM MathsGbTb ORDER BY Ass2_Mark DESC";

                                display(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 3)
                        {
                            try
                            {
                                string sql = $"SELECT Learner_ID, Ass3_Mark FROM MathsGbTb ORDER BY Ass3_Mark DESC";

                                display(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }
                    }

                    if (filterTy == "Average")
                    {
                        if (num == 1)
                        {
                            try
                            {
                                string sql = $"SELECT AVG(Ass1_Mark) FROM MathsGbTB";

                                displayAverage(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 2)
                        {
                            try
                            {
                                string sql = $"SELECT AVG(Ass2_Mark) FROM MathsGbTB";

                                displayAverage(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }

                        if (num == 3)
                        {
                            try
                            {
                                string sql = $"SELECT AVG(Ass3_Mark) FROM MathsGbTB";

                                displayAverage(sql);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                        }
                    }
                }
            }
        }

        protected void rb1_CheckedChanged(object sender, EventArgs e)
        {
            if (rb1.Checked == true)
            {
                num = 1;
            }

            if (rb2.Checked == true)
            {
                num = 2;
            }

            if (rb3.Checked == true)
            {
                num = 3;
            }
        }

        protected void rbTest_CheckedChanged(object sender, EventArgs e)
        {
            if (rbTest.Checked == true)
            {
                reportType = "Test";
            }

            if (rbAssignment.Checked == true)
            {
                reportType = "Assignment";
            }
        }

        protected void filterType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (filterType.SelectedIndex != -1)
            {
                filterTy = filterType.SelectedItem.ToString();
            }
        }

        

        protected void rbTerm_CheckedChanged(object sender, EventArgs e)
        {
            if (rbTerm.Checked == true)
            {
                termNum = 1;
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

                reportGridView.DataSource = ds;
                reportGridView.DataBind();

                // close the connection
                conn.Close();
                rb1.Checked = false;
                rb2.Checked = false;
                rb3.Checked = false;
                rbAssignment.Checked = false;
                rbTest.Checked = false;
                filterType.SelectedIndex = -1;
                rbTerm.Checked = false;
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void displayAverage(string query)
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

                reportGridView.DataSource = ds;
                reportGridView.DataBind();

                reportGridView.HeaderRow.Cells[0].Text = "Average";

                // close the connection
                conn.Close();
                rb1.Checked = false;
                rb2.Checked = false;
                rb3.Checked = false;
                rbAssignment.Checked = false;
                rbTest.Checked = false;
                filterType.SelectedIndex = -1;
                rbTerm.Checked = false;
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}