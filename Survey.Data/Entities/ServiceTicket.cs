using Survey.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Survey.Data.Entities
{
    public class ServiceTicket : BaseEntity
    {
        public string Description { get; set; }

        public string ReferenceNumber { get; set; }

        public long? StatusId { get; set; }

        public long? ClientId { get; set; }

        public long? DepartmentId { get; set; }

        public long? SurveyTypeId { get; set; }

        public long? StatusReasonId { get; set; }

        public long? PriorityId { get; set; }

        public DateTime? DueDate { get; set; }

        public DateTime? TicketCreatedDate { get; set; }

        public DateTime? TicketSubmissionDate { get; set; }

        public long? UserId { get; set; }

        public DateTime? CustomerAvailableFrom { get; set; }

        public DateTime? CustomerAvailableTo { get; set; }

        public string CompanyName { get; set; }

        public string Phone { get; set; }

        public string Mobile { get; set; }

        public string Address1 { get; set; }

        public string Address2 { get; set; }

        public virtual Client Client { get; set; }

        public virtual Department Department { get; set; }

        public virtual Priority Priority { get; set; }

        public virtual Status Status { get; set; }

        public virtual StatusReason StatusReason { get; set; }

        public virtual SurveyType SurveyType { get; set; }

        public virtual User User { get; set; }
    }
}
