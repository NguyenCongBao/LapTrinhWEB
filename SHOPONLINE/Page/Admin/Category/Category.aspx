<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="SHOPONLINE.Page.Admin.BAO.categoryAdminView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* .container {
            width: 100%;
            padding-bottom:50px;
        }

            .container > div {
                display: inline-block;
                height: 283px;
            }

        .div1 {
            float: right;
        }

        .div2 {
            float: left;
        }

        .container2 {
            position:relative;
            padding-top:50px;
            width: 101%;
            height: 192px;
            display:block;
            content:"";
            clear:both;
            top: 0px;
            left: 0px;
        }
        container2 > div
        {
            display:inline-block;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row" style="padding: 0 10px;">
            <div class="col-md-12">
                <h3>DANH MỤC SẢN PHẨM</h3>
                <hr style="width: 100%" />
            </div>
            <div class="col-md-6">
                <asp:Button ID="btnThemUser" runat="server" Text="Thêm loại sản phẩm" CssClass="btn btn-warning" OnClick="btnThemUser_Click" />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" OnClick="Button1_Click" Text="TOP 3 DANH MỤC" />
            </div>
            <div class="col-md-6">
                <div class="input-group" style="align-items: center; position: relative">
                    <asp:TextBox ID="txttenloai" runat="server" CssClass="form-control" Placeholder="Tìm kiếm theo tên loai hàng"></asp:TextBox>
                    <div class="input-group-append">
                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click1">
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID" Width="100%" Style="text-align: center;" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="2">
                    <Columns>
                        <asp:BoundField DataField="CategoryID" HeaderText="ID" />
                        <asp:BoundField DataField="CategoryName" HeaderText="Tên loại" />
                        <asp:BoundField DataField="CategoryState" HeaderText="Trạng thái" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" OnClick="btnUpdate_Click" Text="Sửa" />
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


            </div>

            <%-- <div class="col-md-12">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <div style="padding-bottom: 20px">
               <asp:TextBox ID="txtID" runat="server" Width="254px"></asp:TextBox>
           </div>
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="padding-bottom: 20px">
                <asp:TextBox ID="txtName" runat="server" Width="254px"></asp:TextBox>
            </div>
                <asp:RadioButton ID="rbtcon" runat="server" GroupName="state" Text="Có sản phẩm" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbthet" runat="server" GroupName="state" Text="Hết sản phẩm" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <div style="text-align: center; height: 69px; padding: 10px">
                    <asp:Button ID="btthem" runat="server" Text="Thêm" Width="100px" OnClick="btthem_Click" />
                    <asp:Button ID="btsua" runat="server" Text="Sửa" Width="100px" OnClick="btsua_Click" /><br />
                    <asp:Button ID="btxoa" runat="server" Text="Xóa" Width="100px" OnClick="btxoa_Click" />
                    <asp:Button ID="bttimkiem" runat="server" Text="Tìm kiếm" Width="100px" OnClick="bttimkiem_Click" />
                    <asp:Button ID="btchitiet" runat="server" OnClick="btchitiet_Click" Text="Chi tiết" Width="75px" />
                </div>
            </div>--%>
        </div>
    </div>

    <%--  <div class="container">
        <div style="width: 373px; float: left; padding-left: 150px">
            <asp:Button ID="btthongke2" runat="server" Text="TK Category hết sản phẩm" Width="300px" OnClick="btthongke2_Click1" />
            <br />
            <asp:GridView ID="GridView3" runat="server" Width="371px" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView3_PageIndexChanging" PageSize="3">
                <Columns>
                    <asp:BoundField DataField="CategoryID" HeaderText="ID Of Category" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Name Of Category" />
                </Columns>
            </asp:GridView>
        </div>
        <div style="width: 371px; float: left; padding-left: 300px">
            <asp:Button ID="btthongke1" runat="server" Text="TK top3 Category có nhiều sản phẩm" Width="300px" OnClick="btthongke1_Click" />
            <br />
            <asp:GridView ID="GridView2" runat="server" Width="425px" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging" PageSize="3">
                <Columns>
                    <asp:BoundField DataField="CategoryID" HeaderText="ID Of Category">
                        <ControlStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CategoryName" HeaderText="Name Of Category">
                        <ControlStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Amount" HeaderText="Amount Of Product">
                        <ControlStyle Width="200px" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <br />

    </div>--%>
</asp:Content>
