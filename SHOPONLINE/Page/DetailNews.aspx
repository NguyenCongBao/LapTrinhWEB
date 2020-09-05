<%@ Page Title="" Language="C#" MasterPageFile="~/Page/Customer2.Master" AutoEventWireup="true" CodeBehind="DetailNews.aspx.cs" Inherits="SHOPONLINE.Page.DetailNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 30px;">
        <div class="row" style="border: 1px solid #bdc3c7; padding: 10px 20px;">

            <asp:DataList ID="DataList1" runat="server" Width="100%">
                <ItemTemplate>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <span style="font-size: 30px;">
                                    <b>
                                        <asp:Label ID="lbName" runat="server" Text='<%# Eval("NewsName") %>'></asp:Label>
                                    </b>
                                </span>
                            </div>
                            <div class="col-md-12">
                                <p>
                                    <cite>Ngày soạn:
                                        <asp:Label ID="lbDate" runat="server" Text='<%# Eval("NewsDate") %>'></asp:Label></cite><br />
                                    <cite>Tác giả:
                                        <asp:Label ID="lbAuthor" runat="server" Text='<%# Eval("NewsAuthor") %>'></asp:Label></cite>
                                </p>
                            </div>
                            <hr />
                            <div class="col-md-12" style="">
                                <div style="text-align: center; margin: 0 auto; width: 500px;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("NewsPhoto") %>' CssClass="img-fluid" />
                                </div>

                            </div>
                            <div class="col-md-12" style="word-wrap: break-word;">
                                <p>
                                    <asp:Literal ID="lbContent" runat="server" Text='<%# Eval("NewsContent") %>'></asp:Literal>
                                </p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
