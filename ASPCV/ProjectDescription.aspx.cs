using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPCV.Models;
using System.Web.ModelBinding;

namespace ASPCV
{
    public partial class ProjectDescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Project> GetProject([QueryString("ProjectID")] int? projectId)
        {
            var _db = new ASPCV.Models.ProjectContext();
            IQueryable<Project> query = _db.Projects;
            if (projectId != null)
            {
                query = query.Where(p => p.ProjectId == projectId);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}