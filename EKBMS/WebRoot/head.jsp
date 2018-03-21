<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<head>
	<title> 导航栏 </title>
</head>
<body>
		<nav onload="init()" class="navbar navbar-inverse" role="navigation" style="border-radius :0px; background-color: rgba(63,63,63,1); margin: 0">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"><img src="img/loo.png" style="height:30px; width: auto;"></a>
				</div>
				<div>
					<ul class="nav navbar-nav" style="min-height: 100%;">
						<li>
							<a href="#">首页</a>
						</li>
						<li>
							<a href="#">我的知识库</a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								企业知识库 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu" style="min-width: 100%;background-color: rgba(63,63,63,1);">
								<li>
									<a href="#">企业文档</a>
								</li>
								<li>
									<a href="#">知识结构</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">学习路径</a>
						</li>
					</ul>

					<!-- 向右对齐 -->
					<ul class="nav navbar-nav navbar-right">
						<!-- 搜索框  -->
						<form class="navbar-form navbar-left" role="search" action="searchAction" method="post">
							<div class="input-group">
								<input name="query" type="text" class="form-control" style="border-radius :0px;" placeholder="输入关键字搜索..." />
								<a href="searchAction?query='智能'">我去</a>
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit" style="border-radius :0px;">
										<span class="glyphicon glyphicon-search" style="color: dodgerblue;"></span>
									</button>
								</span>
							</div>
						</form>
						<li style="margin-top: 10px;">
							<!-- 头像 -->
							<img src="img/滑稽.jpg" class="img-circle" style="height: 30px; width: 30px;" />
						</li>
						<li>
							<a href="#" style="font-size: 14px; color: darkgray; padding-left: 10px; " class="dropdown-toggle" data-toggle="dropdown">
								<s:property value="userDetailInfo.realName"/> <b class="caret"></b>
							</a>
							<ul class="dropdown-menu" style="min-width: 100%;">
								<li>
									<a href="#" style="color: black;"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
								</li>
								<li>
									<a href="#" style="color: black;"><span class="badge">3</span>消息</a>
								</li>
								<li>
									<a href="#" style="color: black;"><span class="glyphicon glyphicon-log-out"></span> 注销</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</body>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>