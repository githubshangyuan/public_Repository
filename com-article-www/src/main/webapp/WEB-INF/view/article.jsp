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
	.article {
		width: 80%;
		height: 80%;
		margin-left: auto;
		margin-right: auto;
	}
	#link {
		padding-bottom: 100px;
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
	</script>
</div>
	<div class="article">
		<h1>${article.title}</h1>
		<span>${article.portal}</span><br>
		<span>${article.editor}&nbsp;•&nbsp;${article.ago}</span>
		<span>${article.context}</span><br>
		<span>
			<a id="link" href="javascript:;" onclick="edit('${article.id}')">重新编辑</a>
		</span>
	</div>
</body>
</html>