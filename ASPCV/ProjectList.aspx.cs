using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using ASPCV.Models;

namespace ASPCV
{
    public partial class ProjectList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Project> GetProjects(
                            [QueryString("type")] String projectType)
        {
            var _db = new ASPCV.Models.ProjectContext();
            IQueryable<Project> query = _db.Projects;

            if (projectType != null)
            {
                query = query.Where(p => p.ProjectType == projectType);
            }
            else
            {
                return query;
            }

            return query;
        }
    }
}