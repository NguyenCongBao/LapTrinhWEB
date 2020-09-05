<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="SHOPONLINE.Page.Admin.user.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" EnableEventValidation="True">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>TÀI KHOẢN NGƯỜI DÙNG</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-7">
                <div class="input-group">
                    <asp:Button ID="btnThemUser" runat="server" Text="Thêm người dùng" CssClass="btn btn-warning" OnClick="btnThemUser_Click" Style="margin-right:10px;"/>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="user">User</asp:ListItem>
                        <asp:ListItem Value="admin">Admin</asp:ListItem>
                        
                    </asp:DropDownList>
                    <div class="input-group-append">
                        <asp:Button ID="btnFilterRole" runat="server" CssClass="btn btn-warning" Text="Kiểm tra" OnClick="btnFilterRole_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="input-group" style="align-items: center; position: relative">
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" Placeholder="Tìm kiếm theo tên người dùng"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click">
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:GridView ID="GridView2" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="UserID" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Style="text-align: center;">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="Mã người dùng"></asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="Tên người dùng" />
                        <asp:BoundField DataField="Password" HeaderText="Mật khẩu" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Phone" HeaderText="Số điện thoại" />
                        <asp:BoundField DataField="Address" HeaderText="Địa chỉ" />
                        <asp:BoundField DataField="Role" HeaderText="Quyền hạn" />
                        <asp:BoundField DataField="UserState" HeaderText="Trạng thái" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Sửa" ID="btnSua" CssClass="btn btn-primary" OnClick="btnSua_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Xóa" ID="btnXoa" CssClass="btn btn-danger" OnClick="btnXoa_Click" />
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
