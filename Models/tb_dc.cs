//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace mf_frontend.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tb_dc
    {
        public int id { get; set; }
        public System.DateTime create_date { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string image { get; set; }
        public int type_id { get; set; }
        public bool is_active { get; set; }
    
        public virtual tb_dc_type tb_dc_type { get; set; }
        public virtual tb_organization tb_organization { get; set; }
    }
}
