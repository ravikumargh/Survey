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
    public class ServiceTicketController : ApiController
    {
        //IServiceTicketService<ServiceTicket> ServiceTicketService;
        private IRepository<ServiceTicket> ServiceTicketRepository;

        public ServiceTicketController(IRepository<ServiceTicket> serviceTicketRepository)
        {
            this.ServiceTicketRepository = serviceTicketRepository;
        }
        // GET: api/ServiceTicket
        public IEnumerable<ServiceTicket> Get()
        {
            //return new string[] { "value1", "value2" };
            return ServiceTicketRepository.GetAll();
        }

        // GET: api/ServiceTicket/5
        public IEnumerable<ServiceTicket> Get(long id)
        {
            return ServiceTicketRepository.GetAll();

        }

        // POST: api/ServiceTicket
        public void Post(ServiceTicket ServiceTicket)
        {
            //ServiceTicket.Id = Guid.NewGuid();
            ServiceTicketRepository.Add(ServiceTicket);

        }

        // PUT: api/ServiceTicket/5
        public void Put(ServiceTicket ServiceTicket)
        {
            ServiceTicketRepository.Update(ServiceTicket);
        }

        // DELETE: api/ServiceTicket/5
        public void Delete(long id)
        {
            ServiceTicketRepository.Delete(id);
        }
    }
}
