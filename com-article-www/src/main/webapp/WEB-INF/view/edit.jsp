<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑页面</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script type="text/javascript" src="/bootstrap3/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="/bootstrap3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/bootstrap3/css/bootstrap.min.css">
<script type="text/javaScript" charset="utf-8" src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/ueditor/ueditor.all.min.js"></script>
<link rel="stylesheet" type="text/css" href="/ueditor/themes/default/css/ueditor.css" />
<link rel="stylesheet" type="text/css" href="/ueditor/lang/zh-cn/zh-cn.js" />
<style type="text/css">
	html{
		background-color: #eee;
	}
	body{
		width: 80%;
		height: 100%;
		margin-left: auto;
		margin-right: auto;
	}
	.btn {
		width: 30%;
		margin-left: 30%;
		margin-top: 30px;
	}
</style>
</head>
<body>
		<div class="container-fluid">
				<form:form modelAttribute="article" action="/edit" method="post">
				        <form:hidden path="id" />
				        作者:<form:input path="editor" class="form-control"/><br>
				        标题:<form:input path="title" class="form-control"/><br>
				        简介:<form:input path="portal" class="form-control"/><br>
				    文章内容:<script id="container" name="context" type="text/plain">
		              		${article.context}
        				 </script>
				        <button type="submit" class="btn btn-success">提交</button>
				        <button type="button" onclick="history.back()" class="btn btn-warning">返回</button>
				    <script type="text/javascript">
				        var editor = UE.getEditor('container');
				    </script>
				</form:form>
		</div>
</body>
</html>