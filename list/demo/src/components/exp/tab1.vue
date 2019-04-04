<template>
  <div id="app">
    <div @mouseleave="amg">
    <ul>
      <li v-for="(item,index) in tabs" :key="index" :class="{active:index==num}" @mouseenter="tab(index)" class="tab">
        {{item}} {{index}}
      </li>
    </ul>
    <div class="tabCon">
      <div v-for="(itemCon,i) of tabContents" :key="i" v-show="num==i">
        {{itemCon}} {{i}}
      </div>
    </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      tabs:["标题一","标题二","标题三"],
      tabContents:["内容一","内容二","内容三"],
      num:'',
    }
  },
  created(){
    this.amg();
  },
  methods:{
    tab(index){
      this.num=index;
      // console.log(this.num);
    },
    amg(){
      this.num=-1;
    }
  }
}
</script>
<style>
  .tab{
    list-style: none;
    display: inline-block;
    border: 1px solid dodgerblue;
    height: 30px ;
    line-height: 30px ;
    width: 120px;
    text-align: center;
  }
</style>

