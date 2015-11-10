
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
    public class StatusRepository : IRepository<Status>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<Status> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public StatusRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<Status>();
        }
         
        public void Delete(long id)
        {
            Status Status = _context.Status.Single(w => w.Id == id);
            _context.Status.Remove(Status);
            _context.SaveChanges();
        }

        //public IQueryable<Status> SearchFor(System.Linq.Expressions.Expression<Func<Statusbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<Status> GetAll()
        {
            return dbSet.ToList();
        }
         
        public Status GetById(long id)
        {
            Status Status = _context.Status.Single(w => w.Id == id);
            return Status;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(Status entity)
        {
            _context.Status.Add(entity);
            _context.SaveChanges();
        }

        public void Update(Status entity)
        {
            Status Status = _context.Status.Single(w=>w.Id==entity.Id);
            Status.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<Status, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public Status Get(System.Linq.Expressions.Expression<Func<Status, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Status> GetMany(System.Linq.Expressions.Expression<Func<Status, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(Status entity)
        {
            throw new NotImplementedException();
        }




        public Status GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
