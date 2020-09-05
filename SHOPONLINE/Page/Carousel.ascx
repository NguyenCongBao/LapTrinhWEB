<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Carousel.ascx.cs" Inherits="SHOPONLINE.Page.Carousel" %>
<style type="text/css">
    .responsive {
        max-width: 100%;
        height: 160px;
    }
</style>
<div class="container" style="margin-top: 20px;" id="carousel">
    <div class="row">
        <div class="col-md-7">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000" data-keyboard="true" data-pause="hover">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="../Public/images/carousel/carousel1.png" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../Public/images/carousel/carousel2.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../Public/images/carousel/carousel3.png" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="col-md-5">
            <div class="container-fluid">
                <div class="row" style="padding-left: 10px;">
                    <div class="col-md-12" style="border: 1px solid #f3c20e; margin-bottom: 5px;">
                        <img src="../Public/images/banner/banner1.png" class="responsive" />
                    </div>
                    <div class="col-md-12" style="border: 1px solid #f3c20e; margin-top: 5px;">
                        <img src="../Public/images/banner/banner2.png" class="responsive" />
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
