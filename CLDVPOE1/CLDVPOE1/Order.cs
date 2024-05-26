using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CLDVPOE1
{
    public class Order
    {
        public int orderID { get; set; }
        public DateTime orderTime { get; set; }
        public string orderDetails { get; set; }
        public double orderTotal { get; set; }
        public int userId { get; set; }
        public string orderStatus {  get; set; }

    }
}