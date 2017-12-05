<%@page import="com.jnmd.book.service.BookService"%>
<%@page import="java.util.List"%>
<%@page import="com.jnmd.book.dao.BookDao" %>
<%@page import="com.jnmd.book.domain.Book" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0;padding:0;list-style: none;}
	#wrap{
		margin: 10px auto 0;
	}
	#con{
		margin: 10px auto 0;
		text-align: center;
		width: 1200px;
		height: 700px;
		border: 2px solid red;
	}
	#head{
		border-bottom: 2px solid red;
		height: 150px;
	}
	#head img{
		height: 150px;
		width: 1200px;
	}
	#left{
		width: 200px;
		height: 550px;
		border-right: 2px solid red;
		float:left;
	}
	#left ul{
		padding-top: 80px;
		padding-left: 50px;
	}
	#left ul a{
		padding-top: 15px;
		font-size: 20px;
		color: darkblue;
		font-weight: bold;
		text-decoration: underline;
		text-decoration-color: skyblue;
		width: 120px;
		float: left;
	}
	#right{
		float: left;
		
		padding-top: 10px;
		padding-left: 10px;
	}
	#tab{
		border-collapse: collapse;
		width: 830px;
	}
	</style>
</head>
<body>
	<div id="wrap">
		<div id="con">
			<div id="head">
				<img src="pic/banner.png" alt="">
			</div>
			<div id="left">
				<ul>
					<a href="index.html">首页</a>
					<a href="AddBook.jsp">入库登记</a>
					<a href="bookAction">库存列表</a>
				</ul>
			</div>
			<div id="right">
				<table id="tab" border="1">
					<tr>
						<td>编号</td>
						<td>书名</td>
						<td>作者</td>
						<td>价格</td>
						<td>折扣</td>
						<td>数量</td>
						<td>操作</td>
					</tr>
					
					<c:forEach var="book" items="${books }">
						
					<tr>
						<td>${book.no }</td>
						<td>${book.name }</td>
						<td>${book.author }</td>
						<td>${book.price }</td>
						<td>${book.discount }</td>
						<td>${book.count }</td>
						<td>
					
						<a href="BookDetial?no=${book.no }">详情</a>
						
						</td>
					</tr>	
					
					</c:forEach>
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>