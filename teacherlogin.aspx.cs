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
    public partial class teacherlogin : System.Web.UI.Page
    {

        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {

            try
            {
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                string sql = $"SELECT * FROM TeacherTB WHERE Teacher_ID = '{teacherIdTxtBox.Text.Trim()}' AND Password = '{teacherPasswordTxtBox.Text.Trim()}'";
                cmd = new SqlCommand(sql, conn);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["Username"] = dr.GetValue(0).ToString();
                        Session["Role"] = "Teacher";
                    }
                    Response.Redirect("teacherPage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}