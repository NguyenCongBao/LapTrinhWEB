<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SHOPONLINE.Page.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Đăng nhập</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="margin: 50px 0px">

            <div class="col-md-6" style="margin: 0 auto; border: 1px solid #417bff">
                <div style="padding: 5px 10px;">
                    <div class="col-md-12" style="background: #417bff; color: #fff; text-align: center; height: 50px; line-height: 50px; margin-bottom: 20px">
                        <b>ĐĂNG NHẬP</b>
                    </div>
                    <div class="form-group">
                        <label for="txtUsername"><b>Tên đăng nhập</b></label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPassword"><b>Mật khẩu</b></label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" TabIndex="2"></asp:TextBox>
                        &nbsp;

                    </div>
                    <div class="form-group" style="text-align: center">
                        <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" CssClass="btn btn-primary" OnClick="btnDangNhap_Click" />
                        <p>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Register.aspx">Chưa có tài khoản ?</asp:HyperLink>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
