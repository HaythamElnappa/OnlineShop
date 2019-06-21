using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Date
    {
        public int Day { get; set; }
        public int Month { get; set; }
        public int Year { get; set; }

        public override string ToString()
        {
            return $"{Month}-{Day}-{Year}";
        }
    }
}