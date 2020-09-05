<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Order.OrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>CHI TIẾT HÓA ĐƠN</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-12">
                <asp:DataList ID="DataList1" runat="server" Width="50%">
                    <ItemTemplate>
                        <table class="table">
                            <tr>
                                <td>Người đặt:</td>
                                <td>
                                    <asp:Label ID="lbNguoiDat" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Người nhận:</td>
                                <td>
                                    <asp:Label ID="lbNguoiNhan" runat="server" Text='<%# Eval("ReceiverName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Ngày đặt:</td>
                                <td>
                                    <asp:Label ID="lbNgayDat" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Điện thoại:</td>
                                <td>
                                    <asp:Label ID="lbDienThoai" runat="server" Text='<%# Eval("ReceiverPhone") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>
                                    <asp:Label ID="lbEmail" runat="server" Text='<%# Eval("ReceiverEmail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Địa chỉ:</td>
                                <td>
                                    <asp:Label ID="lbAddress" runat="server" Text='<%# Eval("ReceiverAddress") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th>Hình thức thanh toán:</th>
                                <td>
                                    <b>
                                    <asp:Label ID="lbThanhToan" runat="server" Text='<%# Eval("PaymentName") %>'></asp:Label></b>
                                </td>
                                <tr>
                                    <th>Số tiền cần thu:</th>
                                    <td>
                                        <b>
                                        <asp:Label ID="lbTongTien" runat="server" Text='<%# Eval("TotalMoney") %>'></asp:Label></b>
                                    </td>
                                </tr>

                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>

            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="text-align:center;">
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="Tên sản phẩm" />
                        <asp:BoundField DataField="ProductCost" HeaderText="Giá" />
                        <asp:BoundField DataField="ProductQuantity" HeaderText="Số lượng" />
                        <asp:BoundField DataField="TongTien" HeaderText="Tiền" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-md-12" style="margin-top: 10px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="330px">
                    <asp:ListItem Value="1">Xác nhận</asp:ListItem>
                    <asp:ListItem Value="2">Đang xác nhận</asp:ListItem>
                    <asp:ListItem Value="3">Đã xác nhận</asp:ListItem>
                </asp:DropDownList>
                <div style="margin-top: 10px">
                    <asp:Button ID="btnUpdateStateOrder" runat="server" Text="Cập nhật trạng thái đơn hàng" CssClass="btn btn-warning" OnClick="btnUpdateStateOrder_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
