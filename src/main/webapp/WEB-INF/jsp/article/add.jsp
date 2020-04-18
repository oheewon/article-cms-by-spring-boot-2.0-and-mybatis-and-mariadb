<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sbs.starter.dto.Article" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../part/head.jspf" %>
<h1 class="con" align="center">***게시물 작성***</h1>
	<script type="text/javascript">
	 function submitAddForm(form){

		 form.title.value = form.title.value.trim();
		if(form.title.value.length == 0){
			alert('제목을 입력해주세요.');
			form.title.focus();
			
			return false;
		}

		form.body.value = form.body.value.trim();
		if(form.body.value.length == 0){
			alert('내용을 입력해주세요.');
			form.body.focus();
			
			return false;
		}

		
		form.submit();	 
	}
	</script>
	
	<form class="con common-form"  action="./doAdd" method="POST" onsubmit="submitAddForm(this); return false;">
		<div>
			<span>제목</span>
			<div>
				<input type="text" name="title" placeholder="제목" autofocus="autofocus">
			</div>
			<span>내용</span>
			<div>
				<textarea placeholder="내용" name="body" rows="" cols=""></textarea>
			</div>
			<span>작성</span>
			<div>
				<input type="submit" value="작성">
				<input type="reset" value="취소" onclick="history.back();">
			</div>
		</div>
	</form>	
<%@ include file="../part/foot.jspf" %>	
