<template>
  <div class="teaches-desc">
    <div class="teacher-desc desc clear">
      <div v-for="(item,index) of teache" :key="index" class="teacher-cart clear" :style="{'left':-(nowIndex*1100)+'px'}">
        <img :src="item.img_url" />
        <div class="teacher-xq">
          <h3>{{item.tname}}</h3>
          <p class="xq-ys">{{item.tys}}</p>
          <b>个人简介</b>
          <p class="xq-ys">{{item.msg}}</p>
          <b>教学理念</b>
          <p class="xq-qz">{{item.tln}}</p>
        </div>
      </div>
    </div>
    <div class="teacher-head">
      <p @click="jump(index)" v-for="(item,index) of teache" :key="index" class="teacher-tx" :style="{'background-image':'url('+item.img_url+')'}" :class="{tx:nowIndex===index}"></p>
    </div>
    <a class="teaches-ljgd" href="javascript:;">了解更多资源配备</a>
  </div>
</template>
<script>
export default {
  props:["teache"],
  data(){
    return{
      nowIndex:0
    }
  },
  created(){
  },
  methods:{
    jump(index){
      this.nowIndex=index;
    }
  },
}
</script>
<style scoped>
.tx{
  border-color: #f37203 !important;
}
.teacher-head{
  display: flex;
}
.teacher-desc{
  width: 10000px;
  margin-top: 100px;
}
.teaches-ljgd{
  display: block;
  width: 220px;
  margin: 30px auto 0 auto;
  padding: 15px 0;
  text-align: center;
  color: #fff;
  font-size: 18px;
  background: #f37203;
  border-radius: 5px;
  font-family: "microsoft yahei";
}
.teacher-tx{
    box-sizing: border-box;
    width: 100px;
    height: 100px;
    margin: 0 auto;
    background-position: top !important;
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
    background-color: #eee;
    border-radius: 100%;
    border: 3px solid #fff;
    cursor: pointer;
}
.teacher-xq::after{
    content: "";
    position: absolute;
    right: 0;
    bottom: 0;
    width: 50px;
    height: 50px;
    border: 1px solid #f37203;
    border-width: 0px 2px 2px 0px;
}
.teacher-xq::before{
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: 50px;
    height: 50px;
    border: 1px solid #f37203;
    border-width: 2px 0 0 2px;
}
.xq-qz{
  font-size: 13px;
  margin:8px 0px 0px 0px; 
}
.xq-ys{
  font-size: 13px;
  margin: 8px 0px 20px 0px;
}
.teacher-xq{
  width: 35%;
  float: right;
  text-align: left;
  padding: 55px; 
  color: #fff;
  position: relative;
  margin-right:110px; 
}
.teacher-cart img{
  float: left;
  padding-left:120px; 
}
.teacher-cart{
  width: 1100px;
  float: left;
  position: relative;
  transition: linear .4s;
}
.teaches-desc{
  width: 1100px;
  margin: 0px auto;
  overflow: hidden;
}
</style>
