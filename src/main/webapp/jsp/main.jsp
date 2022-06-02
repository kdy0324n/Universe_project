<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/main.css">
<style>
body {
	overflow: auto;
	background-color:white;
}

.header {
	background-color:white;
	margin-left: auto;
	margin-right: auto;
	
}
#apply{
	height: 100px;
	width: 200px;
	position: absolute;
	left: 2%;
	top: 6%;
}
#jin{
	height: 100px;
	width: 200px;
	position: absolute;
	left: 12%;
	top: 6%;
}
#nice{
	height: 100px;
	width: 200px;
	position: absolute;
	left: 22%;
	top: 6%;
}
#id{
	margin-left:70%; 
}
.nav {
	height: 150px; 
	border: 3px;
	background-color: #F9E19F;
	
}

.area {
	background-color: #ffffff;
	height: 60em;
	overflow: auto; 
	margin:0px;
	background-image: url("http://localhost:8080/universe/img/campus.jpg");
	background-size: 100% 100%;
	
}
hr{
	margin: 0px;
}
.field1 {
	height: 40em;
	background-color: #FFFFFF;
	margin-left: 20em;
	margin-top: 50px;
	width: 65em;
}

.field2 {
	height: 40em;
	background-color: #FFFFFF;
	margin-left: 20em;
	margin-top: 50px;
	width: 65em;
	margin-bottom: 50px;
}

.field1>label {
	margin: 35px;
	font-size: 30px;
}

.field2>label {
	margin: 30px;
	font-size: 25px;
}

.footer {
	height: 200px;
	background-color: #F9E19F;
	opacity: 0.5;
	margin: 0px
	
}

.footer>h2 {
	margin-left: 30em;
	padding-top: 30px;
	width: auto;
}
.field{
	position:absolute;
	
	
	height: 100px;
	width: 500px;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr/>
	<div class="header">

		<label style="margin-left: 80%;">�α���</label> <label>|</label> <label>ȸ������</label>
		<label>|</label> <label>������</label>

	</div>
	<hr/>
	<div class="nav">
		<button id="apply">�����̾��ö���</button>
		<button id="jin">���л�</button>
		<button id="nice">���̽�</button>
		<fieldset class="field">
			<input type="text" placeholder="���̵�" id="id"/>
			<input type="password" placeholder="��й�ȣ" id="pw"/>				
			<button class="loginbutton">login</button>	
		</fieldset>
			
	</div>
	<div class="area">
		<div>
			<fieldset class="field1">
				<legend>����</legend>
				<label>�����</label> <label>������</label> <label>�����</label> <label>���հ���</label>
				<label>���ִ�</label> <label>������</label>
			</fieldset>
		</div>
		<div>
			<fieldset class="field2">
				<legend>�а�</legend>
				<label>�������</label> <label>�ǿ�����</label> <label>��ȸ�ι���</label> <label>��ǻ�Ͱ���</label>
				<label>����</label> <label>������</label>
			</fieldset>
		</div>
	</div>
	<div class="footer">
		<h2>����ó:010-1234-1234</h2>
	</div>
</body>
</html>