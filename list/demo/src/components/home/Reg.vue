<template>
  <div class="appRig">
    <div id="reg">
    <div class="reg_head lear">
      <b class="head-lf ph-size">手机号注册</b>
      <b class="reg-close head-rg">×</b>
      <span class="head-lf">已有账号?</span>
      <a class="head-lf head-login" href="javascript:;">登录</a>
    </div>
    <div class="reg_body">
      <div class="reg-tel lear">
        <span class="reg-d">+86</span>
        <!-- <ul>
          <li></li>
        </ul> -->
        <!-- <div><canvas></canvas></div> -->
        <input v-model="uname" class="put put-ph" type="text" placeholder="手机号/邮箱号/用户名">
      </div>
      <div class="reg_test">
        <input class="put put-test" type="text" placeholder="验证码">
        <a class="body-test" href="javascript:;">发送验证码</a>
        <input v-model="upwd" class="put put-pwd" type="text" placeholder="设置密码"/>
      </div>
    </div>
    <div class="reg_foot">
      <input class="foot foot-fx" type="checkbox">
      <span class="foot-msg foot">我希望通过短信和电话您能收到Hugh的最新动态</span>
      <input @click="addReg" class="foot foot-btn" type="button" value="注    册"/>
      <a class="foot foot-end" href="javascript:;">使用其他方式注册</a>
    </div>
  </div>
  </div>
</template>
<script>
export default {
    data(){
      return{
        uname:"",
        upwd:"",
      }
    },
    methods:{
      addReg(){
        var u=this.uname;
        var p=this.upwd;
        var postData=this.qs.stringify({
          uname:u,
          upwd:p,
        });
        var reg=/^[a-z0-9_]{3,8}$/i;
        if(!reg.test(u)){
          alert("用户名格式不正确");
           return;
         }
         if(!reg.test(p)){
           alert("密码格式不正确")
           return;
         }
        var url="http://localhost:3000/appReg";
        this.axios.post(url,postData).then(result=>{
          if(result.data.data.affectedRows>0){
            alert("注册成功");
          }else{
            alert("注册失败");
          }
        })
      }
    }
}
</script>
<style scoped>
  a,b,input,div,span,button{
  padding: 0px;
  margin: 0px;
}
a,b,span{
  text-decoration: none;
}
.lear::after{
  content:"";
  display: block;
  clear: both;
}
#reg{
  width: 450px;
  background-color:#eee; 
  margin: 200px auto;
  padding:30px; 
  border-radius: 4px;
  box-shadow: 0px 0px 7px #888;
}
.ph-size{
  width: 400px;
}
.head-lf{
  float: left;
  margin-bottom:10px;
}
.head-rg{
  float: right;
  font-weight: 100;
  color: #888;
  cursor: pointer;
}
.ph-size,.head-rg{
  font-size: 27px;
}
.head-login{
  display: inline-block;
  color: rgb(0, 132, 137);
  font-weight: 800;
  margin-left: 10px;
}
.reg-tel{
  margin-top: 16px;
}
.reg-d{
  display: inline-block;
  /* float: left; */
  width: 90px;
  height: 40px;
  border: 1px solid #888;
  border-radius: 4px;
  line-height: 40px;
  margin-right: 10px;
}
.put{
  display:inline-block;
  height: 40px;
  border-radius: 4px;
  padding-left: 15px;
  outline: none;
  font-size: 16px;
  border: 1px solid #888;
}
.put-ph{
  float: right;
  width: 330px;
}
.reg_test{
  margin-top: 17px;
}
.put-test{
  width: 265px;
  float: left;
}
.body-test{
  display: inline-block;
  height: 38px;
  width: 150px;
  border: 2px solid #888;
  border-radius: 4px;
  text-align: center;
  line-height: 38px;
  color: #666;
  font-weight: bolder;
  margin-left: 13px;
}
.put-pwd{
  width:434px;
  margin:17px 0px;
}
.foot{
  display: inline-block;
}
.foot-fx{
  width: 20px;
  height: 20px;
}
.foot-msg{
  font-weight: 100;
  position: relative;
  left: 0px;
  top: -4px;
}
.foot-btn{
  width: 100%;
  height: 40px;
  cursor: pointer;
  border-radius: 4px;
  border: 1px solid #888;
  margin-top:17px; 
  outline: none; 
  background-color:#e4393c;
  font-weight: 600;
  font-size: 20px;
  color: #eee;
}
.foot-end{
  width: 100%;
  font-weight: 600;
  color: rgb(0,132,137);
  text-align: center;
  margin-top:17px;  
}
</style>


