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
    public class StatusReasonController : ApiController
    {
        //IStatusReasonService<StatusReason> StatusReasonService;
        private IRepository<StatusReason> StatusReasonRepository;

        public StatusReasonController(IRepository<StatusReason> StatusReasonRepository)
        {
            this.StatusReasonRepository = StatusReasonRepository;
        }
        // GET: api/StatusReason
        public IEnumerable<StatusReason> Get()
        {
            //return new string[] { "value1", "value2" };
            return StatusReasonRepository.GetAll();
        }

        // GET: api/StatusReason/5
        public IEnumerable<StatusReason> Get(long id)
        {
            return StatusReasonRepository.GetAll();

        }

        // POST: api/StatusReason
        public void Post(StatusReason StatusReason)
        {
            //StatusReason.Id = Guid.NewGuid();
            StatusReasonRepository.Add(StatusReason);

        }

        // PUT: api/StatusReason/5
        public void Put(StatusReason StatusReason)
        {
            StatusReasonRepository.Update(StatusReason);
        }

        // DELETE: api/StatusReason/5
        public void Delete(long id)
        {
            StatusReasonRepository.Delete(id);
        }
    }
}
