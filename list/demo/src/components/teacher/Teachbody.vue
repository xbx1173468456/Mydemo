<template>
  <div class="teaches-bodys">
    <div class="teaches-clas">
      <p class="clas-kemu" v-for="(item,index) of classes" :key="index">{{item}}</p>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      classes:["英语","体育","音乐","绘画","文综"],
    }
  }
}
</script>
<style scoped>
.clas-kemu{
  margin: 0px 15px;
  padding: 5px 25px;
  color: #fff;
  font-size: 16px;
  border-radius:20px;
  background-color:rgba(255,255, 255,0.2) ; 
  cursor: pointer;
}
.teaches-clas{
  width: 100%;
  display: flex;
  justify-content: center;
}
.teaches-bodys{
  width: 1100px;
  margin: 0px auto;
}
</style>
