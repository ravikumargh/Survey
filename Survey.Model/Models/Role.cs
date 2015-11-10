    using System;
    using System.Collections.Generic;

namespace Survey.Model
{
     
    public partial class Role :BaseEntity
    {
        public Role()
        {
            Users = new HashSet<User>();
        }
         public virtual ICollection<User> Users { get; set; }
    }
}
