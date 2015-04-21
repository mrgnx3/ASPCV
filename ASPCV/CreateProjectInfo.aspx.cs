using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using ASPCV.Logic;

namespace ASPCV
{
    public partial class CreateProjectInfo : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void AddProjects(object sender, EventArgs e)
        {
            string rawId = Request.QueryString["ProjectId"];
            int projectId;
            if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out projectId))
            {
                using (ProjectActions usersPortfolio = new ProjectActions())
                {
                    usersPortfolio.AddToProjects(projectId);
                }
            }
            else
            {
                Debug.Fail("ERROR : No ProjectId detected when adding project.");
                throw new Exception("ERROR : No ProjectId detected.");
            }
            Response.Redirect("CurrentProjects.aspx");
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }


        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

