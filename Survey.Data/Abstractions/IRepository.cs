using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Abstractions
{
    public interface IRepository<T>
    {
        // Marks an entity as new
        void Add(T entity);
        // Marks an entity as modified
        void Update(T entity);
        // Marks an entity to be removed
        void Delete(T entity);
        void Delete(long id);
        void Delete(Expression<Func<T, bool>> where);
        // Get an entity by int id
        T GetById(long id);
        T GetById(int id);
        // Get an entity using delegate
        T Get(Expression<Func<T, bool>> where);
        // Gets all entities of type T
        IEnumerable<T> GetAll();
        // Gets entities using delegate
        IEnumerable<T> GetMany(Expression<Func<T, bool>> where);

        //int Insert(T entity);
        //void Delete(T entity);
        ////IQueryable<T> SearchFor(Expression<Func<T, bool>> filter);
        //IEnumerable<T> GetAll();
        //T GetById(int id);
        void Dispose();

    }
}
