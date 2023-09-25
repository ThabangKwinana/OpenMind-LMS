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
    public partial class maintainTeachers : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        SqlDataAdapter adpt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadAll();
            }
           
        }

        protected void addTeacherBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("registerTeacher.aspx");
        }

        protected void UpdTeacherBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateTeachers.aspx");
        }

        protected void DelTeacherBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteTeachers.aspx");
        }

        protected void displayBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "SELECT * FROM TeacherTb";
                display(sql);
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = $"SELECT * FROM TeacherTb WHERE Teacher_ID LIKE '%{teacherID.Text.Trim()}%'";
                display(sql);
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        public void loadAll()
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                string query = "SELECT * FROM TeacherTb";

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                TeachersDetails.DataSource = ds;
                TeachersDetails.DataBind();

                // close the connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
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

                TeachersDetails.DataSource = ds;
                TeachersDetails.DataBind();

                // close the connection
                conn.Close();
                teacherID.Text = "";
            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

       
    }
}