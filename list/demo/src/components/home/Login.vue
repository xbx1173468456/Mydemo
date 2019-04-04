<template>
  <div class="login">
        <div id="login">
        <span>欢迎你回家</span>
        <div class="login-body lear">
            <span class="sm">扫码登录</span>
            <span class="shu">|</span>
            <span class="zh">账户登录</span>
            <div class="login-sm">
                <img src="" />
                <img src="" />
                <span>打开<a href="javascript:;">流浪地球</a>&nbsp;&nbsp;扫描二维码</span>
                <ul>
                    <li>
                        <img src="" alt="">
                        <span>免输入</span>
                    </li>
                    <li>
                        <img src="" alt="">
                        <span>更快</span>
                    </li>
                    <li>
                        <img src="" alt="">
                        <span>更安全</span>
                    </li>
                </ul>
            </div>
            <div class="login-zh">
                <img src="" alt="">
                <input v-model="uname" class="uname" type="text" placeholder="邮箱/用户名/验证手机">
                <br>
                <img src="" alt="">
                <input v-model="upwd" class="upwd" type="password" placeholder="密码">
                <br>
                <a href="javascript:;">忘记密码</a>
                <input class="dl" type="button" value="登    录" @click="dLogin">
            </div>
        </div>
        <ul class="foot lear">
            <li>
                <a href="javascript:;">
                    <span class="icon3"></span>
                    <span>QQ</span>
                </a>
            </li>
            <li>
                <span>|</span>
            </li>
            <li>
                <a href="javascript:;">
                    <span class="icon4"></span>
                    <span>微信</span>
                </a>
            </li>
            <li>
                <img src="" />
                <a href="javascript:;">立即注册</a>
            </li>
        </ul>
    </div>
  </div>
</template>
<script>
// import axios from 'axios'
export default {
  data(){
    return{
      uname:"",
      upwd:"",
    }
  },
  created(){

  },
  methods:{
    dLogin(){
        //1:获取用户输入用户名和密码
        var u = this.uname;
        var p = this.upwd;
        //2:创建正则表达式验证用户名和密码格式是//否正确
        var reg = /^[a-z0-9_]{3,8}$/i;
        if(!reg.test(u)){
          //提示信息不是
          alert("用户名格式不正确,请检查");
          return;
        }
        if(!reg.test(p)){
          alert("密码格式不正确，请检查");
          return;
        }
        //3:发送ajax
        var url = "http://127.0.0.1:3000";
        url+="/login?uname="+u+"&upwd="+p;
        this.axios.get(url).then(result=>{
             //11:41
             if(result.data.code==1){
               alert("登录成功");
             }else{
               alert("用户名或密码有误")
             }
        }).catch(error=>{
            alert('跨域error',error)
        });
        //4:获取服务器返回结果
        //5:提示用户 36  
    }
  }
}
</script>
<style scoped>
* {
    margin: 0px;
    padding: 0px;
    list-style: none;
}

a {
    text-decoration: none;
}

ul {
    list-style: none
}

.lear::after {
    display: block;
    content: "";
    clear: both;
}

#login {
    position: relative;
    width: 400px;
    border: 1px solid #3a563a;
    margin: 150px auto;
    text-align: center;
    background-color: #fff;
    box-shadow: 0px 0px 7px #888;
}

#login>span {
    display: inline-block;
    margin-top: 15px;
    width: 100%;
    height: 40px;
    line-height: 40px;
    border-bottom: 1px solid #cccccc;
}

.login-body {
    width: 90%;
    margin-top: 20px;
    padding: 0px 20px 20px 20px;
}

.sm,
.zh,
.shu,
.login-sm,
.login-zh,
.foot {
    float: left;
}

.sm,
.zh {
    width: 177px;
    cursor: pointer;
}

.login-sm {
    top: 15px;
    left: 0px;
    display: none;
}

.login-zh {
    margin-top: 35px;
    width: 100%;
    text-align: center;
    /* display: none; */
}

.upwd,
.uname {
    display: inline-block;
    outline: none;
    width: 200px;
    font-size: 15px;
    margin-bottom: 25px;
    padding: 10px;
}

.dl {
    width: 100%;
    height: 45px;
    background-color: #e4393c;
    outline: none;
    font-size: 18px;
    font-weight: bold;
    color: #fff;
    border: none;
    cursor: pointer;
}

.login-zh>a {
    display: inline-block;
    width: 100%;
    text-align: right;
    margin-bottom: 20px;
    font-size: 15px;
    color: #888888;
}

.foot {
    position: absolute;
    width: 400px;
    bottom: -40px;
    left: -1px;
    line-height: 40px;
    border: 1px solid #3a563a;
    border-top: none;
    color: #999;
}

.foot li {
    float: left;
    height: 40px;
    font-size: 12px;
}

.icon3 {
    display: inline-block;
    position: relative;
    top: 5px;
    width: 22px;
    height: 22px;
    border-radius: 50%;
    /* background-image: url("./img/11.jpg"); */
}

.icon4 {
    position: relative;
    top: 5px;
    display: inline-block;
    width: 22px;
    height: 22px;
    border-radius: 50%;
    /* background-image: url("./img/10.jpg"); */
    /* margin-top:5px;  */
}

.foot li a {
    line-height: 40px;
    display: inline-block;
    text-align: center;
    color: #999;
    height: 40px;
    width: 80px;
}

.foot li:last-child {
    float: right;
    font-size: 16px;
}

.foot li a:hover {
    color: #e4393c;
}
</style>


