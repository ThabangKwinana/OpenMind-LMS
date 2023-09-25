using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenMind
{
    public partial class learnerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AnnouncementsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewAnnouncement.aspx");
        }

        protected void GradeBookBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("subjectsPage.aspx");
        }
    }
}