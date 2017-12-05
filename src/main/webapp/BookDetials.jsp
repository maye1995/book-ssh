<%@page import="com.jnmd.book.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jnmd.book.dao.BookDao" %>
<%@page import="com.jnmd.book.domain.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍详情</title>
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
		float: left;
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
		width: 950px;
	}
	#right p{
		
		line-height: 20px;
		padding-top: 10px;
		font-size: 20px;
	}
	#right textarea{
		
	}
	#right a{
		margin-top: 50px;
		width: 100px;
		height: 30px;
		margin-right: 100px;
		margin-left: 50px;
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
				
					<%
						
						Book book=(Book)request.getAttribute("book");
						
					%>
						
				<p>
					书名：<%=book.getName() %>
				</p>
				<p>
					类别：<%=book.getType() %>

				</p>
				<p>
					作者：<%=book.getAuthor() %>
				</p>
				<p>
					折扣：<%=book.getDiscount() %>
				</p>
				<p>
					价格：<%=book.getPrice() %>
				</p>
				<p>
					数量：<%=book.getCount() %>
				</p>
				<p>
					简介：<%=book.getIntorduce() %>
				</p>
				<p></p>
				<p></p>
				<a href="AddBook.jsp?no=<%=book.getNo()%>">修改</a>
				<a href="DelBook?no=${book.no }">删除</a>
					
				
			</div>
		</div>
	</div>
</body>
</html>