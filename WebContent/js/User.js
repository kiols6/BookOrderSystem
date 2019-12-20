//登录时检查输入合法性
function checkForm() {
    var name = loginForm.name.value;
    var pwd = loginForm.pwd.value;
    //alert(name + pwd);
    if (userName == null || passWord == null) {
    	window.alert("登录信息不能为空！");
        loginForm.userName.focus();
        return false;
    } 
    return true;
}

//注册键超链接至注册页面
function checkReg() {
    window.location.href="register.jsp";
}