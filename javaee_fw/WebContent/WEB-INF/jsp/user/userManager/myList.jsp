<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的二手</title>
<link rel="icon" href="<%=basePath%>/images/bitbug_favicon.ico" type="image/x-icon" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="<%=basePath%>/assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>/assets/css/bootstrap-dropdownhover.min.css"
	type="text/css">
<link rel="stylesheet" href="<%=basePath%>/assets/font/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>/assets/simple-line-icon/css/simple-line-icons.css"
	type="text/css">
<link rel="stylesheet" href="<%=basePath%>/assets/css/style.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>/assets/css/bootstrapValidator.min.css" type="text/css">
<body>
	<div id="preloader">
		<div id="loading"></div>
	</div>
	<header>
	<div class="top-header">
		<div class="container">

			<div class="col-md-6">
				<div class="top-header-left">
					<ul>
						<li>
							<span style="font-size: 20px;">校园二手市场</span>
						</li>
					</ul>
				</div>
			</div>

			<div class="col-md-6">
				<div class="top-header-right">
					<ul>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
									data-hover="dropdown">
									<i class="icon-settings icons" aria-hidden="true"></i> 个人设置
								</a>

								<ul class="dropdown-menu">
									<li>
										<a href="user/personal?id=${userId}">个人中心</a>
									</li>
									<li>
										<a href="user/quit">退出登陆</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<header class="header2"> <section class="top-md-menu">
	<div class="container">
		<div class="col-sm-3">
			<div class="logo">
				<h6>
					<a href="front/index">
						<img src="images/logo.jpg" alt="logo" />
					</a>
				</h6>
			</div>
		</div>
		<div class="col-sm-6">
			<form action="<%=basePath%>front/search" style="width:700px">
				<input type="text" id="text1" name="cateName" style="display:none" value="all"> <input
					type="text" id="text2" name="seachType" style="display:none" value="sale">
				<div class="well carousel-search hidden-phone">
					<div class="btn-group" style="width: 100px;">
						<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#"
							aria-expanded="false" style=" width: 100px;">
							类别搜索<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<c:if test="${!empty cateList}">
								<li>
									<a class="joe1" value="all">所有类别</a>
								</li>
								<c:forEach items="${cateList}" var="cl" varStatus="vs">
									<li>
										<a value="${cl.categoryType}" class="joe1">${cl.categoryType }</a>
									</li>
								</c:forEach>
							</c:if>
							<c:if test="${empty cateList}">
								<li>
									<a>没有商品类别</a>
								</li>
							</c:if>
						</ul>
					</div>

					<div class="btn-group" style="width: 100px;">
						<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#"
							style="width: 100px;">
							出售搜索<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a value="sale" class="joe2">出售搜索</a>
							</li>
							<li>
								<a value="wish" class="joe2">求购搜索</a>
							</li>
						</ul>
					</div>

					<div class="search">
						<input type="text" placeholder="输入您想要搜索的商品" name="goodName">
					</div>
					<div class="btn-group">
						<button type="submit" id="btnSearch" class="btn btn-primary">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
		<!--  -->
		<div class="main-menu">
			<nav class="navbar navbar-inverse navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown"
				data-animations=" fadeInLeft fadeInUp fadeInRight">
				<ul class="nav navbar-nav">
					<li class="all-departments dropdown">
						<a href="index.html" class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">
							<span> 商品类别</span> <i class="fa fa-bars" aria-hidden="true"></i>
						</a>
						<ul class="dropdown-menu dropdownhover-bottom" role="menu">
							<li class="dropdown">
								<a href="#">
									<img src="images/menu-icon9.png" alt="menu-icon2" /> 图书教材
								</a>
							</li>
							<li class="dropdown">
								<a href="#">
									<img src="images/computer.png" alt="menu-icon2" /> 闲置电脑
								</a>
							</li>
							<li class="dropdown">
								<a href="#">
									<img src="images/music.png" alt="menu-icon2" /> 数码耳机
								</a>
							</li>
							<li class="dropdown">
								<a href="#">
									<img src="images/music2.png" alt="menu-icon2" /> 数码音响
								</a>
							</li>
							<li class="dropdown">
								<a href="#">
									<img src="images/women.png" alt="menu-icon2" /> 美妆衣物
								</a>
							</li>
							<li class="dropdown">
								<a href="#">
									<img src="images/phone.png" alt="menu-icon2" /> 闲置手机
								</a>
							</li>
							<li class="dropdown">
								<a href="#">
									<img src="images/bike.png" alt="menu-icon2" /> 代步工具
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			</nav>
		</div>
		<!--  -->
	</div>
	</section> </header> <!--  -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="front/index">首页</a>
					</li>
					<li class="breadcrumb-item active">
						<a href="user/personal?id=${userInfo1.userId}">个人中心</a>
					</li>
				</ol>
			</div>
			<div class="col-sm-3 col-md-3">
				<div class="weight">
					<div class="title">
						<h2>功能选择</h2>
					</div>
					<div class="product-categories">
						<ul>
							<li class="dropdown">
								<a href="saleList/addSaleList?id=${userInfo1.userId}">发布二手</a>
							</li>
							<li class="dropdown">
								<a href="saleList/myList?id=${userInfo1.userId}">查看所有</a>
							</li>
							<li class="dropdown">
								<a href="saleList/buyList?id=${userInfo1.userId}">购得的二手</a>
							</li>
							<li class="dropdown">
								<a href="saleList/sellList?id=${userInfo1.userId}">售出的二手</a>
							</li>
							<li class="dropdown">
								<a href="saleList/wishList?id=${userInfo1.userId}">求购表单</a>
							</li>
							<li class="dropdown">
								<a href="user/editUser?id=${userInfo1.userId}">基本信息</a>
							</li>
							<li class="dropdown">
								<a href="user/editPwd?id=${userInfo1.userId}">密码修改</a>
							</li>
							<li class="dropdown">
								<a href="saleList/letterList?id=${userInfo1.userId }">我的消息</a>
							</li>

						</ul>
					</div>
				</div>
			</div>

			<div class="col-sm-9 col-md-9">

				<div class="col-md-12" style="margin-bottom: 40px;">
					<h4>我的所有二手</h4>
					<table>
						<tbody>
							<tr>
								<th></th>
								<th style="width: 600px;">商品名称</th>
								<th style="width: 200px;">商品价格</th>
								<th style="width: 200px;">商品状态</th>
								<th style="width: 200px;">创建时间</th>
								<th style="width: 200px;">修改</th>
								<th style="width: 200px;">删除</th>

							</tr>
							--------------------------------------------------------------------------------------------------------------------------------------
							<c:if test="${!empty saleList}">
								<c:forEach items="${saleList}" var="sl" varStatus="vs">
									<tr>
										<td><img src="<%=basePath%>${sl.saleImg}" style="width:80px;padding-right: 10px;padding-bottom: 15px;" /></td>
										<td><c:out value="${sl.saleName}" /></td>
										<td><c:out value="${sl.salePrice}" /></td>
										<td><c:if test="${sl.saleState==false}">
												<c:out value="未出售" />
											</c:if> <c:if test="${sl.saleState==true}">
												<c:out value="已出售" />
											</c:if></td>
										<td><c:out value="${sl.plusTime}" /></td>
										<td><c:if test="${sl.saleState==false}">
												<a href="<%=basePath%>saleList/editSaleList?id=${sl.saleId}&userId=${sl.userId}">
													<button type="button" class="btn btn-primary btn-sm">
														<span class="glyphicon glyphicon-edit"></span>
													</button>
												</a>
											</c:if> <c:if test="${sl.saleState==true}">
												<c:out value="无法修改" />
											</c:if></td>
										<td><a href="<%=basePath%>saleList/deleteSaleListCheck?id=${sl.saleId}&userId=${sl.userId}">
												<button type="button" class="btn btn-danger btn-sm">
													<span class="glyphicon glyphicon-remove"></span>
												</button>
											</a></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>


		</div>
	</div>
	<p id="back-top">
		<a href="#top">
			<i class="fa fa-chevron-up" aria-hidden="true"></i>
		</a>
	</p>
</body>
<script src="<%=basePath%>/js/jquery.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/bootstrap-dropdownhover.min.js"></script>
<script src="<%=basePath%>/js/custom.js"></script>
<script src="<%=basePath%>/js/bootstrapValidator.min.js"></script>
</html>
