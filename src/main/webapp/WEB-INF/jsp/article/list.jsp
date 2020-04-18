<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sbs.starter.dto.Article" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../part/head.jspf" %>
	<h1 class="con" align="center">***게시물 리스트***</h1>
	
	<h2 class="con">전체 게시물 개수 : ${totalCount}</h2>
	
	<!-- el의 장점 : request.getAttribute("article")할 필요가 없다. -->
	<div class="con">
		<c:forEach items="${list}" var="article">
			<section>
				<a href="./detail?id=${article.id}">번호 : ${article.id}, 제목 : ${article.title}, 조회수 : ${article.hit}
				</a>
			</section>
			<hr>
		</c:forEach>
	</div>
	
	<div class="btns con">
		<a href="./add">게시물 추가</a>
	</div>
<%@ include file="../part/foot.jspf" %>	