using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Entities
{
    public class Address
    {
        public int AddressId { get; set; }
        [Required]
        public string AddressLabel { get; set; }
        [Required]
        public string Street { get; set; }
        [Required]
        public string City { get; set; }
        [Required]
        public string State { get; set; }
        public string Zip { get; set; }
        [Required]
        [RegularExpression(@"^.{2,}$", ErrorMessage = "Minimum 2 characters required for Country")]
        [StringLength(2, ErrorMessage = "Maximum {2} characters exceeded")]
        public string Country { get; set; }
    }
}
