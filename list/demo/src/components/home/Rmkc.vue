<template>
  <div class="ds_rm clear">
    <div class="ds_rm-left ds-rm clear">
      <div class="ds-rm rm-kc">
        <span>热门课程</span>
        <span class="rm_jt"></span>
      </div>
      <div class="ds-rm rm-nianji">          
        <a href="javascript:;">高中一年级</a>          
        <a href="javascript:;">初中一年级</a>
        <a href="javascript:;">高中二年级</a>         
        <a href="javascript:;">初中二年级</a>
        <a href="javascript:;">高中三年级</a>
        <a href="javascript:;">初中三年级</a>
      </div>
      
      <a class="ds-rm rm-gd ds-opacity" href="javascript:;">
        <i class="iconfont icon-shu"></i>
        <span>更多课程</span>
      </a>
  </div>
  <div class="ds_rm-right clear">    
    <a class="ds-opacity" href="javascript:;">
        <font class="ds-primary">
          <i class="iconfont icon-gaokao"></i>
          <span>高考辅导</span>
        </font>
        <p>紧随高考变化,专注教学</p>
    </a>
    <a class="ds-opacity" href="javascript:;">
        <font class="ds-danger">
          <i class="iconfont icon-heiban"></i>
          <span>艺体生文化</span>
        </font>
        <p>高三艺考学业规划</p>
    </a>
    <a class="ds-opacity" href="javascript:;">
        <font class="ds-success">
          <i class="iconfont icon-shuben"></i>
          <span>中考辅导</span>
        </font>
        <p>中考双师课程,严选师资</p>
    </a>
    <a class="ds-opacity" href="javascript:;">
        <font class="ds-warning">
          <i class="iconfont icon-fudu"></i>
          <span>高考复读</span>
        </font>
        <P>复读这一路,戴氏来助攻</P>
    </a>
  </div>
</div>
</template>
<script>
export default {
  data(){
    return{}
  }
}
</script>
<style scoped>
.ds-primary{
  color: #5291ef !important;
}
.ds-danger{
  color: #fc0d1b !important;
}
.ds-success{
  color: #09bb07 !important;
}
.ds-warning{
  color: #ef652f !important;
}
.ds_rm-right>a{
width: 25%;
text-align: center;
}
.ds_rm-right p{
  font-size: 12px;
  color: #666;
  padding-top:10px; 
}
.rm-gd>i{
  display: block;
  font-size: 22px;
}
.rm-gd{
  color: #fc0d1b;
  width: 10%;
  font-size: 12px;
  padding:15px; 
}
.ds_rm-right{
  padding-top:10px; 
  width: 60%;
  float: right;
}
.rm-nianji>a{
  color: #666;
  font-size: 12px;
  width: 60px;
  white-space: wrap;
  float: left;
  padding: 10px 15px 10px 0px; 
}
.rm-nianji>a:hover{
  text-decoration: underline;
}
.rm-nianji{
  padding-left: 35px;
  width: 50%;
}
.rm-kc{
    width: 38px;
    padding: 15px;
    background: #f00;
    text-align: center;
    color: #fff;
    position: relative;
    border-radius: 5px;
}
.rm_jt {
    border: 10px solid #f00;
    border-bottom: 10px solid transparent;
    border-top: 10px solid transparent;
    border-right: 10px solid transparent;
    position: absolute;
    left: 65px;
    top: 24px;
}
.ds_rm-left{
  width: 40%;
}
.ds-rm{
  float: left;
}
.ds_rm{
  width: 1200px;
  margin: 30px auto 0px;
}
</style>
