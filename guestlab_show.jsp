<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*,java.util.*" %>

<%@ include file = "conn_oracle.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인풋 내용을 DB에 가져와 출력하는 페이지</title>
<link href = "filegb.css" rel = "stylesheet" type = "text/css">
<style>
	div{
		width : 600px;
		margin : 0 auto;
	}
	table,tr,td {
		padding : 5px;
		border-collapse : collapse;
	}
</style>
</head>
<body>

<%



	String sql = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	sql = "select * from guestlab order by to_number (idx) desc";
	
	stmt = conn.createStatement();
	
	rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		do{
			
	%>
	
<div>
	<table width = "600px" border = "1px">
		<tr>
			<td colspan = "2" align = "center">
				<h3><%=rs.getString("idx") %></h3>
			</td>
		</tr>
		<tr>
			<td><%=rs.getString("ename") %></td>
			<td><%=rs.getString("gender") %></td>
		</tr>
		<tr>
			<td colspan = "2"><%=rs.getString("phone") %></td>
		</tr>
		<tr>
			<td colspan = "2"><%=rs.getString("addr") %></td>
		</tr>
	</table>
		<p></p>
</div>	
<%
		}while(rs.next());
	}else{
		out.println("데이터가 존재하지 않습니다.");
	}
			
%>	
<div>
	<a href = "guestlab_write.html"><img src = "images/write.gif" width = "70px"></a>
</div>
	
</body>
</html>