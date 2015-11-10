using Survey.Data.Abstractions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Entities
{
    public class AddressRepository : IRepository<Address>, IDisposable
    {
        private EFDbContext _context;
        private bool _disposed;
        public AddressRepository()
        {
            _context = new EFDbContext();
        }
        public int Insert(Address entity)
        {
            _context.Address.Add(entity);
            return _context.SaveChanges();
        }

        public void Delete(Address entity)
        {
            throw new NotImplementedException();
        }

        //public IQueryable<Address> SearchFor(System.Linq.Expressions.Expression<Func<Addressbool>> filter)
        //{
        //    throw new NotImplementedException();
        //}

        public IEnumerable<Address> GetAll()
        {
            throw new NotImplementedException();
        }

        public Address GetById(int id)
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

        public void Add(Address entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Address entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(System.Linq.Expressions.Expression<Func<Address, bool>> where)
        {
            throw new NotImplementedException();
        }

        public Address GetById(long id)
        {
            throw new NotImplementedException();
        }

        public Address Get(System.Linq.Expressions.Expression<Func<Address, bool>> where)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Address> GetMany(System.Linq.Expressions.Expression<Func<Address, bool>> where)
        {
            throw new NotImplementedException();
        }


        public void Delete(long id)
        {
            throw new NotImplementedException();
        }
    }
}
