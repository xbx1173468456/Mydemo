<template>
  <div class="jstd">
    <div class="ds_js clear">
      <h3 class="js-jstd team">教师团队</h3>
      <span @mouseenter="jstd(index)" v-for="(cla,index) of clas" :key="index" class="js-jstd js-clas" :class="{active:index==nowindex}">{{cla}}</span>
      <a class="jstd-check" href="javascript:;">点击查看更多</a>
    </div>
    <ul v-show="nowindex==0" class="js-js">
      <li class="jstd-msg" v-for="(item,i) of mat" :key="i">
        <a href="javascript:;"><img :src="item.img_url"/></a>
        <h3>{{item.jname}}</h3>
        <p>{{item.msg}}</p>
        <a class="js-gdjs" href="javascript:;">更多介绍</a>
      </li>
    </ul>  
    <ul v-show="nowindex==1" class="js-js">
      <li class="jstd-msg" v-for="(item,i) of chin" :key="i">
        <a href="javascript:;"><img :src="item.img_url"/></a>
        <h3>{{item.jname}}</h3>
        <p>{{item.msg}}</p>
        <a class="js-gdjs" href="javascript:;">更多介绍</a>
      </li>
    </ul>  
    <ul v-show="nowindex==2" class="js-js">
      <li class="jstd-msg" v-for="(item,i) of eng" :key="i">
        <a href="javascript:;"><img :src="item.img_url"/></a>
        <h3>{{item.jname}}</h3>
        <p>{{item.msg}}</p>
        <a class="js-gdjs" href="javascript:;">更多介绍</a>
      </li>
    </ul>  
    <ul v-show="nowindex==3" class="js-js">
      <li class="jstd-msg" v-for="(item,i) of mat" :key="i">
        <a href="javascript:;"><img :src="item.img_url"/></a>
        <h3>{{item.jname}}</h3>
        <p>{{item.msg}}</p>
        <a class="js-gdjs" href="javascript:;">更多介绍</a>
      </li>
    </ul>  
    <ul v-show="nowindex==4" class="js-js">
      <li class="jstd-msg" v-for="(item,i) of chin" :key="i">
        <a href="javascript:;"><img :src="item.img_url"/></a>
        <h3>{{item.jname}}</h3>
        <p>{{item.msg}}</p>
        <a class="js-gdjs" href="javascript:;">更多介绍</a>
      </li>
    </ul>  
    <ul v-show="nowindex==5" class="js-js">
      <li class="jstd-msg" v-for="(item,i) of mat" :key="i">
        <a href="javascript:;"><img :src="item.img_url"/></a>
        <h3>{{item.jname}}</h3>
        <p>{{item.msg}}</p>
        <a class="js-gdjs" href="javascript:;">更多介绍</a>
      </li>
    </ul>  
  </div>
</template>
<script>
export default {
  props:["chin","mat","eng"],
  data(){
    return{
    clas:["全部","语文","数学","英语","理综","文综"],
    nowindex:0,
    }
  },
  created(){

  },
  methods:{
    jstd(index){
      this.nowindex=index;
    }
  }
}
</script>
<style scoped>
.js-gdjs:hover{
  background: #888;
  color: #fff;
}
.js-gdjs{
  font-size: 12px;
  color: #888;
  padding: 7px 17px;
  margin: 10px 0px 35px 0px;
  border: 1px solid #ddd;
  border-radius: 5px;
}
.jstd-msg p{
  margin: 10px 0px;
  font-size: 13px;
}
.jstd-msg h3{
  margin-top:7px;
  color: #5291ef;
  font-weight: 400;
}
.jstd-msg{
  border: 1px solid #eee;
  width: 271px;
}
.js-clas{
  color: #888;
  padding:2px;
  cursor: pointer;
  font-size: 14px;
  margin:0px 15px;
}
.jstd-check:hover{
  color: #5291ef;
}
.jstd-check{
  float: right;
  color: #777;
  font-size: 13px;
}
.team{
font-weight: 400;
color: #5291ef;
padding:0px 30px 0px 15px;
border-left: 3px solid #5291ef;
}
.jstd{
  width: 1200px;
  margin: 0px auto;
  padding: 20px;
  background: #f9f9f9;
}
.js-jstd{
  float: left;
}
.js-fl{
  font-size: 16px;
  padding-right: 15px;
  
}
.js-js{
  display: flex;
  list-style: none;
  justify-content: space-between;
  padding-left: 0px;
  margin-top: 15px;
}
.active{
  color: #5291ef;
  border-bottom: 2px solid #5291ef;
}
</style>
