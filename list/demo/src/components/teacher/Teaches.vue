<template>
<div class="ds-teaches">
  <header class="ds-header_min">
		<div class="ds-wrap_xl ds-cf">
			<a href="http://www.dai-shi.net/" class="ds-logo ds-fl">
				<img src="http://127.0.0.1:3000/yuwen/7.png" height="50">
			</a>
			<font class="ds-teaches ds-fl">
				师资力量			
      </font>
			<b class="ds-fr fr-dianhua">
				<i class="iconfont icon-dianhua"></i>
				<span>028-00000000</span>
			</b>
			<router-link to="/" class="ds-fr ds-header_min-link">首页</router-link>
		</div>
	</header>
	<div class="teaches-body">
		<Teachbody/>
	</div>
	<Footer/>
</div>
</template>
<script>
import Teachbody from './Teachbody.vue'
import Footer from '../home/Footer.vue'


export default {
	components:{
		Teachbody,
		Footer
	},
  data(){
    return{
			
    }
	},
	created(){
		this.Teache();
	},
	methods:{
		Teache(){
			var url="http://127.0.0.1:3000/teaches";
			this.axios.get(url).then(result=>{
			this.teaches=result.data.data.slice(0,8);
			this.teacher=result.data.data.slice(8,16);
			this.teachess=result.data.data.slice(6,14);
			this.teacherr=result.data.data.slice(3,11);
			this.teache=result.data.data.slice(7,15);
			
			});
		}
	}
}
</script>
<style scoped>
.teaches-body{
	box-sizing: border-box;
  padding: 90px 0 60px 0;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
	background-image:url('http://127.0.0.1:3000/yuwen/001.jpg') ;
}
.fr-dianhua i {
	font-size: 22px;
	color: #fff;
}
.fr-dianhua span{
	font-size: 23px;
	color: #fff;
	font-weight: 100;
}
.ds-header_min-link:hover{
	background: #fff;
	color: #091129;
}
.ds-header_min-link{
	margin: 13px 30px 0px 0px;
	line-height: 0px;
	font-size: 18px;
	padding: 23px 35px;
	color: #fff;
	border-radius: 25px;
	background:rgba(82,145,239,0.2);
}
.ds-teaches{
	color: rgba(255,255, 255,0.4) ;
	font-size: 22px;
}
.ds-logo img{
	padding-right:30px;
	border-right:1px solid rgba(255,255, 255,0.2) ;
	margin: 10px 30px 0 0;
}
.ds-header_min{
	height: 70px;
	line-height: 70px;
	background: #091129;
	overflow: hidden;
}
.ds-wrap_xl{
	width: 1200px;
	margin: 0 auto;
}
.ds-fl{
	float: left;
}
.ds-fr{
	float: right;
}
</style>
