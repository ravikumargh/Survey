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
    public class SurveyTypeController : ApiController
    {
        //ISurveyTypeService<SurveyType> SurveyTypeService;
        private IRepository<SurveyType> SurveyTypeRepository;

        public SurveyTypeController(IRepository<SurveyType> SurveyTypeRepository)
        {
            this.SurveyTypeRepository = SurveyTypeRepository;
        }
        // GET: api/SurveyType
        public IEnumerable<SurveyType> Get()
        {
            //return new string[] { "value1", "value2" };
            return SurveyTypeRepository.GetAll();
        }

        // GET: api/SurveyType/5
        public IEnumerable<SurveyType> Get(long id)
        {
            return SurveyTypeRepository.GetAll();

        }

        // POST: api/SurveyType
        public void Post(SurveyType SurveyType)
        {
            //SurveyType.Id = Guid.NewGuid();
            SurveyTypeRepository.Add(SurveyType);

        }

        // PUT: api/SurveyType/5
        public void Put(SurveyType SurveyType)
        {
            SurveyTypeRepository.Update(SurveyType);
        }

        // DELETE: api/SurveyType/5
        public void Delete(long id)
        {
            SurveyTypeRepository.Delete(id);
        }
    }
}
