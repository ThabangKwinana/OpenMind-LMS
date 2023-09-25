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
    public partial class registerLearner : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        string idCode;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regLearnerBtn_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                    Response.Write("<script>alert('Connection Opened');</script>");
                }

                string id = learnIdNumTextBx.Text.Trim();
                string name = learnerFirstNameTxtBox.Text.Trim();
                string lastName = learnerLastNameTxtBox.Text.Trim();
                Boolean isLett = false;

                string subName = name.Substring(0, 2);
                string subLast = lastName.Substring(0, 2);

                if (id.Length < 13 || id.Length > 13)
                {
                    Response.Write("<script>alert('ID number invalid');</script>");
                }
                else
                {
                    for (int i = 0; i < id.Length; i++)
                    {
                        if (char.IsLetter(id[i]))
                        {
                            isLett = true;
                            break;
                        }
                        else
                        {
                            isLett = false;
                        }
                    }

                    if (isLett)
                    {
                        Response.Write("<script>alert('ID number invalid');</script>");
                    }
                    else
                    {
                        Boolean match = false;

                        Random num = new Random();

                        int code = num.Next(1000, 9999);

                        idCode = subName.ToUpper() + subLast.ToUpper() + code.ToString();;

                        match = validate(idCode);

                        if(match == true)
                        {
                            do
                            {
                                if (match == true)
                                {
                                    code = num.Next(1000, 9999);

                                    id = subName.ToUpper() + subLast.ToUpper() + code.ToString();
                                    match = validate(id);
                                }

                            } while (match == true);
                        }


                        if (match == false)
                        {
                            try
                            {
                                conn = new SqlConnection(conStr);

                                if (conn.State == ConnectionState.Closed)
                                {
                                    conn.Open();
                                }

                                string sql = $"INSERT INTO LearnerTB(Learner_ID, Password, Fname, Lname, ID_Num, Email_Address, Teacher_ID) VALUES('{idCode}', '{passwordTxtBox.Text}'," +
                                    $" '{name}', '{lastName}', '{id}',  '{learnEmailTxtBox.Text}', '{classTeacherTxtBox.Text}')";

                                string query = $"INSERT INTO EnglishGbTB(Learner_ID) VALUES('{idCode}')";
                                string sqlQuery = $"INSERT INTO PhysicsGbTB(Learner_ID) VALUES('{idCode}')";
                                string sql_Query = $"INSERT INTO MathsGbTB(Learner_ID) VALUES('{idCode}')";


                                addToDb(sql);

                                addLearnToEngTb(query);
                                addLearnToPhysicsTb(sqlQuery);
                                addLearnToMathsTb(sql_Query);
                            }
                            catch (SqlException ex)
                            {
                                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                            }
                            
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public Boolean validate(string id)
        {
            try
            {
                // declaring connection
                SqlConnection conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                // declaration of the sql query string
                string sql = $"SELECT count(*) FROM LearnerTB WHERE Learner_ID = '{id}'";

                // instantiating the command query 
                cmd = new SqlCommand(sql, conn);

                adpt = new SqlDataAdapter();




                // converting the query results
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                // checking for the match
                if (temp == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                // Close connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
                return false;
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

                Response.Write("<script>alert('Learner Registered Successfully, Click OK to view Leaner Username');</script>");
                Response.Write("<script>alert('" + idCode + "');</script>");
                learnerFirstNameTxtBox.Text = "";
                learnerLastNameTxtBox.Text = "";
                learnIdNumTextBx.Text = "";
                learnEmailTxtBox.Text = "";
                classTeacherTxtBox.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void addLearnToEngTb(string query)
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

                Response.Write("<script>alert('Learner Added Successfully To English Database');</script>");

            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void addLearnToPhysicsTb(string query)
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

                Response.Write("<script>alert('Learner Added Successfully To Physics Database');</script>");

            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void addLearnToMathsTb(string query)
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

                Response.Write("<script>alert('Learner Added Successfully To Mathematics Database');</script>");
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}