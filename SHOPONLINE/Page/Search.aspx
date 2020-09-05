<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="SHOPONLINE.Page.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tìm kiếm sản phẩm</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 30px;">
        <div class="row">
            <div class="col-md-12">
                <p><b>KẾT QUẢ TÌM KIẾM: <span style="color: #417bff">
                    <asp:Label ID="lbSearchResult" runat="server"></asp:Label></span></b></p>
            </div>
        </div>
        <div class="row">
            <asp:DataList ID="DataListSearch" runat="server" RepeatColumns="5" Style="border: 1px solid #417bff;" Width="100%">
                <ItemTemplate>
                    <div class="container-fluid" style="border: 1px solid #f5f6fa; width: 210px; margin: 5px auto;">

                        <div class="row">
                            <div>
                                <div>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' CssClass="img-fluid" />
                                </asp:HyperLink>
                            </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="font-weight: bold; text-align: center;">
                                <asp:HyperLink ID="ProductName" runat="server" Text='<%# Eval("ProductName") %>' NavigateUrl='<%# "DetailProduct.aspx?id="+Eval("ProductID").ToString() %>'></asp:HyperLink>
                            </div>
                            <div class="col-md-12" style="font-weight: bold; text-align: center;">
                                <asp:Literal ID="Literal2" runat="server" Text='<%# String.Format("{0:000,0 <sup>VNĐ<sup>}", Eval("Cost")) %>'></asp:Literal>
                            </div>
                            <div class="container-fluid">
                                <div class="row" style="padding: 5px 5px;">
                                    <div class="col-md-7">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "Cart.aspx?productid="+Eval("ProductID").ToString()+"&photo="+Eval("Photo")+"&productname="+Eval("ProductName")+"&cost="+Eval("Cost") %>' CssClass="btn btn-danger btn-sm">Thêm giỏ hàng</asp:HyperLink>
                                    </div>

                                    <div class="col-md-5" style="text-align: right;">

                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>' CssClass="btn btn-primary btn-sm">Chi tiết</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<div class="row">
                            <div class="col-md-12" style="padding-left: 10px; margin-top: 5px; color: #636e72; font-size: 12px; height: 70px; border-top: 1px dashed #ecf0f1">
                                <img src="../Public/images/icons/notepad.png" /><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                            </div>
                        </div>--%>

                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Home.aspx"><span>&lt;-- Trở về trang chủ</span></asp:HyperLink>
        </div>
    </div>
</asp:Content>
