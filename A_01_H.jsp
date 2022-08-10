<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,java.io.*" %>
<html>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <head>

    </head>
	<style>
	table, th, td { 
		border: 2px solid gray; 
		border-radius: 8px;
	}

	table { 
		border-collapse: collapse;
		width: 500px;
	}
	
	.blue{
		border: solid 2px lightblue;
		border-radius: 8px;
		height: 40px;
	}
	
	.gray{
		border: 2px solid gray;
	}

	div{
		width: 500px;
		border: 3px solid pink;
		border-radius: 8px;
		padding : 10px;
	}

	.select{
		border: solid 2px lightblue;
		border-radius: 8px;
		height: 40px;
		background-color: aquamarine;
	}

	.select2{
		border: solid 2px lightblue;
		border-radius: 8px;
		height: 25px;
		background-color: aquamarine;
	}

	</style>
	
    <body>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopo11",                  
								   "root" , "kopote");
		Statement stmt = conn.createStatement();
		ResultSet rset = stmt.executeQuery("select * from hubo_table;"); 
	%>
	
	</br>

		<div>

			<tr><td colspan='2'><input formaction='A_01_H.jsp' class='select' type = "submit" value="후보등록"/>
			<input formaction='B_01_H.jsp' class='blue' type = "submit" value="투표"/>
			<input formaction='C_01_H.jsp' class='blue' type = "submit" value="개표결과"/></td></tr>
			</br></br>
			<table>
			<form method='post' action='A_02.jsp'>
			<%
				while (rset.next()) { 
					out.println("<tr><td width = 150>기호번호 : <input style='width:50px' type='text' name='id' value=" + rset.getInt(1) + " readonly></td>");
					out.println("<td width = 300 colspan='2'>후보명 : <input type='text' name='name' value=" + rset.getString(2) + " readonly></td><td width = 50>");
					out.println("<input class='select2' type = 'submit' value='삭제'/></td></tr>");
				}	
			%>
			</form>
			<form method='post' action='A_03.jsp'>
			<tr><td width = 150>기호번호 : <input style="width:50px" type="search" name="giho" /></td>
			<td width = 300 colspan='2'>후보명 : <input style="width:100px" type="search" name="hubo_name" /></td>
			<td><input class='select2' type = "submit" value="추가"/></td></tr>
			</form>
			</table>
		</div>
		

	
		<%
			rset.close();
			stmt.close();
			conn.close();
		%>
    </body>
</html>



	
	
