using Survey.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Survey.Data.Entities
{
    public class Team : BaseEntity
    {
        public Team()
        {
            Users = new HashSet<User>();
        }
        public long TeamLeadId { get; set; }
        public long ManagerId { get; set; }

        public virtual ICollection<User> Users { get; set; }

    }
}
