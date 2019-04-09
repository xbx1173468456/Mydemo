<template>
<div class="ds_gz clear">
    <div class="ds_gz-left clear">
        <h3 class="gzleft-heade gz-left gz-h3">热点关注</h3>
        <div class="gz-left gzleft-left">
          <form class="gzleft-form">
            <i class="iconfont icon-sousuo gz-sou"></i>
            <input type="text" placeholder="请输入关键字">
            <button>搜索</button>
          </form>
          <div class="gzleft-miidle gz-left">
            <a v-for="(item,i) of gzrs" :key="i" href="javascript:;">{{item.guanzhu_msg}}</a>
            <img id="gz-img" src="http://127.0.0.1:3000/img/515.jpg" alt="">
          </div>
        </div>
        <div class="gzleft-right">
            <a href="javascript:;">
              <img src="http://127.0.0.1:3000/img/3(1).jpg" alt="">
            </a>
            <p v-for="(item,i) of gzmd" :key="i" class="gzleft-msg">{{item.guanzhu_msg}}</p>
        </div>
    </div>
    <div class="ds_gz-right">
        <h3 class="gz-h3">每日导读</h3>
        <ul class="gzright">
            <li>
                <a href="javascript:;">
                    <img class="ds_gz-right-img" src="http://127.0.0.1:3000/img/514.jpg" alt="">
                </a>
            </li>
            <li v-for="(item,i) of gzdd" :key="i">
                <a href="javascript:;">{{item.guanzhu_msg}}</a>
            </li>
           
        </ul>
    </div>
</div>
</template>
<script>
export default {
    props:["gzrs","gzdd","gzmd"],
  data(){
    return{}
  }
}
</script>
<style scoped>
.gz-sou{
    position: absolute;
    color: #bbb;
    left: 15px;
    top: 14px;
}
.gzright a:hover{
    text-decoration: underline;
    color: #5291ef;
}
.gzright a{
    color:#888;
    font-size: 13px;
    line-height: 240%;

}
.gzright img{
    width: 100%;
}
.gzright li{
    float: left;
}
.gzleft-msg::before{
    content: "";
    display: block;
    width: 0px;
    height: 10px;
    border:2px solid #5291ef;
    position: absolute;
    left: -1px;
    top: 16px;
}
.gzleft-msg{
    font-size: 13px;
    text-align: left;
    padding: 13px;
    border: 1px solid #ddd;
    line-height: 150%;
    margin-top: 18px;
    position: relative;
}
.gzleft-right{
    width: 67%;
    float: left;
    margin-left: 25px;
}
.gzleft-miidle a:hover{
    background-color:#5291ef; 
    color: #fff;
}
.gzleft-miidle a{
    margin: 0px 8px 8px 0px;
    padding: 4px 10px;
    color: #5291ef;
    font-size: 13px;
    border: 1px solid #5291ef;
    border-radius: 3px;
    float: left;
}
.gzleft-miidle{
    width: 100%;
    margin-top: 15px;
}
.gzleft-form button{
    position: absolute;
    top: 8px;
    right: 6px;
    height: 32px;
    border: none;
    width: 60px;
    background: #5291ef;
    color: #fff;
}
.gzleft-form input{
    width: 100%;
    text-indent: 28px;
    height: 28px;
    border: 1px solid #bbb;
}
.gzleft-left img{
    width: 100%;
    margin-top: 10px;
}
.gzleft-left{
    border: 1px solid #ddd;
    padding: 8px;
    width: 245px;
    position: relative;
}
.gz-h3{
    width: 100%;
    margin-bottom: 20px;
    color: #5291ef;
    font-size: 18px;
    text-align: left;
    font-weight: normal;
    padding-left: 10px;
    border-left: 3px solid #5291ef;
}
.ds_gz {
    width: 1200px;
    background: #f9f9f9;
    margin-top: 30px;
    padding: 20px;
    margin-left: auto;
    margin-right: auto;
}
.gz-left{
    float: left;
}
.ds_gz-left {
    width: 75%;
    float: left;
}
.ds_gz-right{
    float:right;
    width: 23.5%;

}
</style>
