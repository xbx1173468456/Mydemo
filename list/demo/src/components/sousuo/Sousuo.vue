<template>
  <div class="ds-ss clear">
    <div class="ss-left">
      <h2>搜索 " "</h2>
      <p class="sleft">没有所搜到相关内容...</p>
    </div>
    <div class="ss-right">
      <router-link to="/">
        <img src="http://127.0.0.1:3000/img/520.jpg" />
      </router-link>
      <div class="ss-rdgz">
        <h3 class="ss-hd">热点关注</h3>
        <div class="">
          <router-link v-for="(item,index) of gzrs" :key="index" class="ss-rd" to="/">
            {{item.guanzhu_msg}}
          </router-link>
        </div>
      </div>
      <div class="ss-sznl clear">
        <h3 class="ss-left ss-hd">师资力量</h3>
        <router-link class="ss-sr ss-color" to="/">更多></router-link>
        <router-link v-for="(item,index) of chin" :key="index" class="ss-left ss-sz" to="/">
          <img class="ss-timg ss-left" :src="item.img_url" />
          <b class="ss-left">不懂</b>
          <p class="ss-left sl-teach">老师</p>
          <p class="ss-left sl-msg">具备深厚的文学功底，毕业于四川师范大学语言文学专业，有三年以上的教学...</p>
        </router-link>
        <div class="ss-foot clear">
          <h3 class="ss-left ss-hd sfoot">教育资讯</h3>
          <router-link class="ss-foot ss-sr ss-color" to="">更多></router-link>
          <router-link v-for="(item,index) of gzrt" :key="index" class="ss-left clear sfoot-msg" to="/">
            <p class="s-left s-foot-msg ss-color">{{item.guanzhu_msg}}</p>
            <p class="s-foot-date">2018-07-09</p>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  props:["gzrs","gzrt","chin"],
  data(){
    return{}
  }
}
</script>
<style>
.s-foot-date{
  float: right;
  color: #444;
  font-size: 13px;
  line-height: 18px;
}
.sfoot{
  width: 80%;
}
.sfoot-msg{
  width: 100%;
  padding: 0px 0px 8px 0px;
}
.s-foot-msg{
  color: #444;
  font-size: 13px;
  display: inline;
}
.sl-teach{
  color: #444;
  font-size: 12px;
  padding-top: 12px;
}
.ss-sz>b{
  color: #000;
  padding: 10px 13px 0px 16px;
}
.sl-msg{
  width: 65%;
  color: #888;
  font-size: 12px;
  padding: 5px 0px 0px 13px;
}
.ss-color:hover{
  color: #5291ef;
}
.ss-sr{
  float: right;
  color: #888;
  font-size: 14px;
  line-height: 22px;
  padding: 18px 0px 0px 0px;
}

.ss-timg{
  width: 110px;
  margin-bottom: 15px;
}
.ss-rd:hover{
  color: #fff;
  background-color: #5291ef;
}
.ss-rd{
  font-size: 13px;
  color: #888;
  padding: 5px 10px;
  border: 1px solid #eee;
  border-radius: 5px;
  margin: 0px 10px 10px 0px;
}
.ss-hd{
  padding: 15px 0px 10px 0px;
}
.ds-ss{
  width: 1200px;
  margin: 30px auto 0px;
  text-align: left;
}
.sleft{
  margin-top:15px; 
  font-size: 13px;
}
.ss-right{
  width: 30%;
  float: right;
}
.ss-left{
  float: left;
}
</style>
