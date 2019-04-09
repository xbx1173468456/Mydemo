<template>
  <div class="ds_lb">
    <ul class="lb-tu">
      <li>
        <a href="javascript:;"><img src="http://127.0.0.1:3000/img/8.jpg" alt=""></a>
      </li>
    </ul>
    <div class="ds-wrap_xl">
      <nianji/>
    </div>
  </div>
</template>
<script>
import nianji from '../zujian/nianji.vue'
export default {
  components:{
    nianji
  },
  data(){
    return{}
  }
}
</script>
<style>
.lb-tu{
  position:relative;
  width: 100%;
  height: 100%;
}
.ds-wrap_xl{
  width: 1200px;
  box-sizing: border-box;
  margin: 0 auto;
  position: relative;
  top: -500px;
}
.ds_lb{
  height: 520px;
  margin-top:30px; 
}
</style>
