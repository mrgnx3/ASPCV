using System.Data.Entity;

namespace ASPCV.Models
{
    public class ProjectContext : DbContext
    {
        public ProjectContext()
            : base("ASPCV")
        {

        }
        public DbSet<Portfolio> Portfolios { get; set; }
        public DbSet<Project> Projects { get; set; }
        public DbSet<ProjectType> Types { get; set; }
        public DbSet<Donation> Donations { get; set; }
    }
}