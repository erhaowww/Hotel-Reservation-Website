//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PeaceHotel.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Billing
    {
        public int billingId { get; set; }
        public int paymentId { get; set; }
        public string realName { get; set; }
        public string userName { get; set; }
        public string email { get; set; }
        public string address1 { get; set; }
        public string address2 { get; set; }
        public string country { get; set; }
        public string state { get; set; }
        public Nullable<int> zipcode { get; set; }
    
        public virtual Payment Payment { get; set; }
    }
}
