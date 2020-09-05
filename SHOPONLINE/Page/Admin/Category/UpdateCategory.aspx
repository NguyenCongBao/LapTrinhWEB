<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateCategory.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Category.UpdateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>SỬA LOẠI SẢN PHẨM</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-12">
                <table class="table table-bordered">
                     <tr>
                        <th>ID</th>
                        <th>
                            <asp:TextBox ID="txtCategoryID" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>Tên loại sản phẩm</th>
                        <th>
                            <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>Trạng thái</th>
                        <th> <asp:CheckBox ID="chbstatus" runat="server"/>&nbsp; Active</th>
                    </tr>
                   
                    <tr>
                        <th colspan="2" style="text-align:center;">
                            <asp:Button ID="btnSave" runat="server" Text="Lưu lại" CssClass="btn btn-warning" OnClick="btnSave_Click" />
                            <asp:Button ID="btnCancel" runat="server" Text="Hủy bỏ" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
                        </th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
