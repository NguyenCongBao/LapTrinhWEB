<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="SHOPONLINE.Page.Footer" %>
<div class="container-fluid" style="background: #231f20">
    <div class="row" style="/*padding-top: 20px; */">
        <div class="col-md-12" style="background: #636e72;">
            <div class="container">
                <div class="row">
                    <div class="col-md-5" style="padding: 10px 0">
                        <div class="input-group input-group-lg">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="Nhập nội dung phản hồi vào đây..."></asp:TextBox>
                            <div class="input-group-prepend">
                                <asp:LinkButton ID="LinkButtonFeedback" class="input-group-text" runat="server" CssClass="btn btn-warning">Gửi</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2" style="font-weight:bold;font-size:25px;text-align:center;padding:15px 0;">
                        -
                    </div>
                    <div class="col-md-5" style="font-size: 25px; padding:15px 0;">

                        <a href="mailto:sho24h@gmail.com?cc=secondemail@example.com, anotheremail@example.com, &bcc=lastemail@example.com&subject=Mail from  customer&body=Dear Shop 24H" style="color:#f3c20f;">Liên hệ qua email: shop24h@gmail.com</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-5" style="color: #fff; padding-left: 20px;padding-top:20px;">
            <p><b>HỆ THỐNG CỬA HÀNG</b></p>
            <div style="border: 3px solid #f3c20e; width: 20%;"></div>
            <p>Hotline: 039.644.7901</p>
            <p>Thời gian phục vụ: sáng 8am - 11am, chiều 2pm - 5pm</p>
            <p>Email: nhom6@gmail.com</p>
            <p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3723.4556910416636!2d105.7329533!3d21.0544544!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1598287024115!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0" class="img-fluid"></iframe>
            </p>
        </div>
        <div class="col-md-7" style="color: #fff; padding-left: 50px; padding-top:20px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <p><b>HỆ THỐNG CỬA HÀNG</b></p>
                        <div style="border: 3px solid #f3c20e; width: 20%;"></div>
                        <ul style="list-style: none; margin: 0; padding: 0;">
                            <li>Giới thiệu SHOP24H</li>
                            <li>Công trình đã thực hiện</li>
                            <li>Sơ đồ công ty</li>
                            <li>Văn hóa</li>
                            <li>Tiềm năng</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <p><b>CHÍNH SÁCH QUY ĐỊNH</b></p>
                        <div style="border: 3px solid #f3c20e; width: 20%;"></div>
                        <ul style="list-style: none; margin: 0; padding: 0;">
                            <li>Bảo mật thông tin</li>
                            <li>Chính sách bảo hành</li>
                            <li>Chính sách đổi trả</li>
                            <li>Mua hàng và thanh toán</li>
                            <li>Mua hàng trả góp</li>
                            <li>Phản ảnh khiếu nại</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <p><b>DANH MỤC DỊCH VỤ</b></p>
                        <div style="border: 3px solid #f3c20e; width: 20%;"></div>
                        <ul style="list-style: none; margin: 0; padding: 0;">
                            <li>Điện thoại</li>
                            <li>Laptop</li>
                            <li>Ổ cứng</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
