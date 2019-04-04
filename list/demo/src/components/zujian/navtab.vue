<template>
    <a class="ds-opacity" href="javascript:;">
        <img class="kc-img" :src="item.img_url"/>
        <p class="kc-msg">{{item.heade_msg}}</p>
    </a>
</template>
<script>
export default {
  props:["item"],
  name:"navtab",
  data(){
    return{
      list:[]
    }
  },
  created(){
    this.navclass();
  },
  methods:{
    navclass(){
      var url="http://127.0.0.1:3000/navclass";
      this.axios.get(url).then(result=>{
        this.list=result.data.data;
      })
    },
  }
}
</script>
<style scoped>
.kc-msg{
    color:#fff;
    padding-top:8px; 
}
.kc-img{
    width: 180px;
    border-radius: 3px;
}
.nav-kc{
    width: 1200px;
    display: flex;
    margin: 0 auto;
    justify-content: space-between;
    padding: 20px 0px;
}
</style>
