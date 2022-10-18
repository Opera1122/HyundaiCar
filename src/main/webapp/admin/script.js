	function loginCheck(){
		if(document.login.cust_id.value==""){
			alert("아디를 입력해주세요.");
			document.login.cust_id.focus();
			return;
		}
		if(document.login.cust_pw.value==""){
			alert("암호를 입력해주세요.");
			document.login.cust_pw.focus();
			return;
		}
		document.login.submit();
	}
	
	function inputCheck(){
		if(document.signForm.cust_id.value==""){
			alert("아이디를 입력해주세요.");
			document.signForm.cust_id.focus();
			return;
		}
		
		if(document.signForm.cust_pw.value==""){
			alert("암호를 입력해주세요.");
			document.signForm.cust_pw.focus();
			return;
		}
		
		if(document.signForm.cust_name.value==""){
			alert("이름를 입력해주세요.");
			document.signForm.cust_name.focus();
			return;
		}
		
		if(document.signForm.cust_email.value==""){
			alert("이메일을 입력해주세요.");
			document.signForm.cust_email.focus();
			return;
		}
		
		if(document.signForm.cust_tel.value==""){
			alert("연락처를 입력해주세요.");
			document.signForm.cust_tel.focus();
			return;
		}
		
		if(document.signForm.cust_address.value==""){
			alert("주소를 입력해주세요.");
			document.signForm.cust_address.focus();
			return;
		}
		
		if(document.signForm.cust_gender.value=="0"){
			alert("성별을 선택해주세요.");
			document.signForm.cust_gender.focus();
			return;
		}
		
		if(document.signForm.cust_pw.value){
			alert("암호가 일치하지 않습니다.");
			document.signForm.cust_pw.focus();
			return;
		}

		var str=document.signForm.cust_email.value;	   
		var atPos = str.indexOf('@');
		var atLastPos = str.lastIndexOf('@');
		var dotPos = str.indexOf('.'); 
		var spacePos = str.indexOf(' ');
		var commaPos = str.indexOf(',');
		var eMailSize = str.length;
		if (atPos > 1 && atPos == atLastPos && 
		   dotPos > 3 && spacePos == -1 && commaPos == -1 
		   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
		else {
			  alert('E-mail 입력 형식이 맞지않습니다.');
			  document.signForm.cust_email.focus();
			  return;
		}

		document.signForm.submit();
	}
	
	function idCheck(id){
		if(id == ""){
			alert("아이디를 확인해주세.");
			document.signForm.cust_id.focus();
		}else{
			url="idCheck.jsp?cust_id=" + cust_id;
			window.open(url,"post","width=300,height=150");
		}
	}