using System.ComponentModel.DataAnnotations;

namespace ASPCV.Models
{
    public class Project
    {
        [Key]
        public int ProjectId { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string ProjectName { get; set; }

        [Required, StringLength(10000), Display(Name = "Project Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [StringLength(10000), Display(Name = "Type")]
        public string ProjectType { get; set; }

        public virtual ProjectType Types { get; set; }

        public int PortfolioId { get; set; }

        public virtual Portfolio Portfolio { get; set; }
    }
}