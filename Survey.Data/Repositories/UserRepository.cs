using Survey.Data.Infrastructure;
using Survey.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Repositories
{
    public class UserRepository : RepositoryBase<User>, IUserRepository
    {
        public UserRepository(IDbFactory dbFactory)
            : base(dbFactory) { }


        public User GetById(Guid id)
        {
            throw new NotImplementedException();
        }
    }

    public interface IUserRepository : IRepository<User>
    {

    }
}
