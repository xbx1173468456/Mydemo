<template>
  <div class="ds">
    <!-- 头部 -->
    <div class="ds_header">
        <div class="ds_header-top clear">
            <div @mouseenter="kin" @mouseleave="kout" class="header_jp liright">
                <span class="header_jp1">精品课程</span>
                <i class="jt-xz h-jian iconfont icon-jiantoudown"></i>
                <div v-show="jpkc" class="header_jpk clear">
                  <a v-for="(cla,i) in this.class" :key="i" href="javascript:;">{{cla.heade_msg}}</a>
                </div>
            </div>
                <a class="header_xz liright" href="javascript:;">学习中心</a>
                <a class="header_zx liright" href="javascript:;">资讯</a>
            <div @mouseenter="wxkin" @mouseleave="wxkout" class="liright head-wx">
                <span class="header_wx">关注微信</span>                
                <img v-show="wx" class="header_wxt" src="http://127.0.0.1:3000/img/3.jpg"/>
                <i class="jt-wx h-jian iconfont icon-jiantoudown"></i>
            </div>
                <span class="header_rx">24小时咨询热线:</span>
                <p class="header_rx1">028-66000189</p>
                <span class="header_ts">统一投诉电话(仅处理投诉问题):</span>
                <p class="header_td">400-028-1009</p>
                    <i class="iconfont icon-daojishi heade-djs"></i>
                <span class="header_gk">距高考还有</span>
                <p class="header_gk1">{{day}}</p>
                <span class="header_gk2">天</span> 
        </div>
    </div>
  </div>  
</template>
<script>

export default {
  name:"Header",
  components:{
     
  },
  data(){
    return{
        day:"",
        jpkc:false,
        wx:false,
        class:[]
    }
  },
  created(){
    this.restTime();
    this.Class();
  },
  methods:{
       Class(){
    var url="http://127.0.0.1:3000/appClass";
    this.axios.get(url).then(result=>{
      this.class=result.data.data;
    });
       },
      kin(){
          this.jpkc=true;
      },
      kout(){
          this.jpkc=false;
      },
      wxkin(){
          this.wx=true;
      },
      wxkout(){
          this.wx=false;
      },
      restTime() {
            var setTime = new Date("2019/6/7 00:00:00");
            var nowTime = new Date();
            var restSec = setTime.getTime() - nowTime.getTime();
            this.day = parseInt(restSec / (60 * 60 * 24 * 1000));
            setTimeout(this.restTime,86400000);
        }
  }
}
</script>
<style scoped>
.head-wx:hover>i{
transform: rotate(-180deg);
}
.header_jp:hover>i{
transform: rotate(-180deg);
}
.h-jian{
    font-size: 13px;
    position: absolute;
    top:13px;
    color: #888;
    display: inline-block;
    transition: all .3s ease;
}
.jt-wx{
    right: 2px; 
}
.jt-xz{
    right: 9px;
}
.heade-djs{
    float: left;
    line-height: 40px;
    margin: 0px 3px 0px 35px;
    color: #f00;
}
.head-wx{
    cursor: pointer;  
}
.liright{
    float: left;
    border-right:1px solid #eee;
    padding:0px 15px; 
    position: relative;
    cursor: pointer;
}
.ds_header {
    position: relative;
    width: 100%;
    border-bottom: 1px solid #eeeeee;
    height: 40px;
    margin: 0px auto;
    background: #eeeeee;
}

.ds_header-top {
    margin: 0 auto;
    width: 1200px;
}
.ds_header-top li {
    float: left;
}
.header_jpk {
    width: 285px;
    height: 110px;
    border: 1px solid #eeeeee;
    position: absolute;
    padding-top: 15px;
    padding-left: 8px;
    z-index:3;
    background:#fff;
}
.header_jpk a {
    width: 85px;
    height: 32px;
    float: left;
    color: #222;
    font-size: 14px;
    font-weight: 300;
}
.header_jpk a:hover{
    text-decoration: underline;
}
.header_jp1 {
    color: #999;
    height: 40px;
    width: 70px;
    background: #f5f5f5;
    line-height: 40px;
    font-size: 14px;
    padding-right: 7px;
    cursor: pointer;
}

.header_xz {
    color: #999;
    margin-left: 3px;
    line-height: 40px;
    font-size: 14px;
    text-align: center;
}

.header_zx {
    color: #999;
    line-height: 40px;
    font-size: 14px;
    text-align: center;
}

.header_wx {
    color: #999;
    line-height: 40px;
    font-size: 14px;
    text-align: center;
    position: relative;
}

.header_wxt {
    width: 100px;
    position: absolute;
    top: 40px;
    left: -3px;
    z-index: 1;
}
.ds_header-top li:last-child {
    display: block;
    height: 100%;
    width: 165px;
    padding-left: 26px;
}

.header_rx,
.header_rx1,
.header_ts,
.header_td,
.header_gk,
.header_gk1,
.header_gk2 {
    float: left;
    overflow: hidden;
}
.header_rx {
    color: #999;
    line-height: 40px;
    font-size: 14px;
    padding-left: 50px;
    text-align: center;
}
.header_rx1 {
    color: #f00;
    line-height: 40px;
    font-size: 19px;
    text-align: center;
}
.header_ts {
    color: #999;
    line-height: 40px;
    font-size: 14px;
    padding-left:39px;
    text-align: center;
}

.header_td {
    color: #fff;
    line-height: 40px;
    font-size: 20px;
    font-weight:600; 
    text-align: center;
    display: block;
    background: #4354b1;
}
.header_gk {
    color: #000;
    line-height: 40px;
    text-align: center;
    font-weight: 700;
    /* margin-left: 50px; */
}

.header_gk2 {
    color: #000;
    height: 100%;
    width: 17px;
    line-height: 40px;
    text-align: center;
    font-weight: 700;
}
.header_gk1 {
    color: #fff;
    font-weight: 900;
    height: 32px;
    width: 40px;
    font-size: 20px;
    line-height: 32px;
    text-align: center;
    padding: 0px 3px 0px 3px;
    margin: 4px 3px;
    border-radius: 3px;
    background-color: #f00;
}
</style>


