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
            <% 
                if(userID == null) {
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
                } else {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle"
                        data-toggle="dropdown" role="button" aria-haspopup="true"
                        aria-expanded="false">회원관리<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
            <%
                }
            %>
        </div>
    </nav><

    <div class = "container">
        <div class="row">

            <table class="table" style="text-align: center; border: 0px;">
                <thead>
                    <tr>
                        <th colspan="3" style="background-color: Dodgeblue; color: white; text-align: center;">게시판 글보기</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width: 20%;">글 제목</td>
                        <td colspan="2">
                           <%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>;") %>
                        </td>
                    </tr>
                     <tr>
                        <td>작성자</td>
                        <td colspan="2"><%= bbs.getUserID() %></td>
                     </tr>
                     <tr>
                        <td>작성일자</td>
                        <td colspan="2">  <%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분"%>

                        </td>
                    </tr>
                    <tr>
                        <td>내용</td>
                            <td colspan="2" style="min-height: 200px; text-align: left;">
                            <%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>;") %>
                        </td>
                    </tr>
                </tbody>
            </table>
            <a href="bbs.jsp" class="btn btn-primary">목록</a>
            <%
                if(userID != null && userID.equals(bbs.getUserID())) {
            %>

                <a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary" style="background-color: Dodgerblue; color: white;">수정</a>
                <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>"  class="btn btn-primary" style="background-color: Dodgerblue; color: white;">삭제</a>
            <%
                }
            %>

        </div>

    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js">
    <script src="js/bootstrap.js"></script>
</body>
</html>