<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="vendorAdminView.aspx.cs" Inherits="SHOPONLINE.Page.Admin.BAO.vendorAdminView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .containere {
            width: 100%;
            padding-bottom:50px;
            padding-top:10px;
            padding-right:20px;
        }
            .containere > div {
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
            padding-right:20px;
        }
        container2 > div
        {
            display:inline-block;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="containere">
        <div class="div1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="226px" BorderStyle="Solid" BorderWidth="1px" CaptionAlign="Left" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VendorID" HeaderText="ID Of Vendor" />
                    <asp:BoundField DataField="VendorName" HeaderText="Name Of Vendor" />
                    <asp:BoundField DataField="VendorState" HeaderText="State Of Vendor" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <div class="div2">
            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <div style="padding-bottom:20px"> <asp:TextBox ID="txtID" runat="server" Width="254px"></asp:TextBox> </div>
            <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="padding-bottom:20px"> <asp:TextBox ID="txtName" runat="server" Width="254px"></asp:TextBox></div>
            <asp:RadioButton ID="rbtcon" runat="server" GroupName="state" Text="Có sản phẩm" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbthet" runat="server" GroupName="state" Text="Hết sản phẩm" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <div style="text-align: center; height: 69px; padding:10px">
                <asp:Button ID="btthem" runat="server" Text="Thêm" Width="100px" OnClick="btthem_Click" />
                <asp:Button ID="btsua" runat="server" Text="Sửa" Width="100px" OnClick="btsua_Click" /><br />
                <asp:Button ID="btxoa" runat="server" Text="Xóa" Width="100px" OnClick="btxoa_Click" />
                <asp:Button ID="bttimkiem" runat="server" Text="Tìm kiếm" Width="100px" OnClick="bttimkiem_Click" />
                <asp:Button ID="btxemchitiet" runat="server" OnClick="btxemchitiet_Click" Text="Chi tiết" Width="93px" />
            </div>
        </div>
    </div>
    <div class="container2">
        <div style="width: 372px; float: left;padding-left:150px">
            <asp:Button ID="btthongke2" runat="server" Text="TK Vendor hết sản phẩm" Width="253px" OnClick="btthongke2_Click1" />
            <br />
            <asp:GridView ID="GridView3" runat="server" Width="371px" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" OnPageIndexChanging="GridView3_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="VendorID" HeaderText="ID Of Vendor" />
                    <asp:BoundField DataField="VendorName" HeaderText="Name Of Vendor" />
                </Columns>
            </asp:GridView>
        </div>
        <div style="width: 371px;float:left;padding-left:300px">
             <asp:Button ID="btthongke1" runat="server" Text="TK top3 Vendor có nhiều sản phẩm" Width="300px" OnClick="btthongke1_Click" />
            <br />
            <asp:GridView ID="GridView2" runat="server" Width="425px" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" OnPageIndexChanging="GridView2_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="VendorID" HeaderText="ID Of Category" >
                    <ControlStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="VendorName" HeaderText="Name Of Category" >
                    <ControlStyle Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Amount" HeaderText="Amount Of Product" >
                    <ControlStyle Width="200px" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
        <br />
    </div>
</asp:Content>--%>
