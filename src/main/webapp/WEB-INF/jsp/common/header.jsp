<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<!--header-->
        <header>
            <div class="header text-center">
                <h2><a href="/"><strong>H.U.G HOTEL</strong></a></h2>
                <h5><strong>JEJU</strong></h5>
            </div>
            <nav id='cssmenu'>
                <div id="head-mobile"></div>
                <div class="button"></div>
                <ul>
                    <li><a href='/introduce'>ABOUT US</a>
                        <ul>
                            <li><a href="/introduce#intro-title">호텔소개</a></li>
                            <li><a href="/introduce#team-member">직원소개</a></li>
                            <li><a href="/introduce#intro-membership">회원권 소개</a></li>
                            <li><a href="/event">이벤트</a></li>
                            <li><a href="/directions">오시는길</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>HOTELS</a>
                        <ul>
                            <li><a href="/guestRoomView">객실</a></li>
                            <li><a href="/diningView">다이닝</a></li>
                            <li><a href="/facilityView">부대시설</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>여행정보</a>
                        <ul>
                            <li><a href="/tourismView">관광</a></li>
                            <li><a href="/foodView">맛집</a></li>
                        </ul>
                    </li>
                    <li><a href='/noticeMain'>고객지원</a>
                        <ul>
                            <li><a href="/noticeMain">공지사항</a></li>                                                     
                            <li><a href="/faqMain">FAQ</a></li>                            
                            <li><a href="#">Q&A</a></li>
                        </ul>
                    </li>
                    <sec:authorize access="hasRole('ROLE_REGURAL')">
                    <li><a href="#">마이페이지</a>
                        <ul>
                            <li><a href="#">OVERVIEW</a></li>
                            <li><a href="#">멤버십</a></li>
                            <li><a href="#">예약내역</a></li>
                            <li><a href="#">이용문의</a></li>
                            <li><a href='/myPage'>회원정보수정</a></li>
                        </ul>
                    </li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li><a href="#">관리자페이지</a>
                        <ul>
                            <li><a href="#">객실관리</a></li>
                            <li><a href="#">고객지원관리</a>
                                <ul>
                                    <li><a href="/adminNoticeMain">공지사항 관리</a></li>
                                    <li><a href="/adminTotalFaq">FAQ 관리</a></li>
                                    <li><a href="#">Q&A 관리</a></li>
                                </ul>
                            </li>
                            <li><a href="#">회원관리</a></li>
                        </ul>
                    </li>
					</sec:authorize>
					<sec:authorize access="isAnonymous()||hasRole('ROLE_ASSOCIATE')">
                    <li><a href='/login'>로그인</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_REGURAL')||hasRole('ROLE_ADMIN')">
                    <li><a href="/logout">로그아웃</a></li>
					</sec:authorize>
                    <sec:authorize access="hasRole('ROLE_REGURAL')||hasRole('ROLE_ASSOCIATE')||isAnonymous()">
                    <li><a href='/reservationView1' style="background-color: #193f6e;" onmouseover="this.innerHTML='Reservation'" onmouseout="this.innerHTML='예약'">예약</a></li>
                    </sec:authorize>
                </ul>
            </nav>
        </header>
        <!--header end-->
</body>
</html>
