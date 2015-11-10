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
    public class ClientController : ApiController
    {
        //IClientService<Client> ClientService;
        private IRepository<Client> ClientRepository;

        public ClientController(IRepository<Client> ClientRepository)
        {
            this.ClientRepository = ClientRepository;
        }
        // GET: api/Client
        public IEnumerable<Client> Get()
        {
            //return new string[] { "value1", "value2" };
            return ClientRepository.GetAll();
        }

        // GET: api/Client/5
        public IEnumerable<Client> Get(long id)
        {
            return ClientRepository.GetAll();

        }

        // POST: api/Client
        public void Post(Client Client)
        {
            //Client.Id = Guid.NewGuid();
            ClientRepository.Add(Client);

        }

        // PUT: api/Client/5
        public void Put(Client Client)
        {
            ClientRepository.Update(Client);
        }

        // DELETE: api/Client/5
        public void Delete(long id)
        {
            ClientRepository.Delete(id);
        }
    }
}
