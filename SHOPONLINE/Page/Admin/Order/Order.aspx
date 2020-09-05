<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Order.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>ĐƠN HÀNG</h3>

                <hr style="width: 100%" />
            </div>
            <div class="col-md-6">
                <div class="input-group">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Đơn hàng</asp:ListItem>
                        <asp:ListItem Value="2">Đơn hàng đang xác nhận</asp:ListItem>
                        <asp:ListItem Value="3">Đơn hàng đã xác nhận</asp:ListItem>
                    </asp:DropDownList>
                    <div class="input-group-append">
                        <asp:Button ID="btnCheckOrder" runat="server" CssClass="btn btn-warning" OnClick="btnCheckOrder_Click" Text="Kiểm tra" />
                    </div>
                </div>
                
            </div>
            <div class="col-md-6">
                <div class="input-group" style="align-items: center; position: relative">
                    <asp:TextBox ID="txtSearchDateOrder" runat="server" CssClass="form-control" Placeholder="Tìm kiếm theo ngày"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click" >
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="OrderID" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" Style="text-align: center;">
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText="Mã hóa đơn" />
                        <asp:BoundField DataField="UserName" HeaderText="Người đặt" />
                        <asp:BoundField DataField="OrderDate" HeaderText="Ngày đặt" />
                        <asp:BoundField DataField="ReceiverPhone" HeaderText="Số điện thoại" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div style="text-align: center;">
                                    <asp:Button ID="btnDetail" runat="server" CssClass="btn btn-primary" OnClick="btnDetail_Click" Text="Xem chi tiết" />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div style="text-align: center;">
                                    <span onclick="return confirm('Bạn có chắc muốn xóa hóa đơn này không?')">
                                        <asp:Button ID="btnDeleteOrder" runat="server" CssClass="btn btn-danger" OnClick="btnDeleteOrder_Click" Text="Xóa" />
                                    </span>
                                </div>

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" />
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
