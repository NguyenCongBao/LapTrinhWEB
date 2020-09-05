<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="InsertUser.aspx.cs" Inherits="SHOPONLINE.Page.Admin.User.InsertUser1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>THÊM NGƯỜI DÙNG</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th class="auto-style1">Tên người dùng</th>
                        <td>
                            <asp:TextBox ID="txtTen" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Mật khẩu</th>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Email</th>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style2">Số điện thoại</th>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtSdt" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Địa chỉ</th>
                        <td>
                            <asp:TextBox ID="txtDiachi" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Quyền hạn</th>
                        <td>
                            <asp:TextBox ID="txtRole" runat="server" Width="500px" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Trạng thái</th>
                        <td>
                            <asp:CheckBox ID="chbState" runat="server" /> Active
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Thêm" CssClass="btn btn-warning"  />
                            &nbsp;&nbsp;
                            <asp:Button ID="btnInsert0" runat="server" OnClick="btnInsert_Click" Text="Nhập lại" CssClass="btn btn-danger" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
