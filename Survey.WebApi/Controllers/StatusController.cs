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
    public class StatusController : ApiController
    {
        //IStatusService<Status> StatusService;
        private IRepository<Status> StatusRepository;

        public StatusController(IRepository<Status> StatusRepository)
        {
            this.StatusRepository = StatusRepository;
        }
        // GET: api/Status
        public IEnumerable<Status> Get()
        {
            //return new string[] { "value1", "value2" };
            return StatusRepository.GetAll();
        }

        // GET: api/Status/5
        public IEnumerable<Status> Get(long id)
        {
            return StatusRepository.GetAll();

        }

        // POST: api/Status
        public void Post(Status Status)
        {
            //Status.Id = Guid.NewGuid();
            StatusRepository.Add(Status);

        }

        // PUT: api/Status/5
        public void Put(Status Status)
        {
            StatusRepository.Update(Status);
        }

        // DELETE: api/Status/5
        public void Delete(long id)
        {
            StatusRepository.Delete(id);
        }
    }
}
