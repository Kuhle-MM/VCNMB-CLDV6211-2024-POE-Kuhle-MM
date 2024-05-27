using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CLDVPOE1
{
    //gets and sets 
    public class ArtWork
    {
        public int artID { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public double price { get; set; }
        public string imageUrl { get; set; }

        public string category { get; set; }

        public int availability { get; set; }
    }

    //gets and sets art work category
    public class ImageCategory
    {
        public string CategoryName { get; set; }
        public List<ArtWork> ArtWorks { get; set; }
    }
}