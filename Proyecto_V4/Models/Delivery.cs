//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto_V4.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Delivery
    {
        public int Id { get; set; }
        public System.Data.Entity.Spatial.DbGeography Address { get; set; }
        public System.DateTime Date { get; set; }
    
        public virtual Order Order { get; set; }
        public virtual Route Route { get; set; }
    }
}
