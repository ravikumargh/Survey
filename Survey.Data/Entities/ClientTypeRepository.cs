
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
    public class ClientTypeRepository : IRepository<ClientType>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<ClientType> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public ClientTypeRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<ClientType>();
        }
         
        public void Delete(long id)
        {
            ClientType ClientType = _context.ClientTypes.Single(w => w.Id == id);
            _context.ClientTypes.Remove(ClientType);
            _context.SaveChanges();
        }

        //public IQueryable<ClientType> SearchFor(System.Linq.Expressions.Expression<Func<ClientTypebool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<ClientType> GetAll()
        {
            return dbSet.ToList();
        }
         
        public ClientType GetById(long id)
        {
            ClientType ClientType = _context.ClientTypes.Single(w => w.Id == id);
            return ClientType;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(ClientType entity)
        {
            _context.ClientTypes.Add(entity);
            _context.SaveChanges();
        }

        public void Update(ClientType entity)
        {
            ClientType ClientType = _context.ClientTypes.Single(w=>w.Id==entity.Id);
            ClientType.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<ClientType, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public ClientType Get(System.Linq.Expressions.Expression<Func<ClientType, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ClientType> GetMany(System.Linq.Expressions.Expression<Func<ClientType, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(ClientType entity)
        {
            throw new NotImplementedException();
        }




        public ClientType GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
