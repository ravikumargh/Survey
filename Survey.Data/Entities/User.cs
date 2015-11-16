    using System;
    using System.Collections.Generic;
namespace Survey.Data.Entities
{

    public partial class User : BaseEntity
    {
        public User()
        {
            //UserClaims = new HashSet<UserClaim>();
            //UserLogins = new HashSet<UserLogin>();
            Roles = new HashSet<Role>();
            Teams = new HashSet<Team>();
            ServiceTickets = new HashSet<ServiceTicket>();
        }

        public string Email { get; set; }

        public bool EmailConfirmed { get; set; }

        public string UserName { get; set; }

        public string Password { get; set; }

        public string PhoneNumber { get; set; }

        public bool PhoneNumberConfirmed { get; set; }

        public string Address { get; set; }

        public bool IsLocked { get; set; }

        public int AccessFailedCount { get; set; }

        public long? RoleId { get; set; }

        public long? TeamId { get; set; }


         
        //public virtual ICollection<UserClaim> UserClaims { get; set; }
        //public virtual ICollection<UserLogin> UserLogins { get; set; }
        public virtual ICollection<Role> Roles { get; set; }
        public virtual ICollection<Team> Teams { get; set; }
        public virtual ICollection<ServiceTicket> ServiceTickets { get; set; }
    }
}
