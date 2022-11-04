<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");

//    String img = request.getParameter("imgFile"); https://kouzie.github.io/jsp/JSP-%ED%8C%8C%EC%9D%BC%EC%97%85%EB%A1%9C%EB%93%9C/#
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

%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>입력하신 항목은 다음과 같습니다.</h1>
<%--사진 : <%=img%> <br />--%>
이름 : <%=name%> <br />
성별 : <%=gender%> <br />
학번 : <%=number%> <br />
전화번호 : <%=phone%> <br />
이메일 : <%=email%> <br />
전공 : <%
for(int i=0;i<major.length;i++)
    out.println(major[i]);
%> <br />
학기수 : <%=semester%> <br />
생년월일 : <%=birthday%> <br />
지원유형 : <%=type%> <br />
PR : <%=pr%> <br />
</body>
</html>