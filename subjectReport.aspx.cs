using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenMind
{
    public partial class subjectReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EngBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EngReportPage.aspx");
        }

        protected void MathsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("MathsReportPage.aspx");
        }

        protected void PhysicsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PhysicsReportPage.aspx");
        }
    }
}