<template>
  <div id="app">
    <router-view/>
    <Footer/>
  </div>
</template>

<script>
import Footer from './components/home/Footer.vue'

export default {
  name: 'app',
  components: {
    Footer
  },
  data(){
    return{
    
    }
  },
}
</script>

<style>
@import './assets/iconfont.css';
a,ul,img,input,select{
    list-style: none;
    text-decoration: none;
    display:inline-block;
    outline: none;
}
a,b,span,div,img,i,p,h1,h2,h3,h4,h5,h6,ul,li,table,td,tr,ol{
    margin: 0px;
    padding: 0px;
}
.ds-opacity:hover{
    filter: opacity(70%);
}
.clear::after{
  display: block;
  content: "";
  clear: both;
}
body,a,b,span,div,i,img{
  margin:0px;
  padding:0px;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin:0px auto;
}
</style>
