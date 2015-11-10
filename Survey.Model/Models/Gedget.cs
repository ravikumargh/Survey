using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Survey.Model
{
    public class Gadget :BaseEntity
    {
        public string Description { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }

        public int CategoryID { get; set; }
        public Category Category { get; set; }
    }
}
