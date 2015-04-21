using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ASPCV.Models;

namespace ASPCV.Logic
{
    public class ProjectActions: IDisposable
    {
        public string PortfolioActionsName { get; set; }

        private ProjectContext _db = new ProjectContext();

        public const string PersonalProjectSession = "PersonalProjectSession";

        public void AddToProjects(int id)
        {
            PortfolioActionsName = GetProjectId();

            
            var projectItem = _db.Portfolios.SingleOrDefault(
          p => p.PortfolioName == PortfolioActionsName);
            var singleProject = _db.Projects.SingleOrDefault(p => p.ProjectId == id);
      
            if (projectItem == null)
             projectItem = new Models.Portfolio
            {
                PortfolioId = HttpContext.Current.User.GetHashCode(),
                PortfolioName = PortfolioActionsName,
                Projects = new List<Project>(){
                  singleProject
              }
              
            };
            else
            {
                projectItem.Projects.Add(singleProject);
            }
            _db.Portfolios.Add(projectItem);
          }

        public string GetProjectId()
        {
            if (HttpContext.Current.Session[PersonalProjectSession] == null)
            {
                if (!string.IsNullOrWhiteSpace(HttpContext.Current.User.Identity.Name))
                {
                    HttpContext.Current.Session[PersonalProjectSession] = HttpContext.Current.User.Identity.Name;
                }
                else
                {
                    // Generate a new random GUID using System.Guid class.     
                    Guid tempPersonalSessionId = Guid.NewGuid();
                    HttpContext.Current.Session[PersonalProjectSession] = tempPersonalSessionId.ToString();
                }
            }
            return HttpContext.Current.Session[PersonalProjectSession].ToString();
        }

        public List<Models.Project> GetProjectEntries()
        {
            PortfolioActionsName = GetProjectId();

            return _db.Projects.Where(
                p => p.Portfolio == (_db.Portfolios.Where(pf => pf.PortfolioName == PortfolioActionsName))).ToList();
        }

        public void Dispose()
        {
            if (_db != null)
            {
                _db.Dispose();
                _db = null;
            }
        }
    }
}
