<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="SHOPONLINE.Page.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Giỏ hàng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <br />
                <p style="font-size: 25px"><b>Giỏ hàng của bạn</b></p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="100%" Style="text-align: center" DataKeyNames="ID">
                    <Columns>

                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Tên sản phẩm" />
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Ảnh" ControlStyle-Width="80">
                            <ControlStyle Width="80px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Cost" HeaderText="Giá" />
                        <asp:TemplateField HeaderText="Số lượng">
                            <ItemTemplate>
                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TotalMoney" DataFormatString="{0:C}" HeaderText="Tổng tiền" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnUpdateCart" runat="server" Text="Sửa" CssClass="btn btn-primary" OnClick="btnUpdateCart_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" Text="Xóa" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
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
        <div class="row" style="margin-top: 10px; border-bottom: 1px solid #cc9965;">
            <div class="col-md-12">
                <p>
                    <b><span style="color: #417bff;">Tổng tiền:</span>
                        <asp:Label ID="lbTotalMoney" runat="server" Text="0"></asp:Label>
                    </b>
                </p>
            </div>
            <div class="col-md-6">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success btn-lg" Style="border-radius: 0" NavigateUrl="~/Page/Home.aspx">Tiếp tục mua sắm</asp:HyperLink>

                <span onclick="return confirm('Bạn có chắc muốn xóa giỏ hàng không?')">
                    <asp:Button ID="btnDeleteAllCart" runat="server" Text="Xóa giỏ hàng" CssClass="btn btn-danger btn-lg" Style="border-radius: 0" OnClick="btnDeleteAllCart_Click" />
                </span>
            </div>
            <div class="col-md-6" style="text-align: right;">
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-primary btn-lg" NavigateUrl="~/Page/Order.aspx" Style="border-radius: 0">Đặt hàng</asp:HyperLink>
            </div>
        </div>
    </div>

</asp:Content>
