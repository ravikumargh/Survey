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
    public class TeamController : ApiController
    {
        //ITeamService<Team> TeamService;
        private IRepository<Team> TeamRepository;

        public TeamController(IRepository<Team> TeamRepository)
        {
            this.TeamRepository = TeamRepository;
        }
        // GET: api/Team
        public IEnumerable<Team> Get()
        {
            //return new string[] { "value1", "value2" };
            return TeamRepository.GetAll();
        }

        // GET: api/Team/5
        public IEnumerable<Team> Get(long id)
        {
            return TeamRepository.GetAll();

        }

        // POST: api/Team
        public void Post(Team Team)
        {
            //Team.Id = Guid.NewGuid();
            TeamRepository.Add(Team);

        }

        // PUT: api/Team/5
        public void Put(Team Team)
        {
            TeamRepository.Update(Team);
        }

        // DELETE: api/Team/5
        public void Delete(long id)
        {
            TeamRepository.Delete(id);
        }
    }
}
