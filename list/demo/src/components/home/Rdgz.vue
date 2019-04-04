<template>
<div class="ds_gz clear">
    <div class="ds_gz-left clear">
        <h3 class="gzleft-heade gz-left">热点关注</h3>
        <div class="gz-left gzleft-left">
          <form class="gzleft-form">
            <i class=""></i>
            <input type="text" placeholder="请输入关键字">
            <button>搜索</button>
          </form>
          <div class="gzleft-miidle gz-left">
            <a href="javascript:;">全托班是什么意思</a>
            <a href="javascript:;">学费贵吗</a>
            <a href="javascript:;">入学要测试吗</a>
            <a href="javascript:;">戴氏管理如何</a>
            <a href="javascript:;">收费怎么收</a>
            <a href="javascript:;">校区地址在哪里</a>
            <a href="javascript:;">一个班多少人</a>
            <a href="javascript:;">可以提供住宿吗</a>
            <a href="javascript:;">伙食怎么解决</a>
            <a href="javascript:;">老师是哪里的</a>
            <img id="gz-img" src="http://127.0.0.1:3000/img/515.jpg" alt="">
          </div>
        </div>
        <div class="gzleft-right">
            <a href="javascript:;">
              <img src="http://127.0.0.1:3000/img/3(1).jpg" alt="">
            </a>
            <div>成都戴氏教育精品中心以“艰苦磨砺、勤思创新、执着追求”作为业文化 核心，将“以人为本、实施创新教育、创建终身教育大课堂、精打造一个国际  性教育品牌，建成一个完善的戴氏全球服务网”为目标，步走向教育服务多元   化，形成了“戴氏教育”这一著名教育品牌...
            </div>
        </div>
    </div>
    <div class="ds_gz-right">
        <h3>每日导读</h3>
        <ul>
            <li>
                <a href="javascript:;">
                    <img class="ds_gz-right-img" src="http://127.0.0.1:3000/img/514.jpg" alt="">
                </a>
            </li>
            <li><a href="javascript:;">▪ 高考一诊后怎么办？戴氏高考班助...</a></li>
            <li><a href="javascript:;">▪ 戴氏寒假班，同样的时间，更高的...</a></li>
            <li><a href="javascript:;">▪ 戴氏精品堂‘艺考密码’10分钟算...</a></li>
            <li><a href="javascript:;">▪ 单招考试考什么？如何选专业和学...</a></li>
            <li><a href="javascript:;">▪ 什么是单招，单招与高考统招有什...</a></li>
            <li><a href="javascript:;">▪ 高职单招培训文化+面试+志愿填报...</a></li>
            <li><a href="javascript:;">▪ 四川省2018年53所在川单独招生高...</a></li>
        </ul>
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
.gzleft-right{
    width: 70%;
}
.gzleft-miidle a:hover{
    background-color:#5291ef; 
    color: #fff;
}
.gzleft-miidle a{
    margin: 0px 8px 8px 0px;
    padding: 4px 10px;
    color: #5291ef;
    font-size: 13px;
    border: 1px solid #5291ef;
    border-radius: 3px;
    float: left;
}
.gzleft-miidle{
    width: 100%;
    margin-top: 15px;
}
.gzleft-form button{
    position: absolute;
    top: 8px;
    right: 6px;
    height: 32px;
    border: none;
    width: 60px;
    background: #5291ef;
    color: #fff;
}
.gzleft-form input{
    width: 100%;
    text-indent: 28px;
    height: 28px;
    border: 1px solid #bbb;
}
.gzleft-left img{
    width: 100%;
    margin-top: 10px;
}
.gzleft-left{
    border: 1px solid #ddd;
    padding: 8px;
    width: 245px;
    position: relative;
}
.ds_gz-left>h3{
    width: 100%;
    margin-bottom: 20px;
    color: #5291ef;
    font-size: 18px;
    text-align: left;
    font-weight: normal;
    padding-left: 10px;
    border-left: 3px solid #5291ef;
}
.ds_gz {
    width: 1200px;
    background: #f9f9f9;
    margin-top: 30px;
    padding: 20px;
    margin-left: auto;
    margin-right: auto;
}
.gz-left{
    float: left;
}
.ds_gz-left {
    width: 70%;
}
.ds_gz-right{
    float:right;
    width: 30%;
}
</style>
