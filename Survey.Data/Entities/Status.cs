﻿using Survey.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Survey.Data.Entities
{
    public class Status : BaseEntity
    {
        public Status()
        {
            ServiceTickets = new HashSet<ServiceTicket>();
        }
        public virtual ICollection<ServiceTicket> ServiceTickets { get; set; }
    }
}
