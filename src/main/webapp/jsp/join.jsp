<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/join.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function gopage() {
		var frmMember=document.frmMember;
		var id = frmMember.loginId.value;
		var pw = frmMember.loginPw.value;
		var name = frmMember.name.value;
		var email = frmMember.email.value;
		var nickname = frmMember.nickname.value;
		var cellphoneNo = frmMember.cellphoneNo.value;
		
		if(id.length==0 || id == ''){
			alert("���̵�� �ʼ��Դϴ�.");
		}else if(pw.length==0 || pw==''){
			alert("����� �ʼ� �Դϴ�.");
		}else if(name.length==0 || name==""){
			alert("�̸��� �ʼ� �Դϴ�.");
		}else if(email.length==0 || email==""){
			alert("�̸����� �ʼ� �Դϴ�.");
		}else if(nickname.length==0 || nickname==""){
			alert("�г����� �ʼ� �Դϴ�.");
		}else if(cellphoneNo.length==0 || cellphoneNo==""){
			alert("��ȭ��ȣ�� �ʼ� �Դϴ�.");
		}else{
			frmMember.method="post";
			frmMember.action="../Insert";
			frmMember.submit();
		}
	}
</script>
</head>
<body>
	<form name="frmMember" action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;">
                                                                                               
      <h2>ȸ������</h2>
      <div class="textForm">
        <input name="loginId" type="text" class="id" placeholder="���̵�">
        </input>
      </div>
      <div class="textForm">
        <input name="loginPw" type="password" class="pw" placeholder="��й�ȣ">
      </div>
      <div class="textForm">
        <input name="name" type="text" class="name" placeholder="�̸�">
      </div>
       <div class="textForm">
        <input name="email" type="text" class="email" placeholder="�̸���">
      </div>
      <div class="textForm">
        <input name="nickname" type="text" class="nickname" placeholder="�г���">
      </div>
      <div class="textForm">
        <input name="cellphoneNo" type="number" class="cellphoneNo" placeholder="��ȭ��ȣ">
      </div>
      <input type="button" class="btn" value="J O I N" onclick="gopage()"/>
    </form>
</body>
</html>