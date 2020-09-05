using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;

namespace SHOPONLINE.Page
{
    public partial class AllLaptop : System.Web.UI.Page
    {
        AllPhoneAndLaptop_BUS bus = new AllPhoneAndLaptop_BUS();

        public int FilterCost(int a, int b)
        {
            DataTable dt = new DataTable();
            dt = bus.LaptopFilter(a, b);
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

        public void GetAllLaptop()
        {
            DataTable dt = new DataTable();
            dt = bus.AllLaptop();
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllLaptop();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                int a = 0;
                int b = 2000000;
                if (FilterCost(a, b) == 0)
                {
                    GetAllLaptop();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllLaptop();
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
                    GetAllLaptop();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllLaptop();
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
                        GetAllLaptop();
                    }
                    else
                    {
                        FilterCost(a, b);
                    }
            }
            catch
            {
                GetAllLaptop();
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
                    GetAllLaptop();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllLaptop();
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
                    GetAllLaptop();
                }
                else
                {
                    FilterCost(a, b);
                }
            }
            catch
            {
                GetAllLaptop();
            }

        }
    }
}