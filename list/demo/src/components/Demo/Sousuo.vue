<template>
  <div class="ds-Heade">
    <Header/>
    <Dslogo/>
    <Headnav/>
    <Rmkc/>
    <Sousuo :gzrs="gzrs" :gzrt="gzrt" :chin="chin"/>
    <Footer/>
  </div>
</template>
<script>
import Sousuo from '../sousuo/Sousuo.vue'
import Footer from '../home/Footer.vue'
import Header from '../home/Header.vue'
import Dslogo from '../home/Dslogo.vue'
import Headnav from '../home/Headnav.vue'
import Rmkc from '../home/Rmkc.vue'
 
export default {

  components:{
    Sousuo,
    Dslogo,
    Headnav,
    Header,
    Footer,
    Rmkc
  },
  data(){
    return{
      gz:[],
      gzrs:[],
      chin:[],
      gzrt:[]
    }
  },
  created(){
    this.Rdgz();
    this.teach();
  },
  methods:{
    
    // 热点关注
    Rdgz(){
      var url="http://127.0.0.1:3000/Rdgz";
      this.axios.get(url).then(result=>{
        this.gz=result.data.data;
        this.gzrs=this.gz.slice(0,10);
        this.gzrt=this.gz.slice(11,16);
        console.log(this.gzrt);
      })
    },
     teach(){
      var url="http://127.0.0.1:3000/jstd";
      this.axios.get(url).then(result=>{
        this.teaches=result.data.data;
        this.chin=this.teaches.slice(0,4);
        console.log(this.chin);
      });
    },
  }
}
</script>
<style scoped>

</style>
