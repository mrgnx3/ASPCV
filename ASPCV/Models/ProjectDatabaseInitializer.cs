using System.Data.Entity;
using System.Collections.Generic;
using System.Security.Principal;
using System;

namespace ASPCV.Models
{
    public class ProjectDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProjectContext>
    {


        protected override void Seed(ProjectContext context)
        {
            GetPortfolios().ForEach(pF => context.Portfolios.Add(pF));
            GetProjects().ForEach(p => context.Projects.Add(p));
            GetTypes().ForEach(t => context.Types.Add(t));

        }

        private static List<Portfolio> GetPortfolios()
        {
            List<Portfolio> newPortfolio = new List<Portfolio>()
            {
                new Portfolio() {
                    PortfolioId = 1,
                    PortfolioName = "Portfolio"
                }
            };
            return newPortfolio;
        }

        private static List<Project> GetProjects()
        {
            List<Project> newProject = new List<Project>()
            {
                new Project(){
                    ProjectId = Guid.NewGuid().GetHashCode(),
                    ProjectName = "Test Project",
                    Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    ProjectType = "College",
                    PortfolioId = 1
                }
            };
            return newProject;
        }

        private static List<ProjectType> GetTypes()
        {
            List<ProjectType> newProjectType = new List<ProjectType>()
            {
                new ProjectType(){
                    ProjectTypeId = 1,
                    Genre = "Work"             
                },

                new ProjectType(){
                    ProjectTypeId = 2,
                    Genre = "College"
                },

                new ProjectType(){
                    ProjectTypeId = 3,
                    Genre = "Personal Interests"
                }
            };
            return newProjectType;
        }

        private static List<Donation> GetDonations()
        {
            List<Donation> newDonations = new List<Donation>()
            {
                new Donation(){
                    Email = "test@test.com",
                    FirstName = "Tester",
                    LastName = "McGovern",
                    OrderDate = DateTime.Now,
                    PaymentId = 1,
                    Username = "test@test.com"
                }
            };
            return newDonations;
            
        }

        // private static string GetCurrentUser()
        //{
        //  string userName;
        // try
        //{
        //   userName = WindowsIdentity.GetCurrent().Name + "'s Portfolio";
        //}catch(Exception ex)
        //{
        //    userName = "Shared Portfolios";
        //}
        // return userName;
        //}
    }
}




