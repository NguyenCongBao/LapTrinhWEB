<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="SHOPONLINE.Page.Admin.Product.UpdateProduct1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>SỬA SẢN PHẨM</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-10" style="margin: 0 auto;">
                <table class="table table-bordered">
                    <tr>
                        <th>ID</th>
                        <th>
                            <asp:TextBox ID="txtProductID" runat="server" Enabled="False"></asp:TextBox><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Nhà sản xuất</th>
                        <th>
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Loại sản phẩm</th>
                        <th>
                            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Mô tả</th>
                        <th>
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" Width="50%"></asp:TextBox><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Ảnh</th>
                        <th>
                            <asp:FileUpload ID="FileUploadAnh" runat="server" />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Tên ảnh cũ:"></asp:Label>
                            <asp:Label ID="lbImage" runat="server" Text="Label"></asp:Label>
                            <br />
                        </th>
                    </tr>
                    <tr>
                        <th>Số lượng</th>
                        <th>
                            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Giá</th>
                        <th>
                            <asp:TextBox ID="txtCost" runat="server"></asp:TextBox><br />
                        </th>
                    </tr>
                    <tr>
                        <th>Trạng thái</th>
                        <th>
                            <asp:CheckBox ID="chbState" runat="server" />
                            Hoạt động</th>
                    </tr>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Cập nhật" CssClass="btn btn-primary" />
                        </th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
