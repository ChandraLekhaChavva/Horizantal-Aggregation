<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">




<BODY bgColor=#FFFFFF>


<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>


<p><b><font face="AC" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</font></b>
<font face="AC"><b><a style="text-decoration: none" href="consumer_details.jsp">
<font color="#000000" size="4">Back</font></a></a></b></font></p>


<%@ page import="java.sql.*,java.util.*" %>

<%! 
	Connection con;
	ResultSet rs,rs1;
	Statement st,st1;
%>
<%
try 
{
Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/horizontal", "root", "pass");

	String ctype = request.getParameter("no1");
	
st=con.createStatement();
	String jy="select * from consumer ";
	
%>
<table align="center" width="347" height="90">
<tr><td colspan="2" width="278" height="1"> 
  <p align="center"><b><font face="Monotype Corsiva" size="5" color="#FF0000">Consumer Details
  </font></b> </td></tr>

<tr><td width="199" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">Circle Name<font></b> </td>
    <td width="199" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">Division Name</font></b> </td>
    <td width="199" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">Meter No</font></b> </td>
    <td width="199" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">Meter Owner Name</font></b> </td>
    <td width="199" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">Consumer Name</font></b> </td>
    <td width="199" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">Age</font></b> </td>
    <td width="199" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">Sex</font></b> </td>
    <td width="199" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">Contact No</font></b> </td>
    <td width="199" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">Address</font></b> </td>
    <td width="199" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">Connection Type</font></b> </td>
    <td width="199" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">User Name</font></b> </td>
    <td width="199" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">Password</font></b> </td>
    <%
    rs=st.executeQuery(jy);
    while(rs.next())
	{
    %>
<tr>
    <td width="138" height="23" dir="ltr" bgcolor="#00FF00"> <%out.println(rs.getString(1));%></td>
    <td width="138" height="22" dir="ltr" bgcolor="#FFFF00"><%out.println(rs.getString(2));%></td>
    <td width="138" height="23" dir="ltr" bgcolor="#00FF00"> <%out.println(rs.getString(3));%></td>
    <td width="138" height="22" dir="ltr" bgcolor="#FFFF00"><%out.println(rs.getString(4));%></td>
    <td width="138" height="23" dir="ltr" bgcolor="#00FF00"> <%out.println(rs.getString(5));%></td>
    <td width="138" height="22" dir="ltr" bgcolor="#FFFF00"><%out.println(rs.getString(6));%></td>
    <td width="138" height="23" dir="ltr" bgcolor="#00FF00"> <%out.println(rs.getString(7));%></td>
    <td width="138" height="22" dir="ltr" bgcolor="#FFFF00"><%out.println(rs.getString(8));%></td>
    <td width="138" height="23" dir="ltr" bgcolor="#00FF00"> <%out.println(rs.getString(9));%></td>
    <td width="138" height="22" dir="ltr" bgcolor="#FFFF00"><%out.println(rs.getString(10));%></td>
    <td width="138" height="23" dir="ltr" bgcolor="#00FF00"> <%out.println(rs.getString(11));%></td>
    <td width="138" height="22" dir="ltr" bgcolor="#FFFF00"><%out.println(rs.getString(12));%></td>
</tr>

</table>

<%
	}
	}
	catch (Exception e)
	{
		out.println(e);
	}
	%>