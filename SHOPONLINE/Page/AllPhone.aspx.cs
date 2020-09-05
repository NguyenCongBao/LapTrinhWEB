using BUS;
using System;
using System.Data;

namespace SHOPONLINE.Page
{
    public partial class AllPhone : System.Web.UI.Page
    {
        AllPhoneAndLaptop_BUS bus = new AllPhoneAndLaptop_BUS();
        public void GetAllPhone()
        {
            DataTable dt = new DataTable();
            dt = bus.AllPhone();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllPhone();
        }

        public int FilterCost(int a, int b)
        {
            DataTable dt = new DataTable();
            dt = bus.PhoneFilter(a, b);
            if (dt.Rows.Count != 0)
            {
                DataList1.DataSource = dt;
                DataList1.DataBind();
                return 1;
            }
            else
            {
                return 0;
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                int a = 0;
                int b = 2000000;
                if (FilterCost(a, b) == 0)
                {
                    GetAllPhone();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllPhone();
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                int a = 2000000;
                int b = 4000000;
                if (FilterCost(a, b) == 0)
                {
                    GetAllPhone();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllPhone();
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            try
            {
                int a = 4000000;
                int b = 7000000;
                if (FilterCost(a, b) == 0)
                    if (FilterCost(a, b) == 0)
                    {
                        GetAllPhone();
                    }
                    else
                    {
                        FilterCost(a, b);
                    }
            }
            catch
            {
                GetAllPhone();
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

            try
            {
                int a = 7000000;
                int b = 13000000;
                if (FilterCost(a, b) == 0)
                {
                    GetAllPhone();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllPhone();
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            try
            {
                int a = 13000000;
                int b = 120000000;
                if (FilterCost(a, b) == 0)
                {
                    GetAllPhone();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllPhone();
            }

        }
    }
}