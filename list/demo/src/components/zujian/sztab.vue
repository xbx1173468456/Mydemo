<template>
    <a href="javascript:;">
        <img class="kc-img" :src="item.img_url"/>
        <p class="kc-msg">{{item.heade_msg}}</p>
    </a>
</template>
<script>
export default {
  props:["item"],
  name:"sztab",
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
<style scoped>
.nav-kc>a:hover{
    filter: opacity(70%);
}
.kc-msg{
    color:#fff;
    padding-top:8px; 
}
.kc-img{
    width: 180px;
    border-radius: 3px;
}

</style>
