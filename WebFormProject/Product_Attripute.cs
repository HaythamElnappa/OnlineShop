using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormProject
{
    public class Product_Attripute
    {
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public string Image_path { get; set; }
        public string Promotion { get; set; }
        public int Quantity { get; set; }
        public int Cat_Id { get; set; }
    }
}