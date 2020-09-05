using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS.BAO;
using DTO.BAO;
namespace SHOPONLINE.Page.Admin.BAO
{
    public partial class vendorAdminView : System.Web.UI.Page
    { 
    BAO_BUS_VENDOR bao_bus = new BAO_BUS_VENDOR();
    protected void Page_Load(object sender, EventArgs e)
    {
        load();
    }
    public void load()
    {
        GridView1.DataSource = bao_bus.getAllVendor();
        GridView1.DataBind();
    }
    protected void btthem_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "" && txtName.Text != "" && (rbtcon.Checked || rbthet.Checked))
            {
                int n = 0;
                if (int.TryParse(this.txtID.Text, out n))
                {
                    if (!bao_bus.checkIDVendor(Int32.Parse(txtID.Text)))
            {
                  
                        vendor v = new vendor();
                        v.VendorID = Int32.Parse(txtID.Text);
                        v.VendorName = txtName.Text;
                        if (rbtcon.Checked)
                            v.VendorState = true;
                        if (rbthet.Checked)
                            v.VendorState = false;
                        bao_bus.insertVendor(v);
                        Response.Write("<script>alert('Thêm thành công!')</script>");
                        load();
                    }
                    else
                    {
                        Response.Write("<script>alert('Trùng mã rồi!')</script>");
                    }
                }
          
             else
                {
                    Response.Write("<script>alert('ID là số nguyên')</script>");
                }
            }
        else
        {
            Response.Write("<script>alert('Không được bỏ trống!')</script>");

        }
    }

    protected void btsua_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "" && txtName.Text != "" && (rbtcon.Checked || rbthet.Checked))
            {
                int n = 0;
                if (int.TryParse(this.txtID.Text, out n))
                {
                    if (bao_bus.checkIDVendor(Int32.Parse(txtID.Text)))
            {
                   
                        vendor v = new vendor();
                        v.VendorID = Int32.Parse(txtID.Text);
                        v.VendorName = txtName.Text;
                        if (rbtcon.Checked)
                            v.VendorState = true;
                        if (rbthet.Checked)
                            v.VendorState = false;
                        bao_bus.updateVendor(v);
                        Response.Write("<script>alert('Sửa thành công!')</script>");
                        load();
                    }
                    else
                    {
                        Response.Write("<script>alert('Không có mã này rồi!')</script>");
                    }
                }
           
             else
                {
                    Response.Write("<script>alert('ID là số nguyên')</script>");
                }
            }
        else
        {
            Response.Write("<script>alert('Không được bỏ trống!')</script>");
        }
    }

    protected void btxoa_Click(object sender, EventArgs e)
    {
        if (txtID.Text != "")
        {
                int n = 0;
                if (int.TryParse(this.txtID.Text, out n))
                {
                    if (bao_bus.checkIDVendor(Int32.Parse(txtID.Text)))
                     {
                    
                        vendor v = new vendor();
                        v.VendorID = Int32.Parse(txtID.Text);
                        bao_bus.deleteVendor(v.VendorID);
                        Response.Write("<script>alert('Xóa thành công!')</script>");
                        load();
                    }
                    else
                    {
                        Response.Write("<script>alert('ID là số nguyên')</script>");
                    }
                }
            else
            {
                Response.Write("<script>alert('Không có mã này rồi!')</script>");
            }
                
            }
        else
        {
            Response.Write("<script>alert('Điền ID để xóa!')</script>");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtID.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        txtName.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
    }

    protected void bttimkiem_Click(object sender, EventArgs e)
    {
        if (txtID.Text == "")
        {
            Response.Write("<script>alert('Điền ID để tìm kiếm!')</script>");
        }
        else
        {
                int n = 0;
                if (int.TryParse(this.txtID.Text, out n))
                {
                    if (bao_bus.checkIDVendor(Int32.Parse(txtID.Text)))
                    {
                        GridView1.DataSource = bao_bus.getVendorByID(Int32.Parse(txtID.Text));
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Không có mã này rồi!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('ID là số nguyên')</script>");
                }
            }
    }

    protected void btthongke1_Click(object sender, EventArgs e)
    {
        GridView2.DataSource = bao_bus.getTop3Vendor();
        GridView2.DataBind();
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void btthongke2_Click1(object sender, EventArgs e)
    {
        GridView3.DataSource = bao_bus.getVendorNull();
        GridView3.DataBind();
    }
}
    }
