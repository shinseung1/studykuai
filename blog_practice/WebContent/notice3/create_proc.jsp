<%@ page contentType="text/html; charset=UTF-8" %>
 

<%@ include file="./ssi.jsp" %>
 
<% 
request.setCharacterEncoding("utf-8"); 
%>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="../css/style.css" rel='Stylesheet' type='text/css'>
</head>
<body>
<DIV class='container'>
<jsp:include page="/menu/top.jsp" flush='false' />
<DIV class='content'>
  
  <fieldset style='width: 70%; margin: 10px auto;'>
    <legend>공지사항 등록</legend>
    <ul>
    <%
    String title = request.getParameter("title");
    String rname = request.getParameter("rname");
    NoticeVO noticevo = new NoticeVO();
    noticevo.setTitle(title);
    noticevo.setRname(rname);
    
    int count = noticeDAO.create(noticevo);
    if (count == 1) {
      %>
        <li class='li_none'>등록처리에 성공했습니다.</li>
      <%
      } else {
        %>
        <li class='li_none'>등록처리에 실패했습니다.</li>
        <li class='li_none'>다시한번 시도해주세요.</li>
      <%
    
      }  %>
    </ul>
  </fieldset>
      
  <DIV style='margin: 30px auto; text-align: center; background-color: #FFFFFF'>
    <button type='button' onclick="location.href='./create_form.jsp'">계속 등록</button>
    <button type='button' onclick="location.href='./list.jsp'">목록</button>
  </DIV>
  
</DIV> <!-- content END -->
<jsp:include page="/menu/bottom.jsp" flush='false' />
</DIV> <!-- container END -->
 
</body>
</html>