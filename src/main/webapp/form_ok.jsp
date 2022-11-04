<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/11/04
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP</title>
</head>
<body>
<h2>입력하신 항목은 다음과 같습니다.</h2>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String number = request.getParameter("number");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String[] major = request.getParameterValues("major");
    String semester = request.getParameter("semester");
    String birthday = request.getParameter("birthday");
    String type = request.getParameter("type");
    String pr = request.getParameter("pr");

    out.println("이름 : " + name + "<br />");
    out.println("성별 : " + gender + "<br />");
    out.println("학번 : " + number + "<br />");
    out.println("전화번호 : " + phone + "<br />");
    out.println("이메일 : " + email + "<br />");
    out.println("전공 : ");
    for(int i = 0; i < major.length; i++) {
        out.println(major[i]);
        if(i < major.length-1) out.println(",");
    }
    out.println("<br />");
    out.println("학기수 : " + semester + "<br />");
    out.println("생년월일 : " + birthday + "<br />");
    out.println("지원유형 : " + type + "<br />");
    out.println("PR : " + pr + "<br />");
%>
</body>
</html>