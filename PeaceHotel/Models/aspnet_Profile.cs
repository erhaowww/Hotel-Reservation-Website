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
    
    public partial class aspnet_Profile
    {
        public System.Guid UserId { get; set; }
        public string PropertyNames { get; set; }
        public string PropertyValuesString { get; set; }
        public byte[] PropertyValuesBinary { get; set; }
        public System.DateTime LastUpdatedDate { get; set; }
    
        public virtual aspnet_Users aspnet_Users { get; set; }
    }
}
