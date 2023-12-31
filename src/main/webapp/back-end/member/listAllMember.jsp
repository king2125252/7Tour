<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.actMember.model.*"%>


<%
	ActMemberService actMemberSvc = new ActMemberService();
    List<ActMemberVO> list = actMemberSvc.getAll();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
 	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

<title>所有成員明細 - listAllMember.jsp</title>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>所有成員資料</h3>
		 <h4><a href="select_memberHome.jsp"><img src="images/logo.jpg" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table id="myTable" class="display">
  <thead bgcolor="#C0C0C0">
	<tr>
		<th>會員編號</th>
		<th>揪團活動編號</th>
		<th>揪團通知</th>
		<th>評價內容</th>
		<th>評價分數</th>
		<th>評價時間</th>
		<th>修改</th>
		<th>刪除</th>
	</tr>
  </thead>
	<%@ include file="page1.file" %> 
  <tbody>
	<c:forEach var="actMemberVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${actMemberVO.userId}</td>
			<td>${actMemberVO.activityId}</td>
			<td>${actMemberVO.activityNotice}</td>
			<td>${actMemberVO.evaluationContent}</td>
			<td>${actMemberVO.evaluationScore}</td>			
			<td>${actMemberVO.evaluationTime}</td>			
<%-- 			<td>${actMemberVO.evaluationTimeStr}</td>			 --%>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/actMember.do"  style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
			     <input type="hidden" name="userId"  value="${actMemberVO.userId}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/act/act.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
			     <input type="hidden" name="activityId"  value="${actVO.activityId}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
 </tbody>	
</table>
<%@ include file="page2.file" %>

<!-- datatable套版 -->
<script >
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</body>
</html>