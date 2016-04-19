<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jisuanlilv.jsp' starting page</title>
    
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
		计算利率</p>
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
				<th height="30" align="right" bgcolor="#00FFFF">总额：</th>
				<th bgcolor="#00FFFF"><input name="FINALLY" type="text" id="FINALLY">
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
  		String FINALLY = request.getParameter("FINALLY");
  		double Y=0,M=0;
  		double F=0;
  	if(YEARS==null){
		YEARS="0";
		MONEY="0";
		FINALLY="0";
		}
		try{Y=Double.valueOf(YEARS).doubleValue();
		M=Double.valueOf(MONEY).doubleValue();
		F=Integer.valueOf(FINALLY).intValue();
		double RATE = (Math.pow(F/ M, 1.0 / Y)) - 1;
		out.println("<div align='center'>年期："+Y);
		out.println("<div align='center'>本金："+M);
		out.println("<div align='center'>总额："+F);	
		out.println("<div align='center'><strong>利率为："+RATE);
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