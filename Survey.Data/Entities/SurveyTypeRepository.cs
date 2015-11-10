
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
    public class SurveyTypeRepository : IRepository<SurveyType>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<SurveyType> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public SurveyTypeRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<SurveyType>();
        }
         
        public void Delete(long id)
        {
            SurveyType SurveyType = _context.SurveyTypes.Single(w => w.Id == id);
            _context.SurveyTypes.Remove(SurveyType);
            _context.SaveChanges();
        }

        //public IQueryable<SurveyType> SearchFor(System.Linq.Expressions.Expression<Func<SurveyTypebool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<SurveyType> GetAll()
        {
            return dbSet.ToList();
        }
         
        public SurveyType GetById(long id)
        {
            SurveyType SurveyType = _context.SurveyTypes.Single(w => w.Id == id);
            return SurveyType;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(SurveyType entity)
        {
            _context.SurveyTypes.Add(entity);
            _context.SaveChanges();
        }

        public void Update(SurveyType entity)
        {
            SurveyType SurveyType = _context.SurveyTypes.Single(w=>w.Id==entity.Id);
            SurveyType.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<SurveyType, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public SurveyType Get(System.Linq.Expressions.Expression<Func<SurveyType, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<SurveyType> GetMany(System.Linq.Expressions.Expression<Func<SurveyType, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(SurveyType entity)
        {
            throw new NotImplementedException();
        }




        public SurveyType GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
