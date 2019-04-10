<template>
  <div id="mydemo">
    <Index/>
    <router-view/>
    <Footer/>
  </div>
</template>
  
<script>
import Footer from '../home/Footer.vue'
import Index from './Index.vue'


export default {
  components: {
    "Footer":Footer,
    Index
  },
  data(){
    return{
    }
  }
}
</script>
<style scoped> 
  .ds-middle{
    width:1240px;
    margin: 30px 0px;
  }
</style>
