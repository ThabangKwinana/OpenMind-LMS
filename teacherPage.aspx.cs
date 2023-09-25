using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenMind
{
    public partial class teacherPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EngManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EngMarksManagement.aspx");
        }

        protected void MathManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("MathsMarksManagement.aspx");
        }

        protected void PhyManBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PhysicsMarksManagement.aspx");
        }

        protected void reqBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("subjectReport.aspx");
        }
    }
}