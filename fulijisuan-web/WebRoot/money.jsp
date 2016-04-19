<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'money.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color:#ffff66">
	<div align="center">
		<p>
		若投资本金每年不变，最后得到的资产总值</p>
	</div>
	<form name="form1" method="post" action="">
		<table width="400" border="2" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<th width="235" height="30" align="right" bgcolor="#00FFFF">年期：</th>
				<th width="165" bgcolor="#00FFFF"><input name="year"
					type="text" id="year"></th>
			</tr>
			<tr>
				<th height="30" align="right" bgcolor="#00FFFF">本金：</th>
				<th bgcolor="#00FFFF"><input name="money" type="text" id="money">
				</th>
			</tr>
			<tr>
				<th height="30" align="right" bgcolor="#00FFFF">利率：</th>
				<th bgcolor="#00FFFF"><input name="rate" type="text" id="rate">
				</th>
			</tr>
		</table>
		<table width="400" border="2" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="30" align="center" bgcolor="#00FFFF"><input
					type="submit" name="button" id="button" value="提交"></td>
			</tr>
		</table>
	</form>
	<p>
	  <%
  		String YEARS = request.getParameter("year");
  		String MONEY = request.getParameter("money");
  		String RATE = request.getParameter("rate");
  		double Y=0,M=0,N=0;
  		double R=0;
  	if(YEARS==null){
		YEARS="0";
		MONEY="0";
		RATE="0";
		}
		try{Y=Double.valueOf(YEARS).doubleValue();
		M=Double.valueOf(MONEY).doubleValue();
		N=Double.valueOf(MONEY).doubleValue();
		R=Double.valueOf(RATE).doubleValue();
		double FINALLY =M * (1 + R) * Y;
		out.println("<div align='center'>年期："+Y);
		out.println("<div align='center'>本金："+N);
		out.println("<div align='center'>利率："+R);	
		out.println("<div align='center'><strong>总额为："+FINALLY);
		}
		catch(NumberFormatException e){
		out.print("<br>"+"请输入数字字符");
		}
   %>
</p>
	<form name="form2" method="post" action="">
	  	<a href="index.jsp">返回首页 </a>
</form>
	<p>&nbsp;</p>
</body>
</html>