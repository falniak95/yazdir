using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yazdir
{
    public class myMessages
    {
        public myMessages()
        { }

       
        public string messageID { get; set; }
        public string messageSenderID { get; set; }
        public string messageHeader { get; set; }
        public string messageSenderName { get; set; }
        public string messageContent { get; set; }
        public string messageDate { get; set; }
        public string messageSenderType { get; set; }
    }
}