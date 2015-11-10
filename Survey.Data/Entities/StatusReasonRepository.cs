
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
    public class StatusReasonRepository : IRepository<StatusReason>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<StatusReason> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public StatusReasonRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<StatusReason>();
        }
         
        public void Delete(long id)
        {
            StatusReason StatusReason = _context.StatusReasons.Single(w => w.Id == id);
            _context.StatusReasons.Remove(StatusReason);
            _context.SaveChanges();
        }

        //public IQueryable<StatusReason> SearchFor(System.Linq.Expressions.Expression<Func<StatusReasonbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<StatusReason> GetAll()
        {
            return dbSet.ToList();
        }
         
        public StatusReason GetById(long id)
        {
            StatusReason StatusReason = _context.StatusReasons.Single(w => w.Id == id);
            return StatusReason;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(StatusReason entity)
        {
            _context.StatusReasons.Add(entity);
            _context.SaveChanges();
        }

        public void Update(StatusReason entity)
        {
            StatusReason StatusReason = _context.StatusReasons.Single(w=>w.Id==entity.Id);
            StatusReason.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<StatusReason, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public StatusReason Get(System.Linq.Expressions.Expression<Func<StatusReason, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<StatusReason> GetMany(System.Linq.Expressions.Expression<Func<StatusReason, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(StatusReason entity)
        {
            throw new NotImplementedException();
        }




        public StatusReason GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
