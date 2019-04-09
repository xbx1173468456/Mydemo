<template>
  <div class="carousel-container">
    <header>轮播图</header>
    <section @mouseenter="_stop" @mouseleave="_begin">
      <ul class="carousel-text" @click="changePic">
        <li
          :class="{active: currentIndex === index}"
          v-for="(item, index) in carouselList" 
          :data-index="index" 
          :key="index">
          {{item.text}}
        </li>
      </ul>
      <transition-group tag="ul" class='carousel-img-container' name="fade">
        <li v-for="(item, index) in carouselList" 
            :key="index" 
            v-show="index===currentIndex">
          <img :src="item.src" :alt="item.text" class="carousel-img">
        </li>
      </transition-group>
    </section>
  </div>
</template>
 
<script>
export default {
  name: 'c-carousel',
  data () {
    return {
      /**
       * 图片src
       */
      // src: require('@/assets/images/D2.1_1@2x.png'),
      /**
       * 轮播图数据
       */
      carouselList: [
        {
          text: '1. 第一张图片', 
          src: require('http://127.0.0.1:3000/car/1.jpg')
        },
        {
          text: '2. 第二张图片',
          src: require('http://127.0.0.1:3000/car/2.jpg'),
        },
         {
          text: '3. 第三张图片',
          src: require('http://127.0.0.1:3000/car/3.jpg'),
        }
      ],
      /**
       * 当前正在显示的图片
       */
      currentIndex: 0,
      /**
       * 切换图片定时器
       */
      carouselTimer: null
    }
  },
  mounted () {
    this._begin()
  },
  methods: {
    /**
     * 点击切换图片
     */
    changePic (e) {
      this.currentIndex = parseInt(e.target.dataset.index)
    },
    /**
     * 定时切换图片
     */
    autoPlay () {
      this.currentIndex++
      if (this.currentIndex >= this.carouselList.length) {
        this.currentIndex = 0
      }
    },
    /**
     * 开始定时切换图片
     */
    _begin () {
      this.carouselTimer = setInterval (this.autoPlay, 4000)
    },
    /**
     * 停止定时切换图片
     */
    _stop () {
      clearInterval(this.carouselTimer)
    }
  
}
</script>
  <style>
  .carousel-img-container {
    overflow: hidden;
    width: 100%;
    position: relative;}
    .li {
      width: 100%;
      height: 100%;
      position: absolute;
      left: 0;
      top: 0;
      display: flex;
      justify-content: center;
      align-items: center;}
      .img {
        width: 100%;
      }
     }
   }
// 动画 
.fade-enter-active, .fade-leave-active {
  transition: all 2s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
  transition: translateY(20px);
}
  </style>
  