<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.io.PrintWriter" %>

<%@ page import="review.Bbs" %>
<%@ page import="review.BbsDAO" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">

<title>KH CINEMA</title>
</head>
<body>
    <%
        String userID = null;
        if(session.getAttribute("userID") != null) {
            userID = (String) session.getAttribute("userID");
        }

        if (userID == null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 하세요.')");
            script.println("location.href = 'login.jsp'");
            script.println("</script>");
        }
        int bbsID = 0;
        if (request.getParameter("bbsID") != null) {
            bbsID = Integer.parseInt(request.getParameter("bbsID"));
        }
        if (bbsID == 0) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('유효하지 않은 글입니다.')");
            script.println("location.href = 'bbs.jsp'");
            script.println("</script>");
        }
        Bbs bbs = new BbsDAO().getBbs(bbsID);
        if (!userID.equals(bbs.getUserID())) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('권한이 업습니다.')");
            script.println("location.href = 'bbs.jsp'");
            script.println("</script>");
        }
    %>
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="bbs.jsp" style="color:Dodgerblue;">KH CINEMA 리뷰</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false" style="color: Dodgerblue;"><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp" style="color: Dodgerblue;">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>


    <div class = "container">
        <div class="row">
            <form method="post" action="updateAction.jsp?bbsID=<%= bbsID %>">

                <table class="table" style="text-align: center; border: 0px solid #dddddd">
                    <thead>
                        <tr>
                            <th colspan="2" style="background-color: Dodgerblue; color: white; text-align: center;">게시판 글 수정 양식</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%=bbs.getBbsTitle() %>">
                            </td>
                        </tr>
                        <tr>
                            <td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlangth="2048" style="height: 350px;"><%=bbs.getBbsContent() %></textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>


                <input type="submit" class="btn btn-primary pull-right" value="글수정">
            </form>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js">
<script src="js/bootstrap.js"></script>
</body>
</html>