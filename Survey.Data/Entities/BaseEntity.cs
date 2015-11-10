using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Survey.Data.Entities
{
    public class BaseEntity
    {
        public long Id { get; set; }

        public string Name { get; set; }

        public bool? IsDeleted { get; set; }

        public DateTime? DateCreated { get; set; }

        public DateTime? DateUpdated { get; set; }

        public BaseEntity()
        {
            DateCreated = DateTime.Now;
            DateUpdated = DateTime.Now;
        }
    }
}
