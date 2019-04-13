
import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/home/Home.vue'
import tab1 from './components/exp/tab1.vue'
import nianji from './components/zujian/nianji.vue'
import navtab from './components/zujian/navtab.vue'
import sztab from './components/zujian/sztab.vue'
import Login from './components/home/Login.vue'
import Reg from './components/home/Reg.vue'
import Mydemo from './components/Demo/Mydemo.vue'
import Heade from './components/Demo/Heade.vue'
import Teaches from './components/teacher/Teaches.vue'
import Sousuo from './components/Demo/Sousuo.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:Mydemo,children:[
      {path:'/',component:Heade},
    ]},
    {path:'/Sousuo',component:Sousuo},
    {path:'/Teaches',component:Teaches},
    {path:'/Reg',component:Reg},
    {path:'/Login',component:Login},
    {path:'/sztab',component:sztab},
    {path:'/navtab',component:navtab},
    {path:'/nianji',component:nianji},
    {path:'/tab',component:tab1},
    {path:'/Home',component:Home}
  ]
})
