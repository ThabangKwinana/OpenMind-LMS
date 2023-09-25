using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OpenMind
{
    public partial class homepage : System.Web.UI.Page
    {
       /*Group Members 
 
        1. Thato J Mokoena 27268217
        2. Sandra N Ezeh 34615199
        3. Benny T Kwinana 34862145
        4. Rosemery Mhlanga 34282963
        5. Khensani W Molefe 32599463
       */

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("learnerlogin.aspx");
        }
    }
}