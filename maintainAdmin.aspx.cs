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
    public partial class maintainAdmin : System.Web.UI.Page
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
                display();
            }
        }

        protected void UpdBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateAdmin.aspx");
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("registerAdmin.aspx");
        }

        protected void DelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteAdmin.aspx");
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

                string query = "SELECT * FROM AdminTB";
                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                AdminGridView.DataSource = ds;
                AdminGridView.DataBind();

                // close the connection
                conn.Close();

            }
            catch (SqlException ex)
            {
                // display the error
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }
    }
}