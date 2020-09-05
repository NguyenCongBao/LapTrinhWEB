<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SHOPONLINE.Page.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng ký</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row" style="margin: 50px 0px">
            <div class="col-md-6" style="margin: 0 auto; border: 1px solid #417bff; border-radius:5px;">
                <div style="padding: 5px 10px;">
                    <div class="col-md-12" style="background: #417bff; color: #fff; text-align: center; height: 50px; line-height: 50px; margin-bottom: 20px">
                        <b>ĐĂNG KÝ</b>
                    </div>
                    <div class="form-group">
                        <label for="txtUsername"><b>Tên đăng nhập</b></label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" onfocus="javascript:this.select();" TabIndex="1"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPassword"><b>Mật khẩu</b></label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" TabIndex="2"></asp:TextBox>
                        &nbsp;
                    </div>
                    <div class="form-group">
                        <label for="txtConfirm"><b>Xác nhận mật khẩu</b></label>
                        <asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control" TextMode="Password" TabIndex="3"></asp:TextBox>
                        <span id="confirmPasswrod" style="color: red;"></span>
                    </div>
                    <div class="form-group">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-7" style="padding-right: 5px">
                                    <label for="txtEmail"><b>Email</b></label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TabIndex="4"></asp:TextBox>
                                </div>
                                <div class="col-md-5" style="padding-left: 5px">
                                    <label for="txtPhone"><b>Số điện thoại</b></label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TabIndex="5"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtAddress"><b>Địa chỉ</b></label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TabIndex="6"></asp:TextBox>
                        &nbsp;
                    </div>

                    <div class="form-group" style="text-align: center">
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" CssClass="btn btn-primary" OnClick="btnDangKy_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
