<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jisuannianqi.jsp' starting page</title>
    
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
		计算年期</p>
	</div>
	<form name="form1" method="post" action="">
		<table width="400" border="2" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<th width="235" height="30" align="right" bgcolor="#00FFFF">本金：</th>
				<th width="165" bgcolor="#00FFFF"><input name="benjin"
					type="text" id="benjin"></th>
			</tr>
			<tr>
				<th height="30" align="right" bgcolor="#00FFFF">利率：</th>
				<th bgcolor="#00FFFF"><input name="lilv" type="text" id="lilv">
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
  		String MONEY = request.getParameter("benjin");
  		String RATE = request.getParameter("lilv");
  		String FINALLY = request.getParameter("FINALLY");
  		double M=0,R=0;
  		double F=0;
  	if(MONEY==null){
		MONEY="0";
		RATE="0";
		FINALLY="0";
		}
		try{M=Double.valueOf(MONEY).doubleValue();
		R=Double.valueOf(RATE).doubleValue();
		F=Integer.valueOf(FINALLY).intValue();
		double YEARS = Math.log((double) (F / M))/(Math.log((double) (1 + R)));
		out.println("<div align='center'>本金："+M);
		out.println("<div align='center'>利率："+R);
		out.println("<div align='center'>总额："+F);	
		out.println("<div align='center'><strong>年期为："+YEARS);
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