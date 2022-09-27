<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="review.BbsDAO" %>
<%@ page import="review.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>KH CINEMA</title>
<style type="text/css">
	a, a:hover{
		color: Dodgerblue;
		text-decoration:none;
	}
</style>
</head>
<body>
    <% 
    String userID = null;
    if (session.getAttribute("userID") != null){
        userID = (String) session.getAttribute("userID");
    }
    int pageNumber = 1;
    if (request.getParameter("pageNumber") != null){
    	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
    }
    %>
    <nav class ="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="bbs.jsp" style="color:Dodgerblue;">KH CINEMA 리뷰</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            </ul>
            <%
            	if (userID == null){
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false" style="color:Dodgerblue;"><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="login.jsp" style="color:Dodgerblue;">로그인</a></li>
                        <li><a href="join.jsp" style="color:Dodgerblue;">회원가입</a></li>
                    </ul>
                </li>
            </ul>
            <%
            	}else{
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" 
                    aria-haspopup="true"
                    aria-expanded="false"><span class="caret" style="color: Dodgerblue;"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp" style="color: Dodgerblue;">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
            <% 
            	}
            %>
        </div>
    </nav>
    <div class= "container">
    	<div= "row">
    	    <table class="table" style="text-align: center; border: 0px;">
    	    	<thead>
    	    	<tr>
    	    		<th style= "background-color: Dodgerblue; color: white; text-align: center;">리뷰 번호</th>
    	    		<th style= "background-color: Dodgerblue; color: white; text-align: center;">리뷰 내용</th>
    	    		<th style= "background-color: Dodgerblue; color: white; text-align: center;">작성자</th>
    	    		<th style= "background-color: Dodgerblue; color: white; text-align: center;">작성일</th>

    	    	</tr>
    	    	</thead>
    	    	<tbody>
    	    		<tr><td>15</td><td>재미있게 봤습니다</td><td></td><td></td></tr>
    	    		<tr><td>14</td><td>전 별로</td><td></td><td></td></tr>
    	    		<tr><td>13</td><td></td><td></td><td></td></tr>
    	    		<tr><td>12</td><td></td><td></td><td></td></tr>
    	    		<tr><td>11</td><td></td><td></td><td></td></tr>
    	    		<tr><td>10</td><td></td><td></td><td></td></tr>
    	    		<tr><td>9</td><td></td><td></td><td></td></tr>
    	    		<tr><td>8</td><td></td><td></td><td></td></tr>
    	    		<tr><td>7</td><td></td><td></td><td></td></tr>
    	    		<tr><td>6</td><td></td><td></td><td></td></tr>
    	    		<tr><td>5</td><td></td><td></td><td></td></tr>
    	    		<tr><td>4</td><td></td><td></td><td></td></tr>
    	    		<tr><td>3</td><td></td><td></td><td></td></tr>
    	    		<tr><td>2</td><td></td><td></td><td></td></tr>
    	    		<tr><td>1</td><td></td><td></td><td></td></tr>
    	    	</tbody>
    	    </table>	
    	    <a href= "bbs.jsp?pageNumber=<%=pageNumber -1%>" class="btn btn-success btn-arraw-left" style= "background-color: Dodgerblue; color: white; text-align: center;">이전</a>
    	    <a href= "bbs.jsp?pageNumber=<%=pageNumber +1%>" class="btn btn-success btn-arraw-left" style= "background-color: Dodgerblue; color: white; text-align: center;">다음</a>
    	    <a href= "write.jsp" class= "btn btn-primary pull-right" style="background-color: Dodgerblue; border: 0px;">글쓰기</a>
    	</div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>