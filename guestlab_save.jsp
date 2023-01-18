<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<%@ include file = "conn_oracle.jsp" %>

<%
	String idx = request.getParameter("idx");
	String en = request.getParameter("ename");
	String ph = request.getParameter("phone");
	String gd = request.getParameter("gender");	
	String add = request.getParameter("addr");
	String pw = request.getParameter("password");
%>

<%
	String sql = null;
	Statement stmt = null;
	
	stmt = conn.createStatement();
	
try{
	
	sql = "insert into guestlab (idx,ename,phone,gender,addr,password) ";
	sql = sql + "values('" + idx + "','" + en + "','" + ph + "','" + gd + "','" + add + "','" + pw + "')";
	
	
/* 	out.print(sql);
	
	int cnt = 0; 
	
	cnt = stmt.executeUpdate(sql); */
	stmt.executeUpdate(sql);
	
/*	out.println(cnt);
	
	if(cnt > 0){
		out.println ("DB에 insert 되었습니다.");
	}else {
		out.println ("DB 저장을 실패하였습니다.");
	}
	*/
	}catch (Exception e){
		out.println("DataBase Insert 중 문제가 발생되었습니다. <p/>");
		out.println("고객센터 : 02-1234-1234로 문의 바랍니다. <p/>");		
		e.printStackTrace(); 
	} finally {
		if (conn != null){
			conn.close();
		}
		if (stmt != null){
			stmt.close();
		}
	}
	
    %>
    
<jsp:forward page = "guestlab_list.jsp"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 정보를 받아 페이지로 이동</title>
</head>
<body>

</body>
</html>