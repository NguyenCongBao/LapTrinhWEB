<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="SHOPONLINE.Page.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Thanh toán</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="100%" Style="text-align:center">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Tên" />
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Ảnh" ControlStyle-Width="80">
                        </asp:ImageField>
                        <asp:BoundField DataField="Cost" HeaderText="Giá" />
                        <asp:BoundField DataField="Quantity" HeaderText="Số lượng" />
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
            <div class="col-md-12">
                <p>
                    <b><span style="color: #417bff;">Tổng tiền:</span>
                        <asp:Label ID="lbTotalMoney" runat="server" Text="0"></asp:Label>
                    </b>
                </p>
            </div>
            <div class="col-md-7" style="border: 1px solid #417bff;">
                <div style="padding: 5px 10px;">
                    <%--<div class="col-md-12" style="background: #417bff; color: #fff; text-align: center; height: 50px; line-height: 50px; margin-bottom: 20px">
                        <b>ĐĂNG KÝ</b>
                    </div>--%>
                    <fieldset>
                        <legend><b>Thông tin khách hàng</b></legend>
                        <div class="form-group">
                            <label for="txtReceiverName"><b>Người nhận</b></label>
                            <asp:TextBox ID="txtReceiverName" runat="server" CssClass="form-control" onfocus="javascript:this.select();" TabIndex="1"></asp:TextBox>
                        </div>
                      
                        <div class="form-group">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7" style="padding-right: 5px">
                                        <label for="txtReceiverEmail"><b>Email</b></label>
                                        <asp:TextBox ID="txtReceiverEmail" runat="server" CssClass="form-control" TabIndex="4"></asp:TextBox>
                                    </div>
                                    <div class="col-md-5" style="padding-left: 5px">
                                        <label for="txtReceiverPhone"><b>Số điện thoại</b></label>
                                        <asp:TextBox ID="txtReceiverPhone" runat="server" CssClass="form-control" TabIndex="5"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txtReceiverAddress"><b>Địa chỉ</b></label>
                            <asp:TextBox ID="txtReceiverAddress" runat="server" CssClass="form-control" TabIndex="6"></asp:TextBox>
                            &nbsp;
                        </div>
                         <div class="form-group">
                            <label for="lbBookDate"><b>Ngày đặt: </b></label>
                             <asp:Label ID="lbBookDate" runat="server" Text=""></asp:Label>
                        </div>
                         <div class="form-group">
                            <label for="drdPayment"><b>Phương thức thanh toán</b></label>
                             <asp:DropDownList ID="drdPayment" runat="server" CssClass="form-control"></asp:DropDownList>
                            &nbsp;
                        </div>
                        
                        <div class="form-group" style="text-align: center">
                            <asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" CssClass="btn btn-warning" OnClick="btnXacNhan_Click" />
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
