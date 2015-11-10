using Survey.Data.Abstractions;
using Survey.Data.Entities;
//using Client.Data.Infrastructure;
//using Client.Model;
//using Client.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Survey.WebApi.Controllers
{
    public class ClientTypeController : ApiController
    {
        //IClientTypeService<ClientType> ClientTypeService;
        private IRepository<ClientType> ClientTypeRepository;

        public ClientTypeController(IRepository<ClientType> ClientTypeRepository)
        {
            this.ClientTypeRepository = ClientTypeRepository;
        }
        // GET: api/ClientType
        public IEnumerable<ClientType> Get()
        {
            //return new string[] { "value1", "value2" };
            return ClientTypeRepository.GetAll();
        }

        // GET: api/ClientType/5
        public IEnumerable<ClientType> Get(long id)
        {
            return ClientTypeRepository.GetAll();

        }

        // POST: api/ClientType
        public void Post(ClientType ClientType)
        {
            //ClientType.Id = Guid.NewGuid();
            ClientTypeRepository.Add(ClientType);

        }

        // PUT: api/ClientType/5
        public void Put(ClientType ClientType)
        {
            ClientTypeRepository.Update(ClientType);
        }

        // DELETE: api/ClientType/5
        public void Delete(long id)
        {
            ClientTypeRepository.Delete(id);
        }
    }
}
