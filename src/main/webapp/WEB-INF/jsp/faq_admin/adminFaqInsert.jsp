<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->

    <!--글씨체 링크 한글-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!--글씨체 링크 영어-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../../CSS/styles.css">
    <link rel="shortcut icon" href="https://hotel.cloud/wp-content/uploads/2019/10/favicon.png">

    <!-- Bootstrap -->
    <link href="../../CSS/bootstrapCSS/bootstrap.min.css" rel="stylesheet">
    <link href="../../CSS/bootstrapCSS/custom2.css" rel="stylesheet">
    <link href="../../CSS/bootstrapCSS/kfonts2.css" rel="stylesheet">

    <!-- 썸머노트 에디터 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <link rel="stylesheet" href="../../css/noticeFaq.css/adminNoticeFaq.css">
    <title>Document</title>
    
</head>
<body>s
    <div class="wrap">
        <!--header-->
        <header>
            <div class="header text-center">
                <h2><a href="../../pages/index.html"><strong>H.U.G HOTEL</strong></a></h2>
                <h5><strong>JEJU</strong></h5>
            </div>
            <nav id='cssmenu'>
                <div id="head-mobile"></div>
                <div class="button"></div>
                <ul>
                    <li><a href='#'>ABOUT US</a>
                        <ul>
                            <li><a href="#">호텔소개</a></li>
                            <li><a href="#">직원소개</a></li>
                            <li><a href="#">회원권 소개</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">오시는길</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>HOTELS</a>
                        <ul>
                            <li><a href="#">객실</a></li>
                            <li><a href="#">다이닝</a></li>
                            <li><a href="#">부대시설</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>여행정보</a>
                        <ul>
                            <li><a href="#">관광</a></li>
                            <li><a href="#">맛집</a></li>
                        </ul>
                    </li>
                    <li><a href='/notice'>고객지원</a>
                        <ul>
                            <li><a href="/notice">공지사항</a></li>                                                     
                            <li><a href="/faq">FAQ</a></li>                            
                            <li><a href="#">Q&A</a></li>
                        </ul>
                    </li>
                    <li><a href="#">마이페이지</a>
                        <ul>
                            <li><a href="#">OVERVIEW</a></li>
                            <li><a href="#">멤버십</a></li>
                            <li><a href="#">예약내역</a></li>
                            <li><a href="#">이용문의</a></li>
                            <li><a href="#">회원정보수정</a></li>
                        </ul>
                    </li>
                    <!-- <li><a href="#">관리자페이지</a>
                        <ul>
                            <li><a href="#">객실관리</a></li>
                            <li><a href="#">고객지원관리</a>
                                <ul>
                                    <li><a href="#">공지사항 관리</a></li>
                                    <li><a href="#">FAQ 관리</a></li>
                                    <li><a href="#">Q&A 관리</a></li>
                                </ul>
                            </li>
                            <li><a href="#">회원관리</a></li>
                        </ul>
                    </li> -->
                    <!-- <li><a href='#'>로그인</a></li> -->
                    <li><a href="#">로그아웃</a></li>
                    <li><a href='#' style="background-color: #193f6e;" onmouseover="this.innerHTML='Reservation'" onmouseout="this.innerHTML='예약'">예약</a></li>
                </ul>
            </nav>
        </header>
        <!--header end-->

        
        <!--section start-->
        <section>     
            <!-------------------------------------- 공지사항 설명 부분 -------------------------------------->
            <div id='admin_notice'>     
                <div class="container">  
                    <dl class="dl-horizontal non"> 
                        <dt>FAQ 등록</dt><br><br>
                        <hr class='style-five'>
                    </dl> 
                <!-------------------------------------- 공지사항 부분 -------------------------------------->
                <table id='detail_Top'>        
                    <tr id='detail_3'>
                        <td><input type="text" readonly class="form-control" id='category' value='카테고리'></td>
                        <td id='drop_box'>
                            <select id='select' class="form-control">
                                <option>선택</option>
                                <option>이용안내</option>
                                <option>객실</option>
                                <option>다이닝</option>
                                <option>부대시설</option>
                                <option>결제</option>
                                <option>기타</option>
                            </select>
                        </td>

                    </tr>
                    <tr id='detail_1'>       
                        <td width='100px'><input type="text" id='input1' value='제목' readonly class="form-control"></td>
                        <td width='500px'><input type="text" id='input2' value='체크인, 체크아웃 시간은 어떻게 되나요?'  class="form-control"></td>                        
                    </tr>      
                    <tr id='detail_2'>
                        <td width='1200px' height='500px' colspan="3">
                            <textarea name="text" id="text" >
                                HUG 호텔의 체크인 시간은 오후 15시이며 체크아웃 시간은 오전 11시 입니다.
                            </textarea>
                            
                        </td>
                    </tr>     
                </table>                    
               
                <!-------------------------------------- 목록 부분 -------------------------------------->
                <span id='faqinsert_adminback'>
                    <input type="button" id='btnBack' value='목록' class="form-control">
                    <input type="button" id='btnBack' value='등록' class="form-control">
                </span>
                
                </div>
            </div>
        </section>
        <!--section end-->

        
        <!--footer start-->
        <footer>
            <div class="footer-content text-center">
                <div class="logo">
                    <h2>H.U.G <br> HOTEL </h2>
                    <h5>JEJU</h5>
                </div>
                <div class="footer-info">
                    <ul>
                        <li><a href="#" target="_blank">오시는길</a></li>
                        <li><a href="#" target="_blank">사이트맵</a></li>
                        <li>개인정보처리방침</li>
                        <li>영상정보처리기기운영</li>
                        <li>이용약관</li>
                        <li><a href="#" target="_blank">고객센터</a></li>
                    </ul>
                    <address>
                        (주)H.U.G 호텔 | 제주특별자치도 서귀포시 중문관광로 21길 21
                        <br>
                        대표이사 한만월 | TEL. 064-123-4567
                        <br>
                        E-MAIL. contact@hughotel.com
                        <br>
                        Copyright © 2021 H.U.G HOTELS Co. All rights reserved.
                    </address>
                    <div class="family-member">
                        <select class="hughotel-member">
                        <option>H.U.G HOTEL MEMBER</option>
                        <option value="">곽재훈</option>
                        <option value="">김법규</option>
                        <option value="">김유찬</option>
                        <option value="">최주영</option>
                        <option value="">한아현</option>
                        <option value="">함승우</option>
                        </select>
                    </div>
                </div>
            </div>
        </footer>
        <!--footer end-->


    </div>

    <script>
        $('#text').summernote({            
          tabsize: 10,
          height: 360,
          width: 940,
          toolbar: [
              // [groupName, [list of button]]
              ['fontname', ['fontname']],
              ['fontsize', ['fontsize']],
              ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
              ['color', ['forecolor','color']],
            //   ['table', ['table']],
              ['para', ['ul', 'ol', 'paragraph']],
              ['height', ['height']],
              ['insert',['picture','link','video']],
              ['view', ['fullscreen', 'help']]
            ],
          fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
          fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']  		
        });
      
  </script>    
   

</body>
</html>