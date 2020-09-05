<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="InsertVendor.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Vendor.InsertVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>THÊM NHÀ SẢN XUẤT</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th>Tên nhà sản xuất</th>
                        <th>
                            <asp:TextBox ID="txtVendorName" runat="server" CssClass="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>Trạng thái</th>
                        <th>
                            <asp:CheckBox ID="chbstatus" runat="server" />&nbsp; Active</th>
                    </tr>

                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="btnThem" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btnThem_Click"  />
                            &nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Nhập lại" CssClass="btn btn-primary" OnClick="btnReset_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
