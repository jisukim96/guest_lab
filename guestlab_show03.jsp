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
	<p/><p/>
	show03.jsp 입니다. <p/>
<%

	ArrayList idx = new ArrayList();
	ArrayList ename = new ArrayList();
	ArrayList phone = new ArrayList();
	ArrayList gender = new ArrayList();
	ArrayList addr = new ArrayList();

	String sql = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	sql = "select * from guestlab order by idx desc";
	
	stmt = conn.createStatement();
	
	rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		do{
			idx.add(rs.getString("idx"));
			ename.add(rs.getString("ename"));
			phone.add(rs.getString("phone"));
			gender.add(rs.getString("gender"));
			addr.add(rs.getString("addr"));
		}while(rs.next());
	}
		
		for(int i=0;i < idx.size();i++){
			
	%>
	
<div>
	<table width = "600px" border = "1px">
		<tr>
			<td colspan = "2" align = "center">
				<h3><%=idx.get(i) %></h3>
			</td>
		</tr>
		<tr>
			<td><%=ename.get(i) %></td>
			<td><%=gender.get(i) %></td>
		</tr>
		<tr>
			<td colspan = "2"><%=phone.get(i) %></td>
		</tr>
		<tr>
			<td colspan = "2"><%=addr.get(i) %></td>
		</tr>
	</table>
		<p></p>
</div>	
<%
	}
			
%>	
<div>
	<a href = "guestlab_write.html"><img src = "images/write.gif" width = "70px"></a>
</div>
	
</body>
</html>