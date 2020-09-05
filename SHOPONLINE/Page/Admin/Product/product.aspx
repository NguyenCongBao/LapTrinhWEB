<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SHOPONLINE.Page.Admin.product.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>SẢN PHẨM</h3>
                <hr style="width: 100%;" />
            </div>

            <div class="col-md-7">

                <div class="input-group">
                    <asp:Button ID="btnThemSP" runat="server" Text="Thêm sản phẩm" CssClass="btn btn-warning" OnClick="btnThemSP_Click" Style="margin-right:10px;"/>
                    <asp:Button ID="Button1" runat="server" Text="Top 10 HOT" CssClass="btn btn-warning" OnClick="Button1_Click" Style="margin-right:10px;"/>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    <div class="input-group-append">
                        <asp:Button ID="btnFilterProduct" runat="server" CssClass="btn btn-warning"  Text="Kiểm tra" OnClick="btnFilterProduct_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="input-group" style="align-items: center; position: relative">
                    <asp:TextBox ID="txttensp" runat="server" CssClass="form-control" Placeholder="Tìm kiếm theo tên sản phẩm"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click">
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="ProductID" AutoGenerateColumns="False" Width="100%" Style="text-align: center;" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ID" />
                        <asp:BoundField DataField="ProductName" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo" ControlStyle-Width="80">
                            <ControlStyle Width="80px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Cost" HeaderText="Cost" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnSua" runat="server" CssClass="btn btn-primary" OnClick="btnSua_Click" Text="Sửa" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" OnClick="btnDelete_Click" Text="Xóa" />
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


                <br />
            </div>
        </div>
    </div>
</asp:Content>
