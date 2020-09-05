<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="SHOPONLINE.Page.Admin.NguyenTheMinhNgoc.InsertProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 215px;
        }
        .auto-style3 {
            width: 215px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Mã sản phẩm:</td>
            <td>
                <asp:TextBox ID="txtMasp" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mã nhà sản xuất:</td>
            <td>
                <asp:DropDownList ID="ddrMansx" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mã loại:</td>
            <td>
                <asp:DropDownList ID="ddrMaloai" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tên sản phẩm:</td>
            <td>
                <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Miêu tả:</td>
            <td>
                <asp:TextBox ID="txtMieuta" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Hình ảnh:</td>
            <td>
                <asp:FileUpload ID="FileUploadAnh" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Số lượng:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtSoluong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Giá:</td>
            <td>
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Amout:</td>
            <td>
                <asp:TextBox ID="txtAmout" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Trạng thái</td>
            <td>
                <asp:DropDownList ID="ddrState" runat="server">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="0"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btn_Them" runat="server" Text="Thêm" OnClick="btn_Them_Click" />
                <asp:Button ID="btn_Nhaplai" runat="server" Text="Nhập lại" />
            </td>
        </tr>
    </table>
    &nbsp;<asp:GridView ID="dtgProduct" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="Tên sản phẩm" SortExpression="ProductName" />
            <asp:BoundField DataField="Cost" HeaderText="Giá sản phẩm" />
            <asp:BoundField DataField="Description" HeaderText="Miêu tả" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Hình ảnh" ControlStyle-Width="80">
<ControlStyle Width="80px"></ControlStyle>
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="ChiTiet" HeaderText="Chi Tiết" Text="Xem chi tiết" />
        </Columns>
    </asp:GridView>
</asp:Content>
