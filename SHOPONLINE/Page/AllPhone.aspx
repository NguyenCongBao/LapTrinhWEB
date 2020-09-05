<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="AllPhone.aspx.cs" Inherits="SHOPONLINE.Page.AllPhone" %>

<%@ Register Src="~/Page/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Điện thoại</title>
    <style type="text/css">
        .auto-style1 {
            height: 2378px;
            width: 1355px;
            margin-left: 150px;
            margin-top: 15px;
        }

        .auto-style2 {
            height: 80px;
            width: 100%;
            border-bottom: solid 2px #f2f4f3;
        }

        ul {
            padding: 0px;
            margin: 0px;
            list-style-type: none;
        }

        .mn2 {
            background-color: #d7d7d7;
        }

            .mn2 .c {
                float: left;
                padding: 10px;
                font-weight: bold;
                color: #000000;
            }

        .divmn2 {
            background-color: #f2f2f2;
            height: 42px;
            width: 1200px;
        }

        .n {
            color: #333;
            text-decoration: none;
        }

        .ga {
            display: block;
            height: 1px;
            background-color: #e1e2e4;
            border-bottom: solid 1px #d2d3d5;
            margin-bottom: 15px;
            margin-right: 155px;
        }

        .filter {
            width: 100%;
            clear: both;
            display: block;
            position: relative;
            margin-bottom: 10px;
        }

            .filter .crp {
                padding: 10px 0;
            }

            .filter li {
                padding: 5px 10px 5px 0;
                position: relative;
                display: inline-block;
            }

            .filter * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

        .cri {
            cursor: pointer;
            display: inline-block;
            padding-right: 23px;
            position: relative;
        }

        .d1p {
            border-bottom: solid 2px #ffe181;
            height: 18px;
            overflow: hidden;
            margin-bottom: 15px;
            margin-right: 155px;
        }

            .d1p h1 {
                float: left;
                background-color: #fff;
                position: absolute;
                z-index: 1;
                font-size: 20px;
                padding-right: 10px;
            }

        .pul {
            margin-top: 20px;
            height: 1000px;
            width: 1200px;
            border: solid 1px #ededed;
        }

        .cc {
            float: left;
            width: 208px;
            height: 290px;
            overflow: hidden;
            position: relative;
            padding: 15px;
            border: solid 1px #ededed;
            background-color: aqua;
        }

        .pul .t {
            padding-right: 60px;
            display: block;
            padding-top: 10px;
            font-size: 13px;
        }

        .bb {
            display: block;
            color: #ee1b24;
            padding-top: 10px;
            font-size: 15px;
        }

        .dd {
            position: absolute;
            left: 0px;
            bottom: 0px;
            padding: 15px 5px 15px 15px;
            width: 218px;
            overflow: hidden;
            color: #6e6e6e;
        }

        .allproduct {
            height: auto;
            width: 200px;
            background-color: red;
        }

        .imgallphone {
            display: block;
            width: 150px;
            height: 150px;
            margin: auto;
        }

        img {
            max-width: 150px;
            max-height: 150px;
        }

        .content {
            min-height: 700px;
        }

        .row {
            margin-left: -15px;
            margin-right: -15px;
        }

        *[class*='col'] {
            float: left;
            padding: 0 15px;
        }

        .col-25 {
            width: 25%;
        }

        .col-75 {
            width: 75%;
        }

        .col-33 {
            width: 280px;
            height: 410px;
            float: left;
        }

        .item-product {
            position: relative;
            padding: 20px;
            overflow: hidden;
            margin-bottom: 30px;
            text-align: center;
            box-shadow: 1px 2px 10px rgba(0, 0, 0, .6);
        }

        .hover-info {
            position: absolute;
            color: #fff;
            top: -100%;
            left: 0;
            padding: 15px;
            width: 100%;
            height: 100%;
            z-index: 10;
            text-align: left;
            background: rgba(0, 0, 0, .8);
            transition: all 1s;
        }

        .item-img:hover .hover-info {
            top: 0;
        }

        .item-img {
            overflow: hidden;
        }

        .item-product .item-img img {
            transform: scale(1, 1);
            transition: all .5s;
        }

        .item-product:hover .item-img img {
            transform: scale(1.2, 1.2);
        }

        .item-info p {
            color: darkred;
            font-weight: bold;
        }

        .action button {
            border-radius: 4px;
            border: 1px solid #06f;
            background: #06c;
            color: #fff;
            padding: 7px 25px;
            font-size: 14px;
            cursor: pointer;
        }

        .km {
            left: 0px;
            bottom: 0px;
            width: 218px;
            overflow: hidden;
            color: #6e6e6e;
            float: left;
        }

        .auto-style3 {
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            width: 976px;
            margin-left: -15px;
            margin-right: -15px;
        }

        .auto-style4 {
            margin-top: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <div class="auto-style2" style="font-size: 13px; font-weight: bold;">
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="Trang chủ" NavigateUrl="~/Page/Home.aspx"></asp:HyperLink>
                    &nbsp;&gt;
                    <asp:HyperLink ID="HyperLink2" runat="server" Text="Điện Thoại" NavigateUrl="~/Page/AllPhone.aspx"></asp:HyperLink>
                    &nbsp;&gt;
                    <br />
                    <br />
                </div>
                <div class="col-md-12" style="background: #f2f2f2">
                    <ul class="mn2">
                        <li class="c"><a class="n" href="iphone/index.html">iPhone</a></li>
                        <li class="c"><a class="n" href="samsung/index.html">Samsung</a></li>
                        <li class="c"><a class="n" href="../xiaomi.html">Xiaomi</a></li>
                        <li class="c"><a class="n" href="../oppo.html">Oppo</a></li>
                        <li class="c"><a class="n" href="../nokia.html">Nokia</a></li>
                        <li class="c"><a class="n" href="../mobiado.html">Mobiado</a></li>
                        <li class="c"><a class="n" href="sony/index.html">Sony</a></li>
                        <li class="c"><a class="n" href="vertu/index.html">Vertu Cao Cấp</a></li>
                        <li class="c"><a class="n" href="lg/index.html">LG</a></li>
                        <li class="c"><a class="n" href="htc/index.html">HTC</a></li>
                        <li class="cl"></li>
                        <li class="f"></li>
                        <li class="cl"></li>
                    </ul>
                </div>
                <div class="col-md-12" style="margin-top: 15px;">
                    <ul class="filter">
                        <li class="crp"><span>Chọn mức giá </span>:  </li>

                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Từ 0 - 2 triệu</asp:LinkButton></li>

                        <li>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Từ 2 - 4 triệu</asp:LinkButton></li>

                        <li>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Từ 4 - 7 triệu</asp:LinkButton></li>

                        <li>
                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Từ 7 - 13 triệu</asp:LinkButton></li>

                        <li>
                            <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Trên 13 triệu</asp:LinkButton></li>

                    </ul>
                </div>
                <%-- <span class="ga"></span>--%>
                <div class="col-md-12">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-9">
                                <h5><b>Cung cấp điện thoại, smartphone chính hãng - Ưu đãi mua hàng trả góp 0%‎</b></h5>
                            </div>
                            <div class="col-md-3">
                                <hr style="width: 100%" />
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">
                    <div class="container-fluid">
                        <div class="row">
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" Width="100%" Style="border: 1px solid #f5f6fa;">
                                <ItemTemplate>
                                    <div class="container-fluid" style="border: 1px solid #f5f6fa; width: 270px; margin-top: 10px">
                                        <div class="item-product">
                                            <div class="item-img">
                                                <asp:HyperLink ID="Hyper" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' CssClass="img-fluid" />
                                                </asp:HyperLink>
                                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>
                                                    <div class="hover-info">
                                                        <p>
                                                            <b>HĐH: </b>
                                                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("OperatingSystem") %>'></asp:Literal>
                                                        </p>
                                                        <p><b>SIM: </b>2 SIM</p>
                                                        <p>
                                                            <b>Pin: </b>
                                                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Pin") %>'></asp:Literal>
                                                            mAh
                                                        </p>
                                                        <p>
                                                            <b>RAM: </b>
                                                            <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("RAM") %>'></asp:Literal>
                                                            GB
                                                        </p>
                                                        <p>
                                                            <b>ROM: </b>
                                                            <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("ROM") %>'></asp:Literal>
                                                            GB
                                                        </p>
                                                    </div>
                                                </asp:HyperLink>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12" style="font-weight: bold; text-align: center;">
                                                    <asp:HyperLink ID="ProductName" runat="server" Text='<%# Eval("ProductName") %>' NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'></asp:HyperLink>
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
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="height:150px; width:100%; float:left;">
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</asp:Content>
