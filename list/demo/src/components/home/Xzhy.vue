<template>
  <div class="ds-xzhy">
    <div class="xzhy-item clear">
      <span @mouseenter="xzitem(index)" class="item" v-for="(item,index) of xzhy" :key="index" :class="{active:nowindex==index}">{{item}}</span>
      <a href="javascript:;">点击查看更多</a>
    </div>
    <div v-show="nowindex==0" class="xzhy-img">
      <img v-for="(item,index) of hy" :key="index" :src="item.img_url"/>
    </div>  
    <div v-show="nowindex==1" class="xzhy-img">
      <img v-for="(item,index) of hz" :key="index" :src="item.img_url"/>
    </div>  
    <div v-show="nowindex==2" class="xzhy-img">
      <img v-for="(item,index) of kt" :key="index" :src="item.img_url"/>
    </div>  
  </div>
</template>
<script>
export default {
  props:["hy","kt","hz"],
  data(){
    return{
      xzhy:["一起合影","学习环境","课堂一角"],
      nowindex:0,
    }
  },
  
  methods:{
    xzitem(index){
      this.nowindex=index;
    }
  }
}
</script>
<style scoped>
.xzhy-img img{
  width: 23%;
  height: 171px;
}
.xzhy-item a:hover{
  color: #5291ef;
}
.xzhy-item a{
  float: right;
  font-size: 13px;
  color: #777;
}
.active{
  color: #5291ef;
  border-bottom: 2px solid #5291ef;
}
.item{
  cursor: pointer;
  float: left;
  margin: 0px 13px;
  padding-bottom:4px;
}
.xzhy-img{
  width: 100%;
  display: flex;
  list-style: none;
  justify-content:space-between;
  padding-left: 0px;
  margin-top: 25px;
}
.ds-xzhy{
  width: 1200px;
  padding: 20px;
  background-color:#f9f9f9;
  margin: 20px auto; 
}
</style>
