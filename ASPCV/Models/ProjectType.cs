using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ASPCV.Models
{
    public class ProjectType
    {
        [Key]
        public int ProjectTypeId { get; set; }

        [Required, StringLength(100), Display(Name = "Genre")]
        public string Genre { get; set; }

        public virtual ICollection<Project> Projects { get; set; }
    }
}