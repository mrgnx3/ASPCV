using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.ComponentModel;
using System.Web;
       
namespace ASPCV.Models
{
    public class Donation
    {
    [Key]
    public int PaymentId { get; set; }

    public System.DateTime OrderDate { get; set; }

    [DefaultValue("anonymous")]
    public string Username { get; set; }

    [Required(ErrorMessage = "First Name is required")]
    [DisplayName("First Name")]
    [StringLength(160)]
    public string FirstName { get; set; }

    [Required(ErrorMessage = "Last Name is required")]
    [DisplayName("Last Name")]
    [StringLength(160)]
    public string LastName { get; set; }

    [StringLength(24)]
    public string Phone { get; set; }

    [Required(ErrorMessage = "Email Address is required")]
    [DisplayName("Email Address")]
    [RegularExpression(@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}",ErrorMessage = "Email is is not valid.")]
    [DataType(DataType.EmailAddress)]
    public string Email { get; set; }

    [ScaffoldColumn(false)]
    public decimal Total { get; set; }

    }
}