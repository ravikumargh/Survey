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
    public interface IDbFactory : IDisposable
    {
        SurveyEntities Init();
    }
    public class RoleRepository : IRepository<Role>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<Role> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public RoleRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<Role>();
        }
        //public int Insert(Role entity)
        //{
        //    _context.Roles.Add(entity);
        //    return _context.SaveChanges();
        //}

        public void Delete(Role entity)
        {
            throw new NotImplementedException();
        }

        //public IQueryable<Role> SearchFor(System.Linq.Expressions.Expression<Func<Rolebool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<Role> GetAll()
        {
            return dbSet.ToList();
            //throw new NotImplementedException();
        }

        public Role GetById(int id)
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

        public void Add(Role entity)
        {
            _context.Roles.Add(entity);
            _context.SaveChanges();
        }

        public void Update(Role entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<Role, bool>> where)
        {
            throw new NotImplementedException();
        }

        public Role GetById(long id)
        {
            throw new NotImplementedException();
        }

        public Role Get(System.Linq.Expressions.Expression<Func<Role, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Role> GetMany(System.Linq.Expressions.Expression<Func<Role, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(long id)
        {
            throw new NotImplementedException();
        }
    }
}
