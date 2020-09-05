<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="SHOPONLINE.Page.Header" %>
<div id="header" class="container-fluid" style="background: #f2f2f2;">
    <div class="container">
        <div class="row">
            <div class="col-md-8" style="/*border: 1px solid green; */">
                <ul class="intro">
                    <li>
                        <a href="Home.aspx">
                            <div style="position: relative">
                                <img src="../Public/images/icons/star.png" style="margin-top: -5px;" />
                                SHOP 24H
                            </div>
                        </a>
                    </li>
                    <li>| Đã truy cập: <span style="color: #4cd137; font-weight: bold;">
                        <asp:Label ID="lbSLTC" runat="server" Text="Label"></asp:Label></span></li>
                    <li>| Đang online:
                        <span style="color: #4cd137; font-weight: bold;">
                            <asp:Label ID="lbOL" runat="server" Text="Label"></asp:Label>
                        </span></li>
                    <li>
                        <asp:HyperLink ID="HyperLinkRegister" runat="server" NavigateUrl="~/Page/Register.aspx">

                            <asp:Label ID="lbRegister" runat="server" Text="| Đăng ký"></asp:Label>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click">| Đăng xuất</asp:LinkButton>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/Page/Login.aspx">
                            <asp:Label ID="lbUserName" runat="server" Text="| Đăng nhập"></asp:Label>
                        </asp:HyperLink>
                    </li>
                </ul>
            </div>
            <div class="col-md-4" <%--style="border: 1px solid green;text-align:right;"--%>>
                <ul class="intro" style="float: right;">
                    <li>
                        <img src="../Public/images/icons/hotline.png" style="margin-top: -5px;" />
                        <b>Hotline: 039.644.7901</b></li>
                    <li>
                        <div style="padding-left: 50px; margin-top: -2px;">
                            <div class="fb-like" data-href="https://www.facebook.com/ndn.shop24h" data-width="" data-layout="button" data-action="like" data-size="small" data-share="true"></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="row" style="background: #f3c20e">
        <div class="container">
            <div class="row">
                <div class="col-md-5" style="/*border: 1px solid green; */ background: #020001;">
                    <div class="container-fluid">
                        <div class="row" style="margin-top: 15px;">
                            <div class="col-md-5" style="/*border: 1px solid #f3c20e; */ padding: 0 10px;">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Home.aspx"><img src="../Public/images/banner/logo.png" /></asp:HyperLink>
                            </div>
                            <div class="col-md-7" style="/*border: 1px solid blue; */ padding: 0 10px;">
                                <div class="input-group" style="align-items: center; position: relative">

                                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>
                                    <div class="input-group-append">
                                        <asp:LinkButton ID="LinkButtonSearch" runat="server" Text="Search" CssClass="btn btn-warning" OnClick="LinkButtonSearch_Click">
                                        </asp:LinkButton>
                                    </div>

                                    <%--<asp:LinkButton ID="LinkButtonSearch" runat="server" OnClick="LinkButtonSearch_Click"">
                                        <img src="../Public/images/icons/search.png" width="25px" height="25px" style="position:absolute;top:10px;right:5px;z-index:9999;background:#fff;"/>

                                    </asp:LinkButton>--%>
                                </div>
                                <!-- /input-group -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-7">
                    <ul class="menu">
                        <li>
                            <a href="AllPhone.aspx">
                                <div id="icon-phone">
                                    <img src="../Public/images/icons/telephone.png" />
                                </div>
                                <div>
                                    ĐIỆN THOẠI
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="AllLaptop.aspx">
                                <div id="icon-laptop">
                                    <img src="../Public/images/icons/laptop.png" />
                                </div>
                                <div>
                                    LAPTOP
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="News.aspx">
                                <div id="icon-newspaper">
                                    <img src="../Public/images/icons/news.png" />
                                </div>
                                <div>
                                    TIN TỨC
                                </div>
                            </a>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Page/Admin/index.aspx">
                                <div id="icon-ipad">
                                    <img src="../Public/images/icons/settings.png" />
                                </div>
                                <div>
                                    ADMIN
                                </div>
                            </asp:HyperLink>
                        </li>
                        <li>
                            <a href="Accessories.aspx">
                                <div id="icon-accessories">
                                    <img src="../Public/images/icons/accessories.png" />
                                </div>
                                <div>
                                    LINH KIỆN
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="Repair.aspx">
                                <div id="icon-repair">
                                    <img src="../Public/images/icons/ipad.png" />
                                </div>
                                <div>
                                    SỬA CHỮA
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="Contact.aspx">
                                <div id="icon-contact">
                                    <img src="../Public/images/icons/contacts.png" />
                                </div>
                                <div>
                                    LIÊN HỆ
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>

</div>
