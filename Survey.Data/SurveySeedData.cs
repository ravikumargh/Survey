using Survey.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Survey.Data
{
     
    public class SurveySeedData : DropCreateDatabaseIfModelChanges<SurveyEntities>
    {
        protected override void Seed(SurveyEntities context)
        {
            GetRoles().ForEach(c => context.Roles.Add(c));
            GetUsers().ForEach(g => context.Users.Add(g));

            context.SaveChanges();
        }

        private static List<Role> GetRoles()
        {
            return new List<Role>
            {
                new Role {
                    Id=Guid.NewGuid(),
                    Name = "Admin"
                },
                new Role {
                    Name = "User"
                } 
            };
        }

        private static List<User> GetUsers()
        {
            return new List<User>
            {
                new User {
                    Id=Guid.NewGuid(),
                    Name = "Admin",
                    UserName = "Admin",
                    Email="ravikumargh13@gmail.com",
                    EmailConfirmed=true,
                    PasswordHash="P@ssword1"
                } 
            };
        }
    }

}
