<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Public/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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

                        </div>
                        <div class="form-group" style="text-align: center">
                            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" CssClass="btn btn-primary" OnClick="btnDangNhap_Click"  />
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
