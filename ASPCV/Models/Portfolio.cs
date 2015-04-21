using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ASPCV.Models
{
    public class Portfolio
    {
        [ScaffoldColumn(false)]
        public int PortfolioId { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string PortfolioName { get; set; }

        [Display(Name = "Project Description")]
        public string Description { get; set; }

        public virtual ICollection<Project> Projects { get; set; }
    }
}