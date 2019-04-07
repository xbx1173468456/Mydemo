<template>
  <!-- 优氏训练中心 -->
  <div class="ds_xl">
    <span class="xl-heade">优氏训练中心</span>
    <ul class="xl-tu clear">
      <li class="xl-item" v-for="(item,i) of xl" :key="i">
        <a class="ds-opacity" href="javascript:;">
          <img :src="item.img_url" />
          <span>{{item.xl_msg}}</span>
          <p>{{item.xl_jixun}}</p>
        </a>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  props:["xl"],
  data(){
    return{
    }
  },
  created(){
  },
  methods:{
 
  }
}
</script>
<style>
.xl-item+li{
  margin-left: 38px;
}
.xl-item{
  float: left;
  box-sizing: border-box;
}
.xl-tu p{
  color: #888;
  font-size: 13px;
  text-align: left;
  margin-bottom: 15px;
}
.xl-tu span{
  text-align: left;
  display: block;
  font-size: 13px;
  color: #ef652f;
  margin-bottom: 5px;
}
.ds_xl img {
    width: 209px;
    height: 135px;
    margin-bottom: 15px;
}
.xl-heade{
  width: 100%;
  margin:15px 0px 20px;
  color: #5291ef;
  font-size: 18px;
  text-align:left; 
  padding-left: 15px;
  border-left:3px solid #5291ef 
}

.ds_xl {
    width: 1200px;
    margin: 0 auto;
    display: flex;
    flex-wrap: wrap;
    margin-top: 30px;
    padding: 20px;
    background: #f5f7f9;
}
</style>
