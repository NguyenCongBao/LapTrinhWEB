<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SHOPONLINE.Page.Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* width */
        ::-webkit-scrollbar {
            width: 5px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #f3c20f;
        }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Hien thi top 5 dien thoai --%>
    <div class="container" style="margin-top: 30px;">
        <div class="row" style="border: 1px dotted #a5a9ac">
            <div class="col-md-2" style="background: #f3c20e; font-size: 20px; padding: 10px 5px;">
                <span style=""><b>ĐIỆN THOẠI</b></span>
            </div>
            <div class="col-md-10" style="text-align: right; padding: 10px 5px; font-size: 15px;">
                <span>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/AllPhone.aspx" Style="color: black;"><b>Xem tất cả  </b><img src="../Public/images/icons/next.png" /><img src="../Public/images/icons/next.png" /></asp:HyperLink>
                </span>
            </div>
        </div>
        <div class="row">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" Width="100%">
                <ItemTemplate>
                    <div class="container-fluid" style="border: 1px solid #f5f6fa;">

                        <div class="row">
                            <div>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' CssClass="img-fluid" />
                                </asp:HyperLink>
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
                                <div class="row" style="padding: 0 5px;">
                                    <div class="col-md-7">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "Cart.aspx?productid="+Eval("ProductID").ToString()+"&photo="+Eval("Photo")+"&productname="+Eval("ProductName")+"&cost="+Eval("Cost") %>' CssClass="btn btn-danger btn-sm">Thêm giỏ hàng</asp:HyperLink>
                                    </div>

                                    <div class="col-md-5" style="text-align: right;">

                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>' CssClass="btn btn-primary btn-sm">Chi tiết</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-left: 10px; margin-top: 5px; color: #636e72; font-size: 12px; height: 70px; border-top: 1px dashed #ecf0f1">
                                <img src="../Public/images/icons/notepad.png" /><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                            </div>
                        </div>

                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <%-- Hien thi top 5 laptop --%>
    <div class="container" style="margin-top: 30px;">
        <div class="row" style="border: 1px dotted #a5a9ac">
            <div class="col-md-2" style="background: #f3c20e; font-size: 20px; padding: 10px 5px;">
                <span style=""><b>LAPTOP</b></span>
            </div>
            <div class="col-md-10" style="text-align: right; padding: 10px 5px; font-size: 15px;">
                <span>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Page/AllLaptop.aspx" Style="color: black;"><b>Xem tất cả  </b><img src="../Public/images/icons/next.png" /><img src="../Public/images/icons/next.png" /></asp:HyperLink>
                </span>
            </div>
        </div>

        <div class="row">
            <asp:DataList ID="DataList2" runat="server" RepeatColumns="5" Width="100%" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                <ItemTemplate>
                    <div class="container-fluid" style="border: 1px solid #f5f6fa;">

                        <div class="row">
                            <div>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' CssClass="img-fluid" />
                                </asp:HyperLink>

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
                                <div class="row" style="padding: 0 5px;">
                                    <div class="col-md-7">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "Cart.aspx?productid="+Eval("ProductID").ToString()+"&photo="+Eval("Photo")+"&productname="+Eval("ProductName")+"&cost="+Eval("Cost") %>' CssClass="btn btn-danger btn-sm">Thêm giỏ hàng</asp:HyperLink>
                                    </div>

                                    <div class="col-md-5" style="text-align: right;">

                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>' CssClass="btn btn-primary btn-sm">Chi tiết</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-left: 10px; margin-top: 5px; color: #636e72; font-size: 12px; height: 70px; border-top: 1px dashed #ecf0f1">
                                <img src="../Public/images/icons/notepad.png" /><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                            </div>
                        </div>

                    </div>

                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <%-- Hien thi top 5 san pham mua nhieu nhat --%>
    <div class="container" style="margin-top: 30px; margin-bottom: 30px;">
        <div class="row" style="">
            <div class="col-md-4" style="background: #f3c20e; font-size: 20px; padding: 10px 5px; border: 1px dotted #a5a9ac">
                <span style=""><b>TOP SẢN PHẨM MUA NHIỀU NHẤT</b></span>
            </div>
            <div class="col-md-8" style="text-align: right; padding: 10px 5px; font-size: 15px;">
                <%-- <span>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Page/AllLaptop.aspx" Style="color: black;"><b>Xem tất cả  </b><img src="../Public/images/icons/next.png" /><img src="../Public/images/icons/next.png" /></asp:HyperLink>
                </span>--%>
            </div>
        </div>

        <div class="row">
            <asp:DataList ID="DataList3" runat="server" RepeatColumns="5" Width="100%" Style="border: 1px solid #f3c20f;">
                <ItemTemplate>
                    <div class="container-fluid" id="hover-product" style="border: 1px solid #f5f6fa; width: 210px; margin: 0 auto;">

                        <div class="row">
                            <div>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' CssClass="img-fluid" />
                                </asp:HyperLink>

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

                        <%--  <div class="row">
                            <div class="col-md-12" style="padding-left: 10px; margin-top: 5px; color: #636e72; font-size: 12px; height: 70px; border-top: 1px dashed #ecf0f1">
                                <img src="../Public/images/icons/notepad.png" /><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                            </div>
                        </div>--%>
                    </div>

                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <div class="container" style="margin-bottom: 20px;">
        <div class="row">
            <div class="col-md-8">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12" style="background: #f3c20f; border: 1px solid #bdc3c7; height: 50px; line-height: 50px; padding: 0px 5px;">
                            <span><b>Tin tức mới nhất</b></span>
                        </div>
                    </div>
                    <div class="row" style="max-height: 300px; overflow-y: scroll;">
                        <asp:DataList ID="DataList4" runat="server" Width="100%">
                            <ItemTemplate>
                                <div class="container-fluid" style="max-height: 120px; margin-top: 10px; /* border: 1px solid red; */">
                                    <div class="row">
                                        <div class="col-md-3" style="/*border: 1px solid red; */ max-width: 100px">
                                            <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("NewsPhoto") %>' />
                                        </div>
                                        <div class="col-md-9" style="/*border: 1px solid blue; */">
                                            <div class="container-fluid" style="">
                                                <div class="row" style="padding: 0px 10px;">
                                                    <div class="col-md-12">
                                                        <span style="font-weight: bold; font-size: 18px">
                                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "DetailNews.aspx?newsid="+Eval("NewsID").ToString() %>' Text='<%# Eval("NewsName") %>'>HyperLink</asp:HyperLink><br />
                                                        </span>

                                                    </div>
                                                    <%-- <div class="col-md-12" style="word-wrap: break-word; text-align: justify; color: #7f8c8d; height: 100px; overflow: hidden;">
                                                        <asp:Label ID="lbDes" runat="server" Text='<%# Eval("NewsDescription") %>'></asp:Label><br />
                                                    </div>--%>
                                                    <div class="col-md-12" style="margin-top: 10px;">
                                                        <cite>Ngày soạn:
                                                    <asp:Label ID="lbDate" runat="server" Text='<%# Eval("NewsDate").ToString() %>'></asp:Label><br />
                                                        </cite>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <cite>Tác giả:
                                                    <asp:Label ID="lbAuthor" runat="server" Text='<%# Eval("NewsAuthor").ToString() %>'></asp:Label><br />
                                                        </cite>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="container">
                    <div class="row">
                        <div class="fb-page img-fluid"
                            data-href="https://www.facebook.com/ndn.shop24h/"
                            data-tabs="messages"
                            data-width="380"
                            data-height="350"
                            data-small-header="true">
                            <div class="fb-xfbml-parse-ignore">
                                <blockquote></blockquote>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
