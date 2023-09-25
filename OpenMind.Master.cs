using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenMind
{
    public partial class OpenMind : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            Session["Role"] = "";
            try
            {
                if (Session["role"].Equals(""))
                {
                    //LearnerLoginLink.Visible = true;
                    //LogoutLink.Visible = false;
                }
                else if (Session["role"].Equals("Learner"))
                {
                    //LearnerLoginLink.Visible = false;
                    //LogoutLink.Visible = true;
                    AdminLoginLink.Visible = false;
                    TeacherLoginLink.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('ex.Message');</script>");
            }
          
        }

        protected void AdminLoginLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void TeacherLoginLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacherlogin.aspx");
        }

        protected void LearnerLoginLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("learnerlogin.aspx");
            Session["role"] = "Learner";
        }

        protected void LogoutLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

    }
}