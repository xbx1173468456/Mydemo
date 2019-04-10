<template>
  <div class="teaches-bodys">
    <div class="teaches-clas">
      <p :class="{kemu:timer===index}" @click="jump(index)" class="clas-kemu" v-for="(item,index) of classes" :key="index">{{item}}</p>
    </div>
    <Tbodydesc v-show="flag[0]===timer" :teache="teaches"/>
		<Tbodydesc v-show="flag[1]===timer" :teache="teacher"/>
		<Tbodydesc v-show="flag[2]===timer" :teache="teache"/>
		<Tbodydesc v-show="flag[3]===timer" :teache="teacherr"/>
		<Tbodydesc v-show="flag[4]===timer" :teache="teachess"/>
  </div>
</template>
<script>
import Tbodydesc from './Tbodydesc.vue'
export default {
  components:{
		Tbodydesc
	},
  data(){
    return{
      classes:["英语","体育","音乐","绘画","文综"],
      teaches:[],
			teacher:[],
			teachess:[],
			teacherr:[],
      teache:[],
      timer:0,
      flag:[0,1,2,3,4]
    }
  },
  created(){
    this.Teache();
	},
	methods:{
    jump(index){
      this.timer=index;
      // console.log(item);
    },
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
.kemu{
  background-color:#f37203 !important;
}
.clas-kemu{
  margin: 0px 15px;
  padding: 5px 25px;
  color: #fff;
  font-size: 16px;
  border-radius:20px;
  background-color:rgba(255,255, 255,0.2) ; 
  cursor: pointer;
}
.teaches-clas{
  width: 100%;
  display: flex;
  justify-content: center;
}
.teaches-bodys{
  width: 1100px;
  margin: 0px auto;
}
</style>
