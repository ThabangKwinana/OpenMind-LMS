using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenMind
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TeacherManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("maintainTeachers.aspx");
        }

        protected void LearnerManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("maintainLearners.aspx");
        }

        protected void AnnManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("maintainAnn.aspx");
        }

        protected void adminManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("maintainAdmin.aspx");
        }
    }
}