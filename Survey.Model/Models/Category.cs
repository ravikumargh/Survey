using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Model
{
    public class Category : BaseEntity
    {
        public virtual List<Gadget> Gadgets { get; set; }

    }
}
