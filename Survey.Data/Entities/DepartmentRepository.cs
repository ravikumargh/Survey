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
    public class DepartmentRepository : IRepository<Department>, IDisposable
    {
        private SurveyEntities _context;
        private bool _disposed;
        private  IDbSet<Department> dbSet;
        protected IDbFactory DbFactory
        {
            get;
            private set;
        }

        protected SurveyEntities DbContext
        {
            get { return _context ?? (_context = DbFactory.Init()); }
        }
        public DepartmentRepository()
        {
            _context = new SurveyEntities();
            dbSet = DbContext.Set<Department>();
        }
        //public int Insert(Department entity)
        //{
        //    _context.Departments.Add(entity);
        //    return _context.SaveChanges();
        //}

        public void Delete(long id)
        {
            Department department = _context.Departments.Single(w => w.Id == id);
            _context.Departments.Remove(department);
            _context.SaveChanges();
        }

        //public IQueryable<Department> SearchFor(System.Linq.Expressions.Expression<Func<Departmentbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<Department> GetAll()
        {
            return dbSet.ToList();
            //throw new NotImplementedException();
        }

        public Department GetById(int id)
        {
            throw new NotImplementedException();
        }
        public Department GetById(long id)
        {
            Department department = _context.Departments.Single(w => w.Id == id);
            return department;
        }
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        void IDisposable.Dispose()
        {
            throw new NotImplementedException();
        }

        public void Add(Department entity)
        {
            _context.Departments.Add(entity);
            _context.SaveChanges();
        }

        public void Update(Department entity)
        {
            Department department = _context.Departments.Single(w=>w.Id==entity.Id);
            department.Name = entity.Name;
            _context.SaveChanges();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<Department, bool>> where)
        {
            throw new NotImplementedException();
        }
 
        public Department Get(System.Linq.Expressions.Expression<Func<Department, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Department> GetMany(System.Linq.Expressions.Expression<Func<Department, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(Department entity)
        {
            throw new NotImplementedException();
        }
         
    }
}
