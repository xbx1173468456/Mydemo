<template>
  <div id="app">
    <Header/>
    <Dslogo/>
    <Headnav/>
    <Rmkc/>
    <Lunbo/>
    <Dsxunlian/>
    <Rdgz/>
    <router-view/>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>
</template>

<script>
import Header from './components/home/Header.vue'
import Dslogo from './components/home/Dslogo.vue'
import Headnav from './components/home/Headnav.vue'
import Rmkc from './components/home/Rmkc.vue'
import Lunbo from './components/home/Lunbo.vue'
import Dsxunlian from './components/home/Dsxunlian.vue'
import Rdgz from './components/home/Rdgz.vue'

export default {
  name: 'app',
  components: {
    Rmkc,
    Header,
    Dslogo,
    Headnav,
    Lunbo,
    Dsxunlian,
    Rdgz
  }
}
</script>

<style>
@import './assets/icon.css';
/* @import './assets/min_search.css'; */
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
