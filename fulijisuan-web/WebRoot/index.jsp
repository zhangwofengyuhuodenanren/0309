<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#titlesize {
	font-size: 50px;
	font-family: "微软雅黑 Light";
	color: #F00;
	font-style: italic;
}

table {
	color: #0000FF;
}
</style>
</head>
</head>

<body style="background-color:#ffff66">
	<blockquote>
		<p id="titlesize">复利计算器</p>
		<form name="form1" method="post" action="">
			<blockquote>
			
				<blockquote>
					<table width="500" align="center">
						<tr>
						  <td height="30" bgcolor="#FFFF66"><label> <input 
							        type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_0"
								    onclick="zongefuli()">1.总额复利 </label></td>

						<tr>
						  <td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1"
									onclick="zongedanli()">2.总额单利</label></td>
						</tr>
						<tr>
						  <td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_2"
									onclick="jisuanbenjin()">3.计算本金 </label></td>
						</tr>
						<tr>
						  <td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_3"
									onclick="jisuannianqi()">4.计算年期 </label></td>
						</tr>
						<tr>
						  <td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_4"
									onclick="jisuanlilv()">5.计算利率 </label></td>
						</tr>
						<tr>
							<td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_5"
									onclick="moneyandrate()">6.若连本带利投资，最后得到的资产总值
							</label></td>
						</tr>
						<tr>
							<td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_6"
									onclick="money()">7.若投资本金每年不变，最后得到的资产总值
							</label></td>
						</tr>
						<tr>
							<td height="30" bgcolor="#FFFF66"><label> <input
									type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_6"
									onclick="daikuan()">8.银行贷款
							</label></td>
						</tr>
					</table>
		      <p>&nbsp;</p>
					<p>&nbsp;</p>
				</blockquote>
			</blockquote>
		</form>
		<p>
			<br>
		</p>
	</blockquote>
</body>
</html>

<script type="text/javascript">
function zongefuli() {
	window.location.href = "zongefuli.jsp";
}
</script>
 
 <script type="text/javascript">
function zongedanli() {
	window.location.href = "zongedanli.jsp";
}
</script> 

<script type="text/javascript">
function jisuanbenjin() {
	window.location.href = "jisuanbenjin.jsp";
}
</script> 

<script type="text/javascript">
function jisuannianqi() {
	window.location.href = "jisuannianqi.jsp";
}
</script> 

<script type="text/javascript">
function jisuanlilv() {
	window.location.href = "jisuanlilv.jsp";
}
</script> 

<script type="text/javascript">
function moneyandrate() {
	window.location.href = "moneyandrate.jsp";
}
</script> 

<script type="text/javascript">
function money() {
	window.location.href = "money.jsp";
}
</script> 

<script type="text/javascript">
function daikuan() {
	window.location.href = "daikuan.jsp";
}
</script> 