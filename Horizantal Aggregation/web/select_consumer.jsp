<%@ page import="java.sql.*,java.util.*" %>

<%! 
	Connection con;
	ResultSet rs,rs1;
	Statement st,st1;
%>

<html>
<body>
<p>&nbsp;</p>
<p align="center"><b><font face="Monotype Corsiva" size="6" color="#FF0000">Edit
Consumer Details</font></b></p>
<form action="edit_consumer.jsp" >
<table align="center" width="306">
<tr>
 <td width="252"> <b><font face="Courier New" size="4">Select the Consumer Meter No</font></b> 
 </td>

 <td width="44">
 <%
Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/horizontal", "root", "pass");
	st=con.createStatement();
String jy = "select * from consumer ";
	rs = st.executeQuery(jy);
	%>
	<select size="1" name="no">
	<%
	while(rs.next())
	{
	String no = rs.getString(3);
	%>
	
	<option> <% out.println(no);%> </option>	
	<%
	}
	%>
 </td>
  </tr>
  <tr><td> <input type="Submit" value="Submit"></td></tr>
 </table>
 </form>
 </body></html>