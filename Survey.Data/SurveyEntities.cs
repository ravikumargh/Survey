namespace Survey.Data
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using Survey.Data.Entities;
    //using Survey.Model;

    public partial class SurveyEntities : DbContext
    {
        public SurveyEntities()
            : base("name=SurveyEntities")
        {
            this.Configuration.LazyLoadingEnabled = false;
        }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<ClientType> ClientTypes { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Team> Teams { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<StatusReason> StatusReasons { get; set; }
        public virtual DbSet<ServiceTicket> ServiceTickets { get; set; }
        public virtual DbSet<SurveyType> SurveyTypes { get; set; }
        public virtual DbSet<User> Users { get; set; }

        //public virtual DbSet<Role> Roles { get; set; }
        //public virtual DbSet<Department> Departments { get; set; }
        //public virtual DbSet<UserClaim> UserClaims { get; set; }
        //public virtual DbSet<UserLogin> UserLogins { get; set; }
        //public virtual DbSet<User> Users { get; set; }

        //protected override void OnModelCreating(DbModelBuilder modelBuilder)
        //{
        //    modelBuilder.Entity<Role>()
        //        .HasMany(e => e.Users)
        //        .WithMany(e => e.Roles)
        //        .Map(m => m.ToTable("UserRoles").MapLeftKey("RoleId").MapRightKey("UserId"));
        //}

        internal void Commit()
        {
            base.SaveChanges();
        }
    }
}
