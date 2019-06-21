using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Order_Attripute
    {
        public int State { get; set; }
        public string Address { get; set; }
        public Date Date { get; set; }
        public int Rate { get; set; }
        public int Cart_Id { get; set; }
        public int User_Id { get; set; }
        public int Driv_Id { get; set; }
    }
}