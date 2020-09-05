<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="SHOPONLINE.Page.Admin.News.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>TIN TỨC</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-6">
                <asp:Button ID="btnThemTinTuc" runat="server" CssClass="btn btn-warning" Text="Thêm tin tức" OnClick="btnThemTinTuc_Click" />
            </div>
            <div class="col-md-6">
                 <div class="input-group" style="align-items: center; position: relative">
                    <asp:TextBox ID="txtnews" runat="server" CssClass="form-control" Placeholder="Tìm kiếm theo tên tin tức"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click">
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="NewsID" Style="text-align:center;">
                    <Columns>
                        <asp:BoundField DataField="NewsID" HeaderText="ID" />
                        <asp:ImageField DataImageUrlField="NewsPhoto" HeaderText="Ảnh" ControlStyle-Width="80">
                        </asp:ImageField>
                        <asp:BoundField DataField="NewsName" HeaderText="Tiêu đề" />
                        <asp:BoundField DataField="NewsDescription" HeaderText="Mô tả" />
                        <asp:BoundField DataField="NewsDate" HeaderText="Ngày soạn" />
                        <asp:BoundField DataField="NewsState" HeaderText="Trạng thái" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnXem" runat="server" Text="Sửa" CssClass="btn btn-primary" OnClick="btnXem_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnXoa" runat="server" Text="Xóa" CssClass="btn btn-danger" OnClick="btnXoa_Click" />
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
    </div>
</asp:Content>
