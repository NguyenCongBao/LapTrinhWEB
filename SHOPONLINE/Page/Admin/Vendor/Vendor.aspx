<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Vendor.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Vendor.Vendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>DANH SÁCH NHÀ SẢN XUẤT</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-6">
                <asp:Button ID="btnThem" runat="server" Text="Thêm loại nhà sản xuất" CssClass="btn btn-warning" OnClick="btnThem_Click1" />
                <asp:Button ID="btnVendorNull" runat="server" Text="Ít triển vọng" CssClass="btn btn-warning" OnClick="btnVendorNull_Click"/>
            </div>
            <div class="col-md-6">
                <div class="input-group" style="align-items: center; position: relative">
                    <asp:TextBox ID="txtvendor" runat="server" CssClass="form-control" Placeholder="Tìm kiếm theo tên nhà cung cấp"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click">
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VendorID" Width="100%" Style="text-align:center;" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="VendorID" HeaderText="ID" />
                        <asp:BoundField DataField="VendorName" HeaderText="Tên loại" />
                        <asp:BoundField DataField="VendorState" HeaderText="Trạng thái" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                 <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" OnClick="btnUpdate_Click" Text="Sửa" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                               <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" OnClick="btnDelete_Click" Text="Xóa" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
