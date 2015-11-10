using Survey.Data.Infrastructure;
using Survey.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Repositories
{
    public class RolesRepository : RepositoryBase<Role>, IRolesRepository
    {
        public RolesRepository(IDbFactory dbFactory)
            : base(dbFactory) { }

        public Role GetRolesByName(string RolesName)
        {
            var Roles = this.DbContext.Roles.Where(c => c.Name == RolesName).FirstOrDefault();

            return Roles;
        }

        public override void Update(Role entity)
        {
            entity.DateUpdated = DateTime.Now;
            base.Update(entity);
        }


        public Role GetById(Guid id)
        {
            throw new NotImplementedException();
        }
    }

    public interface IRolesRepository : IRepository<Role>
    {
        Role GetRolesByName(string RolesName);
    }
}
