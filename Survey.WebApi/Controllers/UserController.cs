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
    public class UserController : ApiController
    {
        //IUserService<User> UserService;
        private IRepository<User> UserRepository;

        public UserController(IRepository<User> UserRepository)
        {
            this.UserRepository = UserRepository;
        }
        // GET api/<controller>
        public IEnumerable<User> Get()
        {
            return UserRepository.GetAll();
            //return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post(User user)
        {
            //user.Id = Guid.NewGuid();
            user.UserName = user.Email;
            user.Password = "P@ssword1";
            UserRepository.Add(user);

        }

        // PUT api/<controller>/5
        public void Put(User user)
        {
            user.UserName = user.Email;
            UserRepository.Update(user);
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}