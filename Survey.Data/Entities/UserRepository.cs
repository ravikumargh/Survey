using Survey.Data.Abstractions;
//using Survey.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Entities
{
    public class UserRepository : IRepository<User>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private IDbSet<User> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public UserRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<User>();
        }

        //public int Insert(User entity)
        //{
        //    _context.Users.Add(entity);
        //    return _context.SaveChanges();
        //}

        public void Delete(User entity)
        {
            throw new NotImplementedException();
        }

        //public IQueryable<User> SearchFor(System.Linq.Expressions.Expression<Func<Userbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<User> GetAll()
        {
            return dbSet.ToList();
            //throw new NotImplementedException();
        }

        public User GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(User entity)
        {
            _context.Users.Add(entity);
              _context.SaveChanges();
        }

        public void Update(User entity)
        {
            User User = _context.Users.Single(w => w.Id == entity.Id);
            User.Name = entity.Name;
            User.UserName = entity.UserName;
            User.RoleId = entity.RoleId;
            User.PhoneNumber = entity.PhoneNumber;
            User.Address = entity.Address;
            User.Email = entity.Email;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<User, bool>> where)
        {
            throw new NotImplementedException();
        }

        public User GetById(long id)
        {
            throw new NotImplementedException();
        }

        public User Get(System.Linq.Expressions.Expression<Func<User, bool>> where)
        {
            return dbSet.Where(where).FirstOrDefault<User>();
        }

        public IEnumerable<User> GetMany(System.Linq.Expressions.Expression<Func<User, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(long id)
        {
            throw new NotImplementedException();
        }
    }
}
