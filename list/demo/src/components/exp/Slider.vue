<template>
  <div id="topBanner" class="slide">
    <div class="banner">
      <a class="banner-item" v-for="(item,i) of bannerList" :key="i" v-show="i===mark" href="javascript:;">
        <img :src="item"/>
      </a>
    </div>
    <div class="bar">
      <p :class="{active:i===mark}" v-for="(item,i) of bannerList" :key="i" class="bar-cir"></p>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      mark:0,
      bannerList:[
        'http://127.0.0.1:3000/car/1.jpg',
        'http://127.0.0.1:3000/car/2.jpg',
        'http://127.0.0.1:3000/car/3.jpg',
        'http://127.0.0.1:3000/car/4.jpg'
      ]
    }
  },
  methods:{
    autoPlay(){
      this.mark++;
      if(this.mark===4){
        this.mark=0;
      }
    },
    play(){
      setInterval(this.autoPlay(),2000);
    },
    change(i){
      this.mark=i;
    }
  },
  created(){
    this.play();
  }
}
</script>
<style>
  .active{
    background: #bfd6b6 !important;
  }
  .bar{
    width: 100%;
    display: flex;
    justify-content: center;
    position: relative;
    top: -30px;
    z-index: 2px;
  }
  .bar-cir{
    margin: 0 3px;
    width: 10px;
    height: 10px;
    border-radius: 50%;
    border: 1px solid #000;
  }
  #topBanner{
    width: 600px;
    height: 500px;
    margin: 0 auto;
    overflow: hidden;
    /* position: relative; */
  }
  .banner{
    width: 3500px;
  }
  .banner::after{
    content: "";
    display: block;
    clear: both;
  }
  .banner-item{
    float: left;
  }
</style>
