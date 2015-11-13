using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Survey.Data.Entities
{
    public partial class Department : BaseEntity
    {
        public Department()
        {
            ServiceTickets = new HashSet<ServiceTicket>();
        }
        public virtual ICollection<ServiceTicket> ServiceTickets { get; set; }
    }
}
