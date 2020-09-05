using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Vendor_DTO
    {
        private int vendorID;
        private String vendorName;
        private bool vendorState;
        public int VendorID { get => vendorID; set => vendorID = value; }
        public string VendorName { get => vendorName; set => vendorName = value; }
        public bool VendorState { get => vendorState; set => vendorState = value; }
    }
}
