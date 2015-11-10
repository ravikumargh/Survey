using Survey.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Configuration
{
    public class UsersConfiguration: EntityTypeConfiguration<User>
    {
        public UsersConfiguration()
        {
            ToTable("Users");
            Property(g => g.Name).IsRequired().HasMaxLength(50);
            Property(g => g.Email).IsRequired().HasMaxLength(50);
        }
    }
}
