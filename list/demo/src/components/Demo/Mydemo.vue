<template>
  <div id="mydemo">
  <Header/>
  <Dslogo/>
  <Headnav/>
  <Rmkc/>
  <!-- <Lunbo/> -->
  <Dsxunlian :xl="xl"/>
  <Rdgz :gzrs="gzrs" :gzdd="gzdd" :gzmd="gzmd"/>
  <img class="ds-middle" src="http://127.0.0.1:3000/img/2.jpg"/>
  <Jstd :chin="chin" :mat="mat" :eng="eng"/>
  <Xzhy :hy="hy" :kt="kt" :hz="hz"/>
  <Yqlj/>
  </div>
</template>
  
<script>
import Header from '../home/Header.vue'
import Dslogo from '../home/Dslogo.vue'
import Headnav from '../home/Headnav.vue'
import Rmkc from '../home/Rmkc.vue'
// import Lunbo from '../home/Lunbo.vue'
import Dsxunlian from '../home/Dsxunlian.vue'
import Rdgz from '../home/Rdgz.vue'
import Jstd from '../home/Jstd.vue'
import Xzhy from '../home/Xzhy.vue'
import Yqlj from '../home/Yqlj.vue'


export default {
  components: {
    Rmkc,
    Header,
    Dslogo,
    Headnav,
    // Lunbo,
    Dsxunlian,
    Rdgz,
    Jstd,
    Xzhy,
    Yqlj
  },
  data(){
    return{
      xl:[],
      teaches:[],
      chin:[],
      mat:[],
      eng:[],
      xz:[],
      hy:[],
      hz:[],
      kt:[],
      gz:[],
      gzrs:[],
      gzmd:[],
      gzdd:[]
    }
  },
  created(){
    this.xunlian();
    this.teach();
    this.xzhy();
    this.Rdgz();
  },
  methods:{
    Rdgz(){
      var url="http://127.0.0.1:3000/Rdgz";
      this.axios.get(url).then(result=>{
        this.gz=result.data.data;
        this.gzrs=this.gz.slice(0,10);
        this.gzmd=this.gz.slice(10,11);
        this.gzdd=this.gz.slice(11,18);
        // console.log(this.gzmd);
      })
    },
    xunlian(){
      this.axios.get("http://localhost:3000/dslian").then(result=>{
        this.xl=result.data.data;
      });
    },
    teach(){
      var url="http://127.0.0.1:3000/jstd";
      this.axios.get(url).then(result=>{
        this.teaches=result.data.data;
        this.chin=this.teaches.slice(0,4);
        this.mat=this.teaches.slice(4,8)
        this.eng=this.teaches.slice(8,12);
      });
    },
    xzhy(){
      let url="http://127.0.0.1:3000/xzhy";
      this.axios.get(url).then(result=>{
        this.xz=result.data.data;
        this.hy=this.xz.slice(0,4);
        this.hz=this.xz.slice(4,8);
        this.kt=this.xz.slice(8,12);
      });
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
