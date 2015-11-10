
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
    public class ClientRepository : IRepository<Client>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<Client> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public ClientRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<Client>();
        }
         
        public void Delete(long id)
        {
            Client Client = _context.Clients.Single(w => w.Id == id);
            _context.Clients.Remove(Client);
            _context.SaveChanges();
        }

        //public IQueryable<Client> SearchFor(System.Linq.Expressions.Expression<Func<Clientbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<Client> GetAll()
        {
            return dbSet.ToList();
        }
         
        public Client GetById(long id)
        {
            Client Client = _context.Clients.Single(w => w.Id == id);
            return Client;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(Client entity)
        {
            _context.Clients.Add(entity);
            _context.SaveChanges();
        }

        public void Update(Client entity)
        {
            Client Client = _context.Clients.Single(w=>w.Id==entity.Id);
            Client.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<Client, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public Client Get(System.Linq.Expressions.Expression<Func<Client, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Client> GetMany(System.Linq.Expressions.Expression<Func<Client, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(Client entity)
        {
            throw new NotImplementedException();
        }




        public Client GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
