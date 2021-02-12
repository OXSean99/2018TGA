// JavaScript Document
function checkLogin(){
var flag;
//获取用户输入的用户名和密码
var name=document.form1.username.value;
var pass=document.form1.password.value;
  if(name==0||name==null){
    alert("请输入用户名！");
	flag=false;
  }else if(name.length<4||name.length>10){
    alert("用户名的长度不符合要求，请重新输入！");
	flag=false;
  }else   if(pass==0||pass==null){
    alert("请输入密码！");
	flag=false;
  }else if(pass.length<6||pass.length>16){
    alert("密码的长度不符合要求，请重新输入！");
	flag=false;
  }else{
	  //登陆成功，设置flag标志的值
	  flag=true;
	  //弹出登录成功的提示信息
	  alert("登录成功！");
	  //打开或跳转到华软首页
	  this.open("http://www.sise.com.cn");
  }
  return flag;
}


function checkRegister(){
var flag;
//获取用户输入的用户名、密码和确认密码等信息
var user=document.form2.user.value;
var pass1=document.form2.pass.value;
var pass2=document.form2.password1.value;
  if(user==0||user==null){
    alert("请输入用户名！");
	flag=false;	
	//return flag;
  }else if(user.length<4||user.length>10){
    alert("用户名的长度不符合要求，请重新输入！");
	flag=false;
	//return flag;
  }else if(pass1==null){
    alert("请输入密码！");
	flag=false;	
	//return flag;
  }else if(pass1.length<6||pass1.length>16){
    alert("密码的长度不符合要求，请重新输入！");
	flag=false;	
	//return flag;
  }else if(pass2==null){
    alert("请输入确认密码！");
	flag=false;
	//return flag;
  }else if(pass2.length<6||pass2.length>16){
    alert("确认密码的长度不符合要求，请重新输入！");
	flag=false;	
	//return flag;
  }else if(pass2!=pass1){
    alert("确认密码与密码不一致，请重新输入！");
	flag=false;
	//return flag;
  }else{
	  //登陆成功，设置flag标志的值
	  flag=true;
	  //弹出登录成功的提示信息
	  alert("注册成功！");
	  //打开或跳转登陆界面
	  this.open("login.html");
	    }
 return flag;
}