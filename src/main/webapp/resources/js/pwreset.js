function registerValidate_member(){
    let passwd = document.passwordRe.m_passwd;
	let repasswd = document.passwordRe.m_passwd2;
    if(PasswdCheak(passwd)){
        alert("비밀번호는 영문자와 숫자를 조합하여 8자리 이상으로 입력해 주세요.");
        console.log("passwd");
        return false;
    }
 
	if(passwd.value != repasswd.value){
		alert("비밀번호가 일치하지 않습니다. 다시 입력해 주세요");
        console.log("repasswd");
        return false;
	}
}

//비밀번호
function PasswdCheak(inputObject){
    var regexp = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    if(regexp.test(inputObject.value)){
        return false;
    }else{
        return true;
    }
}
