<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat+Subrayada|Nanum+Gothic|Nanum+Myeongjo|Noto+Sans+KR|Noto+Serif+KR"
	rel="stylesheet">
<style>
body {
	background: linear-gradient(to bottom, #E5FCC2 10%, #9DE0AD, #45ADA8, #547980,
		#594F4F 80%);
	text-align: center;
	margin: 0px 0px 0px 0px;
	/* font-family: 'Noto Sans KR', sans-serif;
	font-family: 'Noto Serif KR', sans-serif;
	font-family: 'Nanum Gothic', sans-serif;
	font-family: 'Nanum Myeongjo', serif;
	font-family: 'Montserrat Subrayada', sans-serif; 영어 */
}

.homeLogo {
	font-family: 'Montserrat Subrayada', sans-serif;
	font-size: 80px;
	font-weight: 500;
	line-height: 20px;
}

.homeBigBtn {
	width: 200px !important;
	height: 150px !important;
	font-family: 'Nanum Myeongjo', serif !important;
	font-size: 35px !important;
	color: #F5FFD2 !important;
}

.homeTitle {
	font-family: 'Nanum Myeongjo', serif;
	font-size: 50px;
}

#homeContainer {
	display: table;
	position: absolute;
	height: 100%;
	width: 100%;
}

#homeContent {
	width: 600px;
	height: 450px;
	display: table-cell;
	vertical-align: middle;
}

#enterAdminHome {
	display: inline;
}

#enterMemberHome {
	display: inline;
}
/* COLOR Start */
.color1 {
	color: #E5FCC2;
}

.color2 {
	color: #9DE0AD;
}

.color3 {
	color: #45ADA8;
}

.color4 {
	color: #547980;
}

.color5 {
	color: #594F4F;
}

.color1_back {
	background-color: #E5FCC2;
}

.color2_back {
	background-color: #9DE0AD;
}

.color3_back {
	background-color: #45ADA8;
}

.color4_back {
	background-color: #547980;
}

.color5_back {
	background-color: #594F4F;
}
/* COLOR End */
/* button Start */
.btn {
	border-radius: 5px;
	padding: 5px 10px;
	font-size: 28px;
	text-decoration: none;
	margin: 5px;
	color: #ffffff;
	position: relative;
	display: inline-block;
	border: none;
}

.btn:active {
	transform: translate(0px, 5px);
	-webkit-transform: translate(0px, 5px);
	box-shadow: 0px 1px 0px 0px;
}

.color1_btn {
	background-color: #E5FCC2;
	box-shadow: 0px 5px 0px 0px #C5DCA2;
}

.color1_btn:hover {
	background-color: #EAFFC7;
}

.color2_btn {
	background-color: #9DE0AD;
	box-shadow: 0px 5px 0px 0px #7DC08D;
}

.color2_btn:hover {
	background-color: #A3E5B3;
}

.color3_btn {
	background-color: #45ADA8;
	box-shadow: 0px 5px 0px 0px #258D88;
}

.color3_btn:hover {
	background-color: #4AB3AD;
}

.color4_btn {
	background-color: #547980;
	box-shadow: 0px 5px 0px 0px #345960;
}

.color4_btn:hover {
	background-color: #597E85;
}

.color5_btn {
	background-color: #594F4F;
	box-shadow: 0px 5px 0px 0px #392F2F;
}

.color5_btn:hover {
	background-color: #5E5555;
}
/* button End */
</style>
</head>
<body>
	<div id="homeContainer">
		<div id="homeContent">
			<h1 class="homeLogo color5">Library</h1>
			<h1 class="homeTitle color5">
				사람은 책을 만들고,<br>책은 사람을 만든다.
			</h1>
			<form action="/admin/home" id="enterAdminHome">
				<input type="submit" class="homeBigBtn color3_btn btn" value="관리자">
			</form>
			<form action="/member/home" id="enterMemberHome">
				<input type="submit" class="homeBigBtn color4_btn btn" value="사용자">
			</form>
		</div>
	</div>
</body>
</html>