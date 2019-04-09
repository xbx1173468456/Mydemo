<template>
  <div class="carousel-wrap" id="carousel">
    <div>
        <a v-show="index==currentIndex" v-for="(list,index) of slideList" :key="index" @mouseenter="stop" @mouseleave="go" href="javascript:;">
          <img :src="list"/>
        </a>
    </div>
    <div class="carousel-items"> 
      <span class="items-cir" v-for="(item,index) of slideList" :key="index" :class="{slider:index==currentIndex}" @mouseover="change(index)"></span>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      slideList:[
        'http://127.0.0.1:3000/car/1.jpg',
        'http://127.0.0.1:3000/car/2.jpg',
        'http://127.0.0.1:3000/car/3.jpg',
        'http://127.0.0.1:3000/car/4.jpg'
      ],
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
      if(this.currentIndex>this.slideList.length-1){
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
  .carousel-wrap {
  position: relative;
  height: 453px;
  width: 100%;
  overflow: hidden;
  background-color: #fff;
}

.slide-ul {
  width: 100%;
  height: 100%;
}
.carousel-wrap li {
    position: absolute;
    width: 100%;
    height: 100%;
  }
.carousel-wrap img {
      width: 100%;
      height: 100%;
    }
.carousel-items {
  position: absolute;
  z-index: 10;
  top: 380px;
  width: 100%;
  margin: 0 auto;
  text-align: center;
  font-size: 0;
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
    background-color:red;
    /* transition: linear 1.5s; */
  }
</style>
