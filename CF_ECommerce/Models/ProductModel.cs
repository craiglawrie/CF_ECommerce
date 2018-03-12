using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CF_ECommerce.Models
{
    public class ProductModel
    {
        public int Id { get; set; }
        public string Material { get; set; }
        public decimal PricePerFoot { get; set; }
        public int StockInFeet { get; set; }
        public int MaxCutLength { get; set; }
        public double WeightPerFootInLbs { get; set; }
        public string ImageName { get; set; }
    }
}