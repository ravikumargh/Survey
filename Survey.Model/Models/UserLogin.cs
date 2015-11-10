using Survey.Model;
using System;
using System.Collections.Generic;
namespace Survey.Data
{
     
    public partial class UserLogin
    {
         public string LoginProvider { get; set; }

         public string ProviderKey { get; set; }

         public string UserId { get; set; }

        public virtual User User { get; set; }
    }
}
