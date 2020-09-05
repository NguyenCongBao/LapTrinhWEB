using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Product_DTO
    {
        int productID_, venderID_, categoryID_, quantity_, amount_;
        string productName_, description_, photo_;
        decimal cost_;
        int productState_;

        public int ProductID_ { get => productID_; set => productID_ = value; }
        public int VenderID_ { get => venderID_; set => venderID_ = value; }
        public int CategoryID_ { get => categoryID_; set => categoryID_ = value; }
        public int Quantity_ { get => quantity_; set => quantity_ = value; }
        public int Amount_ { get => amount_; set => amount_ = value; }
        public string ProductName_ { get => productName_; set => productName_ = value; }
        public string Description_ { get => description_; set => description_ = value; }
        public string Photo_ { get => photo_; set => photo_ = value; }
        public int ProductState_ { get => productState_; set => productState_ = value; }
        public decimal Cost_ { get => cost_; set => cost_ = value; }
    }
}
