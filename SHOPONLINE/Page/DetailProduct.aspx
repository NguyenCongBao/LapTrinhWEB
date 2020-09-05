<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="DetailProduct.aspx.cs" Inherits="SHOPONLINE.Page.DetailProduct" %>

<%@ Register Src="~/Page/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Chi tiết sản phẩm</title>
    <style type="text/css">
        .auto-style10 {
            float: left;
            width: 300px;
            overflow: hidden;
            padding-bottom: 30px;
            float: left;
            margin-left: 50px;
            height: 649px;
        }



        .auto-style11 {
            height: 13px;
        }

        anhsphot {
            float: left;
        }

        .img {
            margin-top: 10px;
            height: 100px;
            width: 100px;
            float: left;
            border: 1px solid #e8e8e8;
        }

        .auto-style12 {
            height: 568px;
            width: 1355px;
            margin-left: 150px;
        }

        .auto-style13 {
            height: 566px;
            width: 100%;
            float: left;
        }

        .auto-style14 {
            height: 960px;
            width: 100%;
            float: left;
            margin-left: 150px;
        }

        .auto-style15 {
            float: left;
            width: 25%;
            height: auto;
        }
    </style>

    <link href="../Public/style/detailproduct.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style13">
        <asp:DataList ID="DataList1" runat="server" Width="100%" Height="550px">
            <ItemTemplate>
                <div class="auto-style12">
                    <div class="auto-style2" style="font-size: 13px; font-weight: bold">
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="Trang chủ" NavigateUrl="~/Page/Home.aspx"></asp:HyperLink>
                        &nbsp;&gt;
                    <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("CategoryName") %>' NavigateUrl='<%# "AllPhone.aspx?categoryid="+Eval("CategoryID").ToString() %>'>HyperLink</asp:HyperLink>
                        &nbsp;&gt;
                    <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("CategoryName") %>' NavigateUrl='<%# "AllPhone.aspx?categoryid="+Eval("CategoryID").ToString() %>'>HyperLink</asp:HyperLink>
                        &nbsp;&gt;
                    <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("ProductName") %>' NavigateUrl='<%# "AllPhone.aspx?categoryid="+Eval("CategoryID").ToString() %>'>HyperLink</asp:HyperLink>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </div>
                    <div class="auto-style3">
                        <div class="auto-style5">

                            <asp:Image ID="Image1" runat="server" Height="390px" Width="390px" BorderColor="#EDEDED" ImageUrl='<%# Eval("Photo") %>' />

                        </div>
                        <div class="auto-style6">
                            <p style="font-size: 20px;">
                                Giá: 
                            <asp:Label ID="Label2" runat="server" Text='<%# String.Format("{0:000,0 <sup>vnd<sup>}", Eval("Cost")) %>' Font-Bold="True" Font-Size="20px" ForeColor="#EE1D23"></asp:Label>
                            </p>
                            <p style="font-size: 20px;">
                                <sup><span class="auto-style7">Bộ nhớ&nbsp;</span>&nbsp;<select id="Select1" class="auto-style8" name="D1">
                                    <option>64G</option>
                                </select>&nbsp;&nbsp;&nbsp; Bảo hành&nbsp;
                                <select id="Select4" name="D4">
                                    <option>BH Mặc Định</option>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tình trạng</sup>&nbsp; <sup>
                                    <select id="Select5" class="auto-style8" name="D5">
                                        <option>99%</option>
                                    </select></sup>
                            </p>
                            &nbsp;<div class="auto-style9">
                                <strong class="km">Khuyến mãi</strong><span class="t"></span>
                                <br />
                                <ul style="padding: 0px; margin: 0px; list-style-type: none; font-family: Arial; font-size: 14px;">
                                    <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">
                                        <p style="padding: 0px; margin: 0px;">Tặng d&aacute;n&nbsp;<span style="color: rgb(255, 0, 0);">Cường lực</span>,&nbsp;<span style="color: rgb(255, 0, 0);">Ốp lưng</span>&nbsp;khi mua BHV</p>
                                    </li>
                                    <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">
                                        <p style="padding: 0px; margin: 0px;">Tặng Voucher&nbsp;<span style="color: rgb(255, 0, 0);">Giảm gi&aacute;</span>&nbsp;mua m&aacute;y &amp; sửa chữa trị gi&aacute;&nbsp;<span style="color: rgb(255, 0, 0);">50.000đ</span></p>
                                    </li>
                                    <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">
                                        <p style="padding: 0px; margin: 0px;">Sạc DP 8000mAh&nbsp;<span style="color: rgb(255, 0, 0);">300K,</span>&nbsp;Tai nghe Bluetooth&nbsp;<span style="color: rgb(255, 0, 0);">150K,</span>&nbsp;Gậy TS<span style="color: rgb(255, 0, 0);">&nbsp;100K</span></p>
                                    </li>
                                    <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">
                                        <p style="padding: 0px; margin: 0px;">Mua Combo 3 m&oacute;n tr&ecirc;n chỉ với gi&aacute;&nbsp;<span style="color: rgb(255, 0, 0);">#299K&nbsp;</span>tại Truesmart</p>
                                    </li>
                                </ul>

                            </div>
                            <ul class="d2">
                                <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">Trong hộp có: </li>
                                <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">Bảo hành: 12 Tháng</li>
                                <li style="padding: 0px 0px 6px 12px; margin: 0px; list-style-type: none; font-size: 13px; color: rgb(88, 88, 88); background: url(../Public/images/icons/i3.gif) left 5px no-repeat;">Giao hàng tận nơi miễn phí trong 30 phút. <a href="../chinh-sach-van-chuyen.html" rel="nofollow">Tìm hiểu thêm</a></li>
                            </ul>
                            <ul class="cs">
                                <li class="l" onclick="javascript:ick('p','7277');"><b>Thêm vào giỏ hàng</b></li>
                            </ul>

                            <div class="d4">
                                Hotline: <b>0948.122.666 - 0948.122.666</b>
                            </div>
                        </div>
                        <div class="auto-style10">

                            <ul class="a0">
                                <li class="h"><b>Hệ Thống Bán Bán Máy</b></li>
                                <br />
                                <li class="fl"></li>

                                <li class="s" data-c="1" data-q="6">
                                    <span>Trụ Sở : 31 Xã Đàn , Đống Đa , Hà Nội</span>

                                    Hotline: <b>0948.122.666</b>
                                </li>

                                <li class="s" data-c="1" data-q="6">
                                    <span>Store 2 : 204 Thái Hà , Đống Đa , Hà Nội</span>

                                    Hotline: <b>096.357.3333</b>
                                </li>

                                <li class="s" data-c="1" data-q="5">
                                    <span>Store 3 : 23 Nguyễn Phong Sắc , Cầu Giấy , Hà Nội</span>

                                    Hotline: <b>0961.933.933</b>
                                </li>

                                <li class="s" data-c="1" data-q="4">
                                    <span>Store 4 : 222 Nguyễn Văn Cừ - Long Biên - HN</span>

                                    Hotline: <b>0886.215.215</b>
                                </li>

                                <li class="s" data-c="1" data-q="268">
                                    <span>Store 5 : 84 Trần Phú - Hà Đông - Hà Nội</span>

                                    Hotline: <b>093.123.4141</b>
                                </li>

                            </ul>

                        </div>

                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <div class="auto-style14">
        <div class="thongso">
            <ul class="upc">
                <li class="dp1">
                    <strong class="hp1">Thông số kỹ thuật</strong>
                    <div class="cp1">
                        <asp:DataList ID="DataList3" runat="server" Width="100%" Height="550px">
                            <ItemTemplate>
                                <table id="tskt" style="border-width: 0px; border-style: initial; border-color: initial; box-sizing: border-box; margin: 0px; padding: 0px; border-spacing: 0px; border-collapse: collapse; empty-cells: show; font-size: 12px; width: 273px; color: rgb(60, 61, 65); font-family: sans-serif;">
                                    <tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">K&iacute;ch thước</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">158.0mm - 77.8mm - 8.1mm</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Ram</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("RAM").ToString() %>'></asp:Label>
                                                GB</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Bộ nhớ trong</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ROM").ToString() %>'></asp:Label>
                                                GB</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">K&iacute;ch thước m&agrave;n h&igrave;nh</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">6.5 inches</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Độ ph&acirc;n giải m&agrave;n</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">2688 x 1242 pixels</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Hệ điều h&agrave;nh</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("OperatingSystem").ToString() %>'></asp:Label></td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Chipset</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">A13 Bionic</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Camera sau</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">Camera 12MP:<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />
                                                - Camera tele: ƒ/2.0 aperture<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />
                                                - Camera góc rộng: ƒ/1.8</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Camera trước</td>
                                            <td style="border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">12 MP &fnof;/2.2 aperture</td>
                                        </tr>
                                        <tr style="box-sizing: border-box; margin: 0px; padding: 0px; height: 35px;">
                                            <td style="border-bottom: none; box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; width: 100px;">Pin</td>
                                            <td style="border-bottom: none; box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: middle; font-weight: 700;">
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Pin").ToString() %>'></asp:Label>
                                                mAh</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </li>
                <li class="dp2">
                    <strong class="hp1">Thông tin chi tiết điện thoại</strong>

                </li>
            </ul>

        </div>
        <div class="auto-style15">
            <ul>
                <br />
                <li class="h"><b>Sản phẩm Liên Quan </b></li>
                <hr />

                <li class="k" style="height: 300px">&nbsp;<asp:DataList ID="DataList2" runat="server" Height="130px" Width="100%" BorderColor="#999999" BorderStyle="None">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink6" runat="server" Target="_blank" rel="nofollow" NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'>

                            <div class="aa">
                                <div class="img">
                                    <asp:Image ID="Image2" runat="server" Height="89px" ImageUrl='<%# Eval("Photo") %>' BorderColor="#999999" CssClass="anhsphot" />
                                </div>
                                <div class="name">
                                    <strong>
                                        <asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("ProductName") %>' NavigateUrl='<%# "DetailProduct.aspx?productid="+Eval("ProductID").ToString() %>'></asp:HyperLink></strong><br />
                                </div>
                                <div class="gia">
                                    <b>
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# String.Format("{0:000,0 <sup>vnd<sup>}", Eval("Cost")) %>'></asp:Literal><sup> đ</sup></b>
                                </div>
                            </div>


                        </asp:HyperLink>
                        <hr class="auto-style11" />
                    </ItemTemplate>
                </asp:DataList>
                </li>
            </ul>
        </div>
    </div>
    <div style="height: 150px; width: 100%; float: left;">
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</asp:Content>

