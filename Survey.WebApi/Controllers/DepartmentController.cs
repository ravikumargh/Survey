using Survey.Data.Abstractions;
using Survey.Data.Entities;
//using Survey.Data.Infrastructure;
//using Survey.Model;
//using Survey.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Survey.WebApi.Controllers
{
    public class DepartmentController : ApiController
    {
        //IDepartmentService<Department> DepartmentService;
        private IRepository<Department> DepartmentRepository;

        public DepartmentController(IRepository<Department> DepartmentRepository)
        {
            this.DepartmentRepository = DepartmentRepository;
        }
        // GET: api/Department
        public IEnumerable<Department> Get()
        {
            //return new string[] { "value1", "value2" };
            return DepartmentRepository.GetAll();
        }

        // GET: api/Department/5
        public IEnumerable<Department> Get(long id)
        {
            return DepartmentRepository.GetAll();

        }

        // POST: api/Department
        public void Post(Department Department)
        {
            //Department.Id = Guid.NewGuid();
            DepartmentRepository.Add(Department);

        }

        // PUT: api/Department/5
        public void Put(Department Department)
        {
            DepartmentRepository.Update(Department);
        }

        // DELETE: api/Department/5
        public void Delete(long id)
        {
            DepartmentRepository.Delete(id);
        }
    }
}
