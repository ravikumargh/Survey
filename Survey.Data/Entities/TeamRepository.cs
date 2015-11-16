
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
    public class TeamRepository : IRepository<Team>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<Team> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public TeamRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<Team>();
        }
         
        public void Delete(long id)
        {
            Team Team = _context.Teams.Single(w => w.Id == id);
            _context.Teams.Remove(Team);
            _context.SaveChanges();
        }

        //public IQueryable<Team> SearchFor(System.Linq.Expressions.Expression<Func<Teambool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<Team> GetAll()
        {
            return dbSet.ToList();
        }
         
        public Team GetById(long id)
        {
            Team Team = _context.Teams.Single(w => w.Id == id);
            return Team;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(Team entity)
        {
            _context.Teams.Add(entity);
            _context.SaveChanges();
        }

        public void Update(Team entity)
        {
            Team Team = _context.Teams.Single(w=>w.Id==entity.Id);
            Team.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<Team, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public Team Get(System.Linq.Expressions.Expression<Func<Team, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Team> GetMany(System.Linq.Expressions.Expression<Func<Team, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(Team entity)
        {
            throw new NotImplementedException();
        }




        public Team GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
