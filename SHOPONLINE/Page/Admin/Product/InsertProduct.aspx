<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Product.InsertProduct1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>THÊM SẢN PHẨM</h3>
                <hr style="width: 100%" />
            </div>
            <table class="table table-bordered">
                <tr>
                    <th>Nhà sản xuất</th>
                    <th>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
                    </th>
                </tr>
                <tr>
                    <th>Loại sản phẩm</th>
                    <th>
                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><br />
                    </th>
                </tr>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
                    </th>
                </tr>
                <tr>
                    <th>Mô tả</th>
                    <th>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" Width="50%"></asp:TextBox><br />
                    </th>
                </tr>
                <tr>
                    <th>Ảnh</th>
                    <th>
                        <asp:FileUpload ID="FileUploadAnh" runat="server" />
                        <br />
                    </th>
                </tr>
                <tr>
                    <th>Số lượng</th>
                    <th>
                        <asp:TextBox ID="txtQuantity" runat="server">0</asp:TextBox><br />
                    </th>
                </tr>
                <tr>
                    <th>Giá</th>
                    <th>
                        <asp:TextBox ID="txtCost" runat="server">0</asp:TextBox><br />
                    </th>
                </tr>
                <tr>
                    <th>Trạng thái</th>
                    <th>
                        <asp:CheckBox ID="chbState" runat="server" />
                        Hoạt động</th>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center;">
                        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Thêm" CssClass="btn btn-primary" style="height: 31px" />
                        &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnReset" runat="server" Text="Nhập lại" CssClass="btn btn-primary" OnClick="btnReset_Click" />
                    </th>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
