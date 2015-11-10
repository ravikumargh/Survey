using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data.Infrastructure
{
    public interface IDbFactory : IDisposable
    {
        SurveyEntities Init();
    }
}
