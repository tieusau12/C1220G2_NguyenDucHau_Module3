<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Student Management</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-light position-relative " style="background-color: #ffecea">
    <a class="navbar-brand mr-auto " href="#">
        <img src="image/logo-the-thao-dep.jpg" width="300" height="191">
        Student Management
    </a>
    <a href="#" class="name " style="color: black">Nguyen Duc Hau - C1220G2</a>
</nav>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/studentServlet">List Student <span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="image/1552358411894-CodeGym.png" class="d-block w-100 h-25" alt="...">
            </div>
            <div class="carousel-item">
                <img src="image/Banner-2-min.jpg" class="d-block w-100 h-25" alt="...">
            </div>
            <div class="carousel-item">
                <img src="image/hue-2-1-1.jpg" class="d-block w-100 h-25" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="row">
        <div class="col-8">
            <div class="section">
                <h2>Trung tâm đào tạo lập trình viên CodeGym Đà Nẵng</h2>
                <h4>CHÚNG TÔI LÀ CODEGYM
                    NỖ LỰC ĐỂ MANG ĐẾN NHIỀU GIÁ TRỊ HƠN CHO CUỘC SỐNG</h4>
                <p>
                    Công nghệ Thông tin là một ngành lớn và quan trọng của Việt Nam, nhưng sự thiếu hụt nhân lực cả về
                    số lượng và chất lượng luôn là một rào cản để phát triển.

                    Nhân lực là mấu chốt quan trọng nhất để thúc đẩy ngành CNTT nước nhà phát triển. Thấu hiểu được tình
                    trạng đó, các nhà sáng lập của CodeGym – vốn xuất thân là các lập trình viên nhiều năm kinh nghiệm,
                    giảng viên, chủ doanh nghiệp phần mềm có tâm huyết – đã quyết định xây dựng nên một mô hình đào tạo
                    lập trình đột phá, giúp nâng cao hiệu quả và chất lượng đào tạo. Không chỉ đủ để đóng góp một số
                    lượng lớn lập trình viên cho ngành,
                    mà còn thông qua đó nâng cao tiêu chuẩn chất lượng của ngành..</p>
            </div>
            <div class="article">
                <article>
                    <img src="image/2.jpeg" height="600" width="800"/>
                    <img src="image/Thể-dục-CodeGym-2.jpg" height="500" width="800">
                </article>
            </div>
        </div>
        <div class="col-4">
            <div class="aside">
                <p></p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/LYiCw361uFU"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                <p></p>
                <h3>TẦM NHÌN CỦA CODEGYM</h3>
                <p>
                    Trở thành hệ thống đào tạo lập trình hiện đại hàng đầu khu vực, là chủ lực cung cấp nhân lực chất
                    lượng cao cho ngành công nghiệp, góp phần nâng tầm phát triển ngành phần mềm Việt Nam, tiến kịp tiêu
                    chuẩn quốc tế.</p>
                <h3>SỨ MỆNH CỦA CODEGYM</h3>
                <p>
                    Phát triển các giải pháp học tập hiện đại và hiệu quả thông qua các mô hình đào tạo tiên tiến trên
                    nền tảng công nghệ giáo dục và sự cộng tác sâu rộng giữa các bên liên quan, đặc biệt là doanh
                    nghiệp. Qua đó, CodeGym giúp người học phát triển tay nghề vững vàng, sẵn sàng làm việc, và có khả
                    năng tự học suốt đời hiệu quả, thích ứng với cuộc Cách mạng Công nghiệp 4.0.</p>
                <img src="image/1.jpg" style="height: 630px">
            </div>
        </div>
    </div>
    <footer>
        <div style="background-color: rgba(0, 0, 0, 0.2);">
            <div class="row">
                <div class="col-12 text-center">
                    <a href="https://goo.gl/maps/APw3XXquVX8sVKZZ9">
                        <img src="image/geo-alt-fill.svg" style="font-size: 2rem">
                        Số 295 Nguyễn Tất Thành, Thanh Bình, Hải Châu, Đà Nẵng 550000
                    </a>
                </div>
            </div>
            <div class="row ">
                <div class="col-12 text-center ">
                    <a href="">
                        © 2020 Copyright:
                        <a href="https://www.facebook.com/hau.duc.798/">MoonHz.com</a>
                    </a>
                </div>
            </div>
        </div>
    </footer>
</div>


<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>