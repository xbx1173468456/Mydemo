import Vue from 'vue'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import qs from 'qs'
import store from './store'

axios.defaults.withCredentials=true
Vue.prototype.axios=axios;
Vue.prototype.qs=qs;
Vue.config.productionTip = false
Vue.config.productionTip = false

new Vue({
  render: h => h(App),
  store,
  router
}).$mount('#app')
