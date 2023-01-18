<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.sql.*,java.util.*,java.text.*" %>
<%@ include file = "conn_oracle.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컬럼의 특정 레코드를 읽는 페이지</title>
</head>
<body>
	<%
	//SQL 쿼리를 사용할 변수 선언 블락
	String sql = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//Get방식으로 넘어오는 변수값 저장
	int id = Integer.parseInt(request.getParameter("id"));
	String p = request.getParameter("page");
	
	sql = "select * from guestlab where idx = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,id);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		
	%>

	<table width = '600' cellspacing = '0' cellpadding = '2' align = 'center'>
		<tr>
			<td height = '22'>&nbsp;</td>
		</tr>
		<tr align = 'center'>
			<td height = '1' bgcolor = '#1f4f8f'><td>
		</tr>
				<tr align='center' bgcolor='#DFEDFF'>
			<td class='button' bgcolor='#DFEDFF'>
				<div align='left'>
					<font size='4'><%="회원정보" %></font>
				</div>
			</td>
		</tr>
		<tr align='center' bgcolor='#FFFFFF'>
			<td align='center' bgcolor='#F4F4F4'>
				<table width='100%' border='0' cellpadding='0' cellspacing='4'
					height='1'>
					<tr bgcolor='#F4F4F4'>
						<td width='13%' height='7'></td>
						<td width='51%' height='7'>이 름 : <%= rs.getString("ename") %></td>
						<td width='25%' height='7'></td>
						<td width='11%' height='7'></td>
					</tr>
					<tr bgcolor='#F4F4F4'>
						<td width='13%'></td>
						<td width='51%'>휴대폰 번호 : <%= rs.getString("phone") %></td>
						<td width='25%'>성별 : <%= rs.getString("gender") %></td>
						<td width='11%'></td>
					</tr>
					<tr bgcolor='#F4F4F4'>
						<td width='13%' height='7'></td>
						<td width='51%' height='7'>주 소 : <%= rs.getString("addr") %></td>
						<td width='25%' height='7'></td>
						<td width='11%' height='7'></td>
					</tr>
					
				</table>
				
			</td>
		</tr>
	</table>
	
	<%	
	}else{
		out.println("해당 레코드는 존재하지 않습니다.");
	}
	
	%>
	<!-- 목록, 삭제 , 수정 버튼 -->
		<table width="600" border="0" cellpadding="0" cellspacing="5" align = "center">
		<tr>
			<td align="right" width="450"><A href="guestlab_list.jsp?go=<%=request.getParameter("page")%>">
			<img src="images/list.jpg" border=0></a></td>
			<td width="70" align="right"><A href="guestlab_del.jsp?id=<%= id %>&page=<%= request.getParameter("page")%>">
			<img src="images/del.jpg" border=0></A></td>
			<td width="70" align="right"><A href="guestlab_upd.jsp?id=<%= id %>&page=<%= request.getParameter("page")%>">
			<img src="images/edit.jpg" border=0></A></td>
		</tr>
	</table>
	
</body>
</html>

