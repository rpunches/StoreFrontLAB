using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace StoreFrontLAB.Models
{
    public class ContactViewModel
    {
        [Required(ErrorMessage = "*")]
        public string Name { get; set; }

        [Required(ErrorMessage ="*")]
        public string Email { get; set; }

        [UIHint("MultilineText")]
        [Required(ErrorMessage ="*")]
        public string Message { get; set; }
    }
}