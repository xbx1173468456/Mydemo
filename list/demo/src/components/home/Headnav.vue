<template>
<div class="ds_nav">
    <div class="ds-nav clear">
        <a class="nav-bar nav-shou" href="javascript:">首页</a>
        <div @mouseenter="jump1" @mouseleave="jump2" class="nav-bar">
            <a class="nav-size" href="javascript:;">优氏资源</a>
            <i class="iconfont icon-jiantoudown jt-dk"></i>
           <div v-show="kc" class="ds_nav-kc">
                <!-- <navtab/> -->
                <div class="nav-kc">
                    <sztab v-for="(item,i) of this.class" :key="i" :item="item"/>
               </div> 
           </div> 
        </div>
        <div @mouseenter="jump3" @mouseleave="jump4" class="nav-bar">
            <a class="nav-size" href="javascript:;">优氏课程</a>
            <i class="iconfont icon-jiantoudown jt-dk"></i>
           <div v-show="sz" class="ds_nav-kc">
               <div class="nav-kc">
                    <sztab v-for="(item,i) of this.list" :key="i" :item="item"/>
               </div> 
           </div> 
        </div>
        <div class="nav-bar">
            <a class="nav-size" href="javascript:;">校区查询</a>
            <a class="nav-size" href="javascript:;">优氏资讯</a>
            <a class="nav-size" href="javascript:;">教育资讯</a>
            <a class="nav-size" href="javascript:;">教学环境</a>
            <a class="nav-size" href="javascript:;">在线报名</a>
            <a class="nav-size" href="javascript:;">关于我们</a>
            <img class="nav-img" src="http://127.0.0.1:3000/img/xkbm.jpg" />
        </div>
    </div>    
</div>
</template>
<script>
// import navtab from '../zujian/navtab.vue'
import sztab from '../zujian/sztab.vue'
export default {
    components:{
        "sztab":sztab
    },
  data(){
    return{ 
        kc:false,
        sz:false,
        list:[],
        class:[]
    }
  },
  created(){
      this.navclass();
      this.navlist();
  },
  methods:{
      navclass(){
      var url="http://127.0.0.1:3000/navclass";
      this.axios.get(url).then(result=>{
        this.class=result.data.data;
      })
    },
      navlist(){
      var url="http://127.0.0.1:3000/navsznl";
      this.axios.get(url).then(result=>{
        this.list=result.data.data;
      })
    },
      jump1(){
          this.kc=true;
      },
      jump2(){
          this.kc=false;
      },
      jump3(){
          this.sz=true;
      },
      jump4(){
          this.sz=false;
      }
  }
}
</script>
<style>
.nav-kc{
  width: 1200px;
  display: flex;
  margin: 0 auto;
  justify-content: space-between;
  padding: 20px 0px;
}
.ds_nav-kc {
  width: 100%;
  text-align: center;
  position: absolute;
  background-color: #5291ef;
  top: 40px;
  left: 0px;
  z-index: 3;
}
.nav-img{
  height: 40px;
  float: right;
  margin-left: 30px;
}
.jt-dk{
position: relative;
top: 1px;
left: -30px;
}
.nav-size:hover{
  color: #5291ef;
}
.nav-size{
  padding:0px 27px;
  font-size: 16px;
  color: #000;
  line-height: 40px;
}
.nav-shou{
  line-height: 40px;
  padding:0px 28px;
  font-size: 16px;
  background-color: #5291ef;
  color: aliceblue;
}
.nav-bar{
  float: left;
}
.ds-nav{
  width: 1200px;
  margin:0px auto;
  height: 40px;
  text-align: center;
}
.ds_nav {
  width: 100%;
  border-bottom: 3px solid #5291ef;
  margin-top: 20px;
  position: relative;
}
.nav_jt {
  position: relative;
  width: 0px;
  height: 0px;
  z-index: 3;
  border: 5px solid #000;
  border-bottom: 5px solid transparent;
  border-right: 5px solid transparent;
  border-left: 5px solid transparent;
}
</style>
