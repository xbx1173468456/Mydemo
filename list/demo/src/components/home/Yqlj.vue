<template>
  <div class="ds_yq clear">
    <span>友情链接:</span>
    <a class="yq-item" v-for="(item,index) of yqlj" :key="index" href="javaScript:;">{{item}}</a>
  </div>
</template>
<script>
export default {
  data(){
    return{
      yqlj:["百度贴吧","网易云音乐","QQ音乐","阿里云","腾讯云","天猫网购","京东网购","东方财富中心","免费小游戏","凤凰军事","新浪军事","知乎官网","中关村在线","太平洋手机","小米官网","华为信息官网","天空软件站","智联招聘","前程无忧","应届生求职","阿里邮箱","酷狗音乐","酷我音乐","理财大数据"]
    }
  }
}
</script>
<style scoped>
.yq-item:hover{
    color:#5291ef;
    text-decoration-line: underline;
}
.ds_yq {
    width: 1200px;
    margin: 10px auto;
    line-height: 150%;
}

.ds_yq span , .yq-item {
    float: left;
    font-size: 13px;
}

.yq-item {
    margin: 0px 8px;
    color: #888;
}
</style>
