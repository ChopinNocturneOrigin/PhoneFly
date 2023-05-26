<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>admin</title>
	<link rel="stylesheet" href="admin/css/admin3.css" />
	<script src="admin/script/admin.js"></script>
</head>
<body>
<div id="wrap">
	<header>									
					<h1 class="home">
						phoneFly AdminPage
					</h1>					
				</div>	
						
		<input class="btn" type="button" value="logout" style="float: right;" 
			onClick="location.href='pf.do?command=adminLogout'">			
	</header>
	<div class="clear"></div>