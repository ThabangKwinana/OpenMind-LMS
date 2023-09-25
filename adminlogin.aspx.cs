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
    public partial class adminlogin : System.Web.UI.Page
    {

        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd;
        SqlConnection conn;
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            HttpCookie cook = new HttpCookie("theCookie");

                try
                {
                    conn = new SqlConnection(conStr);

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }

                    string sql = $"SELECT * FROM AdminTB WHERE AdminID = '{adminIdTxtBox.Text.Trim()}' AND Password = '{adminPasswordTxtBox.Text.Trim()}'";
                    cmd = new SqlCommand(sql, conn);

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["Username"] = dr.GetValue(0).ToString();
                            Session["Role"] = "Admin";
                        }
                        Response.Redirect("AdminPage.aspx");
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