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
    
    public partial class tb_question_request
    {
        public int id { get; set; }
        public string fio { get; set; }
        public string organization { get; set; }
        public string position { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public Nullable<int> category_id { get; set; }
        public string question { get; set; }
        public bool is_active { get; set; }
        public Nullable<System.DateTime> create_date { get; set; }
    
        public virtual tb_question_sub_categorys tb_question_sub_categorys { get; set; }
    }
}
