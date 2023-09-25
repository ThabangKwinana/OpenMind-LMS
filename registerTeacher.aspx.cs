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
    public partial class registerTeacher : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        string idCode;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regTeachBtn_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();

                    Response.Write("<script>alert('Connection Opened');</script>");
                }
                string id = teachIdTextBx.Text.Trim();
                string name = teachFirstNameTxtBox.Text.Trim();
                string lastName = teachLastNameTxtBox.Text.Trim();
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

                        int code = num.Next(100, 999);

                        idCode = subName.ToUpper() + subLast.ToUpper() + code.ToString();

                        match = validate(idCode);

                        if (match == true)
                        {
                            do
                            {
                                if (match == true)
                                {
                                    code = num.Next(100, 999);

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

                                string sql = $"INSERT INTO TeacherTB(Teacher_ID, Password, Fname, Lname, ID_Num, Subject, Email_Address)" +
                                    $" VALUES('{idCode}', '{passwordTxtBox.Text}', '{name}', '{lastName}', '{id}', '{subjectTeachTxtBox.Text}',  '{teachEmailTxtBox.Text}')";

                                addToDb(sql);
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
                //conn.Close();
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

                Response.Write("<script>alert('Teacher Registrated Successfully, the teacher username will be displayed after');</script>");
                Response.Write("<script>alert('" + idCode + "');</script>");
                teachFirstNameTxtBox.Text = "";
                teachLastNameTxtBox.Text = "";
                teachIdTextBx.Text = "";
                teachEmailTxtBox.Text = "";
                subjectTeachTxtBox.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}