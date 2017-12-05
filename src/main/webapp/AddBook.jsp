<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>入库登记</title>
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
		padding-left: 50px;
		width: 800px;
		text-align: left;
	}
	#right form{
		padding: 50px;
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
				<form action="AddAction" method="post">
				<p>
					书名：<input type="text" name="name" id="name" value="${name }">
				</p>
				<p>
					类别：<label><input name="type" type="checkbox" value="科学" />科学</label>
					<label><input name="type" type="checkbox" value="教育" />教育</label>
					<label><input name="type" type="checkbox" value="生活" />生活</label>
					<label><input name="type" type="checkbox" value="文学" />文学</label>
					<label><input name="type" type="checkbox" value="其他" />其他</label>

				</p>
				<p>
					作者：<input type="text" name="author" id="author">
				</p>
				<p>
					折扣：<label><input name="discount" type="radio" value="全价" />全价</label>
					<label><input name="discount" type="radio" value="9折" />9折</label>
					<label><input name="discount" type="radio" value="8折" />8折</label>
					<label><input name="discount" type="radio" value="7折" />7折</label>
					<label><input name="discount" type="radio" value="6折" />6折</label>
				</p>
				<p>
					价格：<input type="text" name="price" id="price">
				</p>
				<p>
					数量：<input type="text" name="count" id="count">
				</p>
				<p>
					简介：<textarea rows="5" cols="40" name="intorduce">
						
					</textarea>
				</p>
				<p></p>
				<p></p>
				<%
					
				%>
				<a><input type="submit" value="  登 记   "></a>
				<a><input type="reset" value="   重 置   "></a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>