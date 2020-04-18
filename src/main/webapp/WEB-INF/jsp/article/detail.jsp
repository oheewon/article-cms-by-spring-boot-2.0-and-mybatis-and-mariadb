<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sbs.starter.dto.Article" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 사이트 - 게시물 상세페이지</title>
<link rel="stylesheet" href="/resource/common.css">
</head>
<body>
	<h1 class="con" align="center">***게시물 상세페이지***</h1>
	
	<section class="con">
		번호 : ${article.id}<br>
		제목 : ${article.title}<br>
		내용 : ${article.body}<br>
		조회수 : ${article.hit}
	</section>
	
	<div class="btns con">
		<a href="./list">게시물 리스트</a>
		<a href="./add">게시물 추가</a>
		<a href="./modify?id=${article.id}">게시물 수정</a>
		<a onclick="if(confirm('삭제하시겠습니까?')== false) return false;" href="./doDelete?id=${article.id}">게시물 삭제</a>
	</div>
</body>
</html>