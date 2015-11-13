
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
    public class ServiceTicketRepository : IRepository<ServiceTicket>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<ServiceTicket> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public ServiceTicketRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<ServiceTicket>();
        }
         
        public void Delete(long id)
        {
            ServiceTicket ServiceTicket = _context.ServiceTickets.Single(w => w.Id == id);
            _context.ServiceTickets.Remove(ServiceTicket);
            _context.SaveChanges();
        }

        //public IQueryable<ServiceTicket> SearchFor(System.Linq.Expressions.Expression<Func<ServiceTicketbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<ServiceTicket> GetAll()
        {
            return dbSet.ToList();
        }
         
        public ServiceTicket GetById(long id)
        {
            ServiceTicket ServiceTicket = _context.ServiceTickets.Single(w => w.Id == id);
            return ServiceTicket;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(ServiceTicket entity)
        {
            _context.ServiceTickets.Add(entity);
            _context.SaveChanges();
        }

        public void Update(ServiceTicket entity)
        {
            ServiceTicket ServiceTicket = _context.ServiceTickets.Single(w=>w.Id==entity.Id);
            ServiceTicket.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<ServiceTicket, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public ServiceTicket Get(System.Linq.Expressions.Expression<Func<ServiceTicket, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ServiceTicket> GetMany(System.Linq.Expressions.Expression<Func<ServiceTicket, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(ServiceTicket entity)
        {
            throw new NotImplementedException();
        }




        public ServiceTicket GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
