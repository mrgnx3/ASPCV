using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPCV
{
    public partial class DonationsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Review_Donation(object sender, EventArgs e)
        {
            Response.Redirect("/Donations/DonationsReview.aspx?paymentId=1");
        }
    }
}