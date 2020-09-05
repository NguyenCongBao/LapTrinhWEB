<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="SHOPONLINE.Page.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Tin tức</title>
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
    <div class="container" style="/*border: 1px solid green; */">
        <div class="row" style="border: 1px dotted #a5a9ac; margin-top: 30px;">
            <div class="col-md-8" style="background: #f3c20e; font-size: 20px; height: 50px; line-height: 50px; padding: 0px 5px;">
                <span style=""><b>TIN TỨC: BẠN CHƯA BIẾT ?</b></span>
            </div>
            <div class="col-md-4 " style="background: #417bff; border: 1px solid #bdc3c7; height: 50px; line-height: 50px; padding: 0px 5px;">
                <b>BÀI VIẾT MỚI NHẤT</b>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8" style="border: 1px solid #bdc3c7; border-right: none;">
                <asp:DataList ID="DataList1" runat="server" Width="100%">
                    <ItemTemplate>
                        <div class="container-fluid" style="height: 210px; margin-top: 10px; /*border: 1px solid red; */">
                            <div class="row">
                                <div class="col-md-3" style="/*border: 1px solid red; */">
                                    <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("NewsPhoto") %>' />
                                </div>
                                <div class="col-md-9" style="/*border: 1px solid blue; */">
                                    <div class="container-fluid" style="">
                                        <div class="row" style="padding: 0px 10px;">
                                            <div class="col-md-12">
                                                <span style="font-weight: bold; font-size: 20px">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "DetailNews.aspx?newsid="+Eval("NewsID").ToString() %>' Text='<%# Eval("NewsName") %>'>HyperLink</asp:HyperLink><br />
                                                </span>

                                            </div>
                                            <div class="col-md-12" style="word-wrap: break-word; text-align: justify; color: #7f8c8d; height: 100px; overflow: hidden;">
                                                <asp:Label ID="lbDes" runat="server" Text='<%# Eval("NewsDescription") %>'></asp:Label><br />
                                            </div>
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

            <div class="col-md-4" style="border: 1px solid #bdc3c7;">
                <div class="container-fluid">
                    <div class="row">
                        <asp:DataList ID="DataList2" runat="server" Width="100%">
                            <ItemTemplate>
                                <div class="container-fluid" style="height: 120px; margin-top: 10px; /* border: 1px solid red; */">
                                    <div class="row">
                                        <div class="col-md-3" style="/*border: 1px solid red; */">
                                            <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("NewsPhoto") %>' />
                                        </div>
                                        <div class="col-md-9" style="/*border: 1px solid blue; */">
                                            <div class="container-fluid" style="">
                                                <div class="row" style="padding: 0px 10px;">
                                                    <div class="col-md-12">
                                                        <span style="font-weight: bold; font-size: 20px">
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
        </div>
    </div>
</asp:Content>
