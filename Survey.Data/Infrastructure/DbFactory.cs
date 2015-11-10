using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Infrastructure
{
    public class DbFactory : Disposable, IDbFactory
    {
        SurveyEntities dbContext;

        public SurveyEntities Init()
        {
            return dbContext ?? (dbContext = new SurveyEntities());
        }

        protected override void DisposeCore()
        {
            if (dbContext != null)
                dbContext.Dispose();
        }
    }
}
