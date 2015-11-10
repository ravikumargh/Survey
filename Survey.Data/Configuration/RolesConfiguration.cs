using Survey.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Configuration
{
    public class RolesConfiguration : EntityTypeConfiguration<Role>
    {
        public RolesConfiguration()
        {
            ToTable("Roles");
            Property(c => c.Name).IsRequired().HasMaxLength(50);
        }
    }
}
