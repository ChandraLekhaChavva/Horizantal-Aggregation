<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">




<BODY bgColor=#FFFFFF>


<p><b><font face="AC" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



<%@ page import="java.sql.*,java.util.*" %>

<%! 
	Connection con;
	ResultSet rs,rs1;
	Statement st,st1;
	String cname,dname,mno,mcname,name,type,amount,used;
%>
<%
try 
{
Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/horizontal", "root", "pass");

	String empid = request.getParameter("mno");
	
st=con.createStatement();
	String jy="select mno,name,type,used,amount from billing where mno="+empid+"";
	
	 rs=st.executeQuery(jy);
	if(rs.next())
	{
%>
<form action="bill_reg.jsp">
<table align="center" width="399">
<tr><td width="393">
<table align="center" width="404" height="90">

<tr><td colspan="2" width="278" height="1"> 
  <p align="center"><b><font face="Monotype Corsiva" size="5" color="#FF0000">
  Meter Details </font></b> </td></tr>

<tr><td width="244" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">meter no
  </font></b> </td>
	<td width="150" height="23" dir="ltr" bgcolor="#00FF00"> <%mno = rs.getString(1);%>
<input type="hidden" name="mno" value="<%out.println(mno);%>"><%out.println(mno);%></td></tr>
<tr><td width="244" align="right" height="23" dir="ltr" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">consumer Name
  </font></b> </td>
	<td width="150" height="23" dir="ltr" bgcolor="#FFFF00"> <%name = rs.getString(2);%>
<input type="hidden" name="name" value="<%out.println(name);%>"><%out.println(name);%></td></tr>

<tr><td width="244" align="right" height="23" dir="ltr" bgcolor="#00FF00"> <b><font face="Courier New" size="4">connection type
  </font></b> </td>
	<td width="150" height="23" dir="ltr" bgcolor="#00FF00"> <%type = rs.getString(3);%>
<input type="hidden" name="type" value="<%out.println(type);%>"><%out.println(type);%></td></tr>

<tr><td width="244" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">units used
  </font></b> </td>
	<td width="150" height="22" dir="ltr" bgcolor="#FFFF00"><%used = rs.getString(4);%>
<input type="hidden" name="used" value="<%out.println(used);%>"><%out.println(used);%>
	</td></tr>	


<tr><td width="244" align="right" height="22" dir="rtl" bgcolor="#FFFF00"> <b><font face="Courier New" size="4">amount
  </font></b> </td>
	<td width="150" height="22" dir="ltr" bgcolor="#FFFF00"><%amount = rs.getString(5);%>
<input type="hidden" name="amount" value="<%out.println(amount);%>"><%out.println(amount);%>
	</td></tr>
	 


</font></b>
<%
	}
	}
	catch (Exception e)
	{
		out.println(e);
	}
	%>