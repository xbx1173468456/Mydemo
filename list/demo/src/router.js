// import HelloWorld from '@/components/HelloWorld'
import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/home/Home.vue'
import tab1 from './components/exp/tab1.vue'
import nianji from './components/zujian/nianji.vue'
import navtab from './components/zujian/navtab.vue'
import sztab from './components/zujian/sztab.vue'
import Login from './components/home/Login.vue'
import Reg from './components/home/Reg.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/Reg',component:Reg},
    {path:'/Login',component:Login},
    {path:'/sztab',component:sztab},
    {path:'/navtab',component:navtab},
    {path:'/nianji',component:nianji},
    {path:'/tab',component:tab1},
    {path:'/Home',component:Home}
  ]
})
