<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>www.article.com</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/bootstrap3/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="/bootstrap3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/bootstrap3/css/bootstrap.min.css">
<style type="text/css">
	.modal-dialog {
		margin-top: 0px;
		width: 100%;
	}
	.cistern {
		width: 80%;
		height: 170px;
		margin-left: auto;
		margin-right: auto;
		margin-top: 10px;
		margin-bottom: 10px;
	}
	.cistern:HOVER {
		background-color: #eee;
	}
	.banner {
		height: 170px;
		margin-left: 10px;
		width:260px;
		float: left;
	}
	.article {
		height: 170px;
		width: 65%;
		margin-left: 10px;
		float: left;
	}
	.banner img{
		margin-top: 10px;
	}
	.title{
		height: 120px;
	}
</style>
</head>
<body>
<div class="container-fluid">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="javascript:;">文章列表</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="javascript:;" onclick="index()">首页<span class="sr-only"></span></a></li>
        <script>
        	function index(){
        		window.location.href = "/";
        	}
        </script>
        <li><a href="#">最新文章</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关于我们<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">加入我们</a></li>
            <li><a href="#">公司简介</a></li>
            <li><a href="#">查看相关</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-right">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">搜索</button>
		
		<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
		  <div class="modal-dialog modal-lg" role="document">
		    <div class="modal-content">
		      	<input class="input" style="margin-left: 45%;margin-right: 45%;">
		    </div>
		  </div>
		</div>
      </form>
      <ul class="nav navbar-nav navbar-right">
      	<c:choose>
      		<c:when test="${not empty user}">
      			<li>
	      			<p>欢迎:<a href="javascript:;">${user}</a>
	      			<a href="javascript:;" onclick="edit('0')">我要写文章</a></p>
      			</li>
      		</c:when>
      		<c:otherwise>
      			<li><a href="javascript:;" onclick="edit('0')">我要写文章</a></li>
		        <li><a href="javascript:;">登陆</a></li>
		        <li><a href="javascript:;">注册</a></li>
      		</c:otherwise>
      	</c:choose>
      </ul>
    </div>
  </div>
</nav>
	<script>
		function edit(id){
			window.location.href = "/edit/" + id; 
		}
		function find(id){
			window.location.href = "/find/" + id;
		}
	</script>
</div>
	<c:forEach items="${articles}" var="content">
		<div class="cistern">
			<div class="banner">
				<img alt="${content.title}" src="${content.coverUrl}" width="240px" height="150px">
			</div>
			<div class="article">
				<div class="title">
					<h3><a href="javascript:;" onclick="find('${content.id}')">${content.title}</a></h3>
					<font size="1em"><span>${content.portal}</span></font><br>
				</div>
				<div class="editor">${content.editor}&nbsp;•&nbsp;${content.ago}</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>