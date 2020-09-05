<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateNews.aspx.cs" Inherits="SHOPONLINE.Page.Admin.News.Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>SỬA TIN TỨC</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-12">
                <table class="table table-bordered">
                    <tr>
                        <th class="auto-style1">NewsID</th>
                        <td>
                            <asp:TextBox ID="txtID" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Tiêu đề</th>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Mô tả</th>
                        <td>
                            <asp:TextBox ID="txtDes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Nội dung</th>
                        <td>
                            <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Rows="7" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Tác giả</th>
                        <td>
                            <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Ảnh</th>
                        <td>
                            <asp:FileUpload ID="FileUploadAnh" runat="server" />
                            <br />
                            Ảnh cũ:
                <asp:Label ID="lbImage" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <th class="auto-style1">Ngày soạn</th>
                        <td>
                            <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th class="auto-style1">Trạng thái</th>
                        <td>
                            <asp:CheckBox ID="chbState" runat="server" />
                            Active
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="btnUpdate" runat="server" Text="Lưu" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuy" runat="server" Text="Hủy" CssClass="btn btn-primary" OnClick="btnHuy_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>


</asp:Content>
