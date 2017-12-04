using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yazdir
{
    public class haber
    {
        public haber()
        {

        }
        public string haberID { get; set; }
        public string haberBaslik { get; set; }
        public string haberZaman { get; set; }
        public string haberIcerik { get; set; }
        public string haberSahip { get; set; }
        public string haberSahipIsim { get; set; }
        public string haberOnay { get; set; }
        
    }
}