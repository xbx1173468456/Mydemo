<template>
  <div id="carousel">
    <div class="carousel-wrap">
        <a v-show="index==currentIndex" v-for="(list,index) of lnbo" :key="index" @mouseenter="stop" @mouseleave="go" href="javascript:;">
          <img :src="list.img_url"/>
        </a>
    </div>
    <div class="carousel-items"> 
      <span class="items-cir" v-for="(item,index) of lnbo" :key="index" :class="{slider:index==currentIndex}" @mouseover="change(index)"></span>
    </div>
    <div class="ds-nianji">
      <nianji :bannian="bannian" :chunian="chunian" :xiaonian="xiaonian" :gaonian="gaonian" class="nianji-item"/>
    </div>
  </div>
</template>
<script>
import nianji from '../zujian/nianji.vue'
export default {
  components:{
    'nianji':nianji
  },
  props:["lnbo","gaonian","chunian","xiaonian","bannian"],
  data(){
    return{
      currentIndex:0,
      timer:null
    }
  },
  created(){
    this.go();
  },
  methods:{
    autoPlay(){
      this.currentIndex++;
      if(this.currentIndex>this.lnbo.length-1){
        this.currentIndex=0;
      }
    },
    go(){
      this.timer=setInterval(()=>{
        this.autoPlay();
      },4000)
    },
    stop(){
      clearInterval(this.timer);
      this.timer=null;
    },
    change(index){
      this.currentIndex=index;
    }
  },
}
</script>
<style>
.nianji-item{
  float: left;
  position: absolute;
  top: 390px;
}
.ds-nianji{
    width: 1200px;
    margin: 0 auto;
  }
.carousel-wrap{
  position: relative;
  width: 100%;
  overflow: hidden;
  background-color: #fff;
  margin-top:40px; 
}
.carousel-wrap img {
      width:100%;
      height: 510px;
    }
.carousel-items {
  position: relative;
  z-index: 2;
  bottom: 25px;
  width: 100%;
  display: flex;
  justify-content: center;
}
.items-cir{
    display: inline-block;
    height: 8px;
    width: 8px;
    margin: 0 3px;
    border-radius:100%; 
    background-color: #b2b2b2;
    cursor: pointer;
  }
.slider{
    width: 20px;
    margin: 0 3px;
    border-radius:20px; 
    background-color:#4354b1;
  }
</style>
