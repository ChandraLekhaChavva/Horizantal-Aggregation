<%@ page import="java.sql.*,java.util.*" %>

<%! 
	Connection con,con1;
	ResultSet rs,rs1;
	Statement st,st1;
	String cname,dname,mno,mcname;
%>
<%

Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/horizontal", "root", "pass");

	String empid = "commercial";
	
st=con.createStatement();
	String jy="select * from consumer where type='"+empid+"'";
	
%>
<form action="bill.jsp">
<table align="center" width="283">
<tr> <td width="229" align="center">  
  <font face="Franklin Gothic Medium" size="5" color="#FF0000">Meter No </font> </td> </tr>
<tr> <td width="229" align="center"> <b><font face="Courier New" size="4">Select The Meter 
  NO </font></b>  </td>
	<td width="44">
		<select name="mno">
		<%
	rs=st.executeQuery(jy);
	while(rs.next())
	{
	%>
	<option> <% out.println(rs.getString(3));%></option>
	<%
	}
	%>
	</select>
	</td>
	</tr>
	<tr><td> <input type="Submit" value="Submit"></td></tr>
</table>



<table align="center" border="2">

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");

	Connection x = DriverManager.getConnection("jdbc:mysql://localhost:3306/horizontal", "root", "root");

	Statement s = x.createStatement();
String emp = "commercial";
	String jy1="select mno,cname,type,used,amount from billing where type='"+emp+"'";
	
	ResultSet r = s.executeQuery(jy1);

	while(r.next())
	{
		
		 String mno = r.getString(4);
		/*String name = rs.getString(6);
		String type = rs.getString(7);
		String units = rs.getString(8);
		String amount = rs.getString(9);
		String due = rs.getString(11);*/
	%>
	<tr>
		<td><%out.println(mno);%>&nbsp;</td>
		<td><%out.println(r.getString(6));%>&nbsp;</td>
		<td><%out.println(r.getString(7));%>&nbsp;</td>
		<td><%out.println(r.getString(8));%>&nbsp;</td>
		<td><%out.println(r.getString(9));%>&nbsp;</td>
		<td><%out.println(r.getString(11));%>&nbsp;</td>
		<td><a href="delete_from_bill.jsp?mno=<%=mno%>"> Yes </a></td>
	</tr>
<%
	}
}
catch(Exception e)
{out.println(e);}%>
	</table>