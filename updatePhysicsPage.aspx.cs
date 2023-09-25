﻿using System;
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
    public partial class PhysicsGbManagement : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        DataSet ds;
        int assignNum, testNum;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
            else
            {
                display();
            }
           
        }

        protected void UpdMarkBtn_Click(object sender, EventArgs e)
        {


            try
            {
                int assignMark;
                int testMark;

                Response.Write("<script>alert('" + assignNum + "');</script>");

                if (assignNum == 1)
                {
                    if (int.TryParse(assignMarkTxtBox.Text.Trim(), out assignMark))
                    {
                        if (assignMark < 100 && assignMark > 0)
                        {
                            string sql = $"UPDATE PhysicsGbTB SET Ass1_Mark = '{assignMark}', Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' WHERE Learner_ID = '{learnerIdTxtBox.Text.Trim()}'";
                            update(sql);
                            display();
                        }
                        else 
                        {
                            Response.Write("<script>alert('Assignment Mark is out range. Assignmnet Mark must be 1 - 100 ');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Assignment is invalid. it must be numeric');</script>");
                    }
                }

                if (assignNum == 2)
                {
                    if (int.TryParse(assignMarkTxtBox.Text.Trim(), out assignMark))
                    {
                        if (assignMark < 100 && assignMark > 0)
                        {
                            string sql = $"UPDATE PhysicsGbTB SET Ass2_Mark = '{assignMark}', Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' WHERE Learner_ID = '{learnerIdTxtBox.Text.Trim()}'";
                            update(sql);
                            display();
                        }
                        else
                        {
                            Response.Write("<script>alert('Assignment Mark is out range. Assignmnet Mark must be 1 - 100 ');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Assignment is invalid. it must be numeric');</script>");
                    }
                }

                if (assignNum == 3)
                {
                    if (int.TryParse(assignMarkTxtBox.Text.Trim(), out assignMark))
                    {
                        if (assignMark < 100 && assignMark > 0)
                        {
                            string sql = $"UPDATE PhysicsGbTB SET Ass3_Mark = '{assignMark}', Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' WHERE Learner_ID = '{learnerIdTxtBox.Text.Trim()}'";
                            update(sql);
                            display();
                        }
                        else
                        {
                            Response.Write("<script>alert('Assignment Mark is out range. Assignmnet Mark must be 1 - 100 ');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Assignment is invalid. it must be numeric');</script>");
                    }
                }

                if (testNum == 1)
                {
                    if (int.TryParse(testMarkTextBox.Text.Trim(), out testMark))
                    {
                        if (testMark < 100 && testMark > 0)
                        {
                            string sql = $"UPDATE PhysicsGbTB SET Test1_Mark = '{testMark}', Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' WHERE Learner_ID = '{learnerIdTxtBox.Text.Trim()}'";
                            update(sql);
                            display();
                        }
                        else
                        {
                            Response.Write("<script>alert('Test  Mark is out range. Assignmnet Mark must be 1 - 100 ');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Test  is invalid. it must be numeric');</script>");
                    }
                }

                if (testNum == 2)
                {
                    if (int.TryParse(testMarkTextBox.Text.Trim(), out testMark))
                    {
                        if (testMark < 100 && testMark > 0)
                        {
                            string sql = $"UPDATE PhysicsGbTB SET Test2_Mark = '{testMark}', Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' WHERE Learner_ID = '{learnerIdTxtBox.Text.Trim()}'";
                            update(sql);
                            display();
                        }
                        else
                        {
                            Response.Write("<script>alert('Test  is out range. Assignmnet Mark must be 1 - 100 ');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Test  is invalid. it must be numeric');</script>");
                    }
                }

                if (testNum == 3)
                {
                    if (int.TryParse(testMarkTextBox.Text.Trim(), out testMark))
                    {
                        if (testMark < 100 && testMark > 0)
                        {
                            string sql = $"UPDATE PhysicsGbTB SET Test3_Mark = '{testMark}', Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' WHERE Learner_ID = '{learnerIdTxtBox.Text.Trim()}'";
                            update(sql);
                            display();
                        }
                        else
                        {
                            Response.Write("<script>alert('Test Mark is out range. Assignmnet Mark must be 1 - 100 ');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Test  is invalid. it must be numeric');</script>");
                    }
                }
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void DelMarkBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deletePhysicsPage.aspx");
        }

        protected void Test1_CheckedChanged1(object sender, EventArgs e)
        {
            if (Test1.Checked == true)
            {
                testNum = 1;
            }

            if (Test2.Checked == true)
            {
                testNum = 2;
            }

            if (Test3.Checked == true)
            {
                testNum = 3;
            }
        }


        public void display()
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                     conn.Open();
                }

                string query = "SELECT * FROM PhysicsGbTB";

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                //PhysicsMarks.DataSource = ds;
                //PhysicsMarks.DataBind();

                // close the connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display the error
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
                Response.Write("<script>alert('Learner Mark Updated Successfully');</script>");

                Assign1.Checked = false;
               Assign2.Checked = false;
               Assign3.Checked = false;

               Test1.Checked = false;
               Test2.Checked = false;
               Test3.Checked = false;

               assignMarkTxtBox.Text = "";
               teacherIdTxtBox.Text = "";
               learnerIdTxtBox.Text = "";
               testMarkTextBox.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void Assign1_CheckedChanged1(object sender, EventArgs e)
        {
            if (Assign1.Checked == true)
            {
                assignNum = 1;
            }

            if (Assign2.Checked == true)
            {
                assignNum = 2;
            }

            if (Assign3.Checked == true)
            {
                assignNum = 3;
            }
        }

        


    }
}