<template>
  <div class="ds_logo">
            <div class="ds_logo-left">
                <a href="javascript:;">
                    <img src="http://127.0.0.1:3000/img/504.png"/>
                </a>
            </div>
            <div class="ds_logo-right">
                <div class="logo-tu1">
                    <div class="logo-tu2"></div>
                </div>
                <a class="ds_logo-a" href="javascript:;">搜索</a>
                <input class="ds_logo-input" type="text" placeholder="请输入关键字">
                <div class="ds_logo_sx">
                    <div class="ds_logo_sx1"></div>
                </div>
                <!-- <div class="ds_logo_rc"> -->
                <ul class="clear">
                    <li class="right-kc">
                        <span class="ds_logo_rc">热门搜索词:</span>
                        <a href="javascript:;">暑假衔接班</a>
                    </li>
                    <li class="right-kc">
                        <a href="javascript:;">数理化辅导</a>
                    </li>
                    <li class="right-kc">
                        <a href="javascript:;">高三集训班</a>
                    </li>
                    <li class="right-kc">
                        <a href="javascript:;">全托辅导</a>
                    </li>
                    <li class="right-kc">
                        <a href="javascript:;">一对一</a>
                    </li>
                </ul>
            </div>
        </div>
</template>
<script>
export default {
  name:"Dslogo",
  data(){
    return{}
  }
}
</script>
<style>
.ds_logo_rc{
    margin-left:30px; 
}
.ds_logo {
    height: 100px;
    width: 1200px;
    margin: 0 auto;
    overflow: hidden;
    margin-top: 35px;
    position: relative;
}
.logo-tu1{
    width: 10px;
    height: 10px;
    border:3px solid #ccc;
    border-radius:50%;
    position: absolute;
    top:15px;
    right:487px;
  }
  .logo-tu2{
    width: 6px;
    border:2px solid #ccc;
    position: absolute;
    top:10px;
    left:10px;
    border-radius:3px;
    transform:rotate(35deg);
  }
.ds_logo-left {
    height: 90px;
    float: left;
    box-sizing: border-box;
}

.ds_logo-left a {
    display: block;
    height: 75px;
    line-height: 90px;

}

.ds_logo-left img {
    height: 75px;
}

.ds_logo-right {
    float: right;
    box-sizing: border-box;
    width: 535px;
}

.ds_logo-input,
.ds_logo-a {
    float: right;
}

.ds_logo-input {
    width: 444px;
    height: 28px;
    padding: 8px 0px;
    text-indent: 40px;
    outline: #999;
    margin-bottom: 13px;
}

.ds_logo-a {
    height: 48px;
    width: 65px;
    background: #5291ef;
    text-align: center;
    line-height: 48px;
    color: #fff;
    text-decoration: none;
    margin-bottom: 13px;
}
.right-kc{
    float: left;
    font-size: 14px;
    font-weight: 100;
    text-align: center;
}
.right-kc a{
    color: #999;
    margin:0px 7px;
}
.right-kc a:hover{
    text-decoration:underline;
}
</style>
