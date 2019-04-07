<template>
  <div class="ds_footer">
            <div class="ds_footer-top clear">
                <span class="jx-addr jx-zyjx">优氏教育精品中心·成都直营教学点</span>
                <div class="footer-top_left clear">
                    <div class="footer-dz jx-zyjx">
                        <a v-for="(item,index) of jxd" :key="index" href="javascript:;">{{item}}</a>
                    </div>
                    <a class="jx-out jx-zyjx footer-hov">
                        <span href="javascript:;">更多优氏教育直营教学点</span>
                        <i class="iconfont icon-jiantouright jx-foot"></i>
                    </a>
                </div>
                <div class="footer-top_right clear">
                    <div class="footer-tel clear">
                        <i class="iconfont icon-zixundianhua tel-set tel-kf"></i>
                        <span class="tel-zx tel-kf">
                            <p class="tel-num">028-12345678</p>
                            <p class="tel-time">咨询电话（07:00-24:00)</p>
                        </span>
                    </div>
                    <i class="iconfont icon-service kf-set tel-kf"></i>
                    <a class="footer-kf footer-hov tel-kf">
                        <span href="javascript:;">在线客服</span>
                        <i class="iconfont icon-jiantour"></i>
                    </a>
                </div>
            </div>
            <div class="ds_footer-down">
                <div class="footer-down1 clear">
                    <a class="footer-hov" href="javascript:;">首页</a>
                    <i>-</i>
                    <a class="footer-hov" href="javascript:;">师资力量</a>
                    <i>-</i>
                    <a class="footer-hov" href="javascript:;">教学环境</a>
                    <i>-</i>
                    <a class="footer-hov" href="javascript:;">关于我们</a>
                    <i>-</i>
                    <a class="footer-hov" href="javascript:;">在线咨询</a>
                </div>
                <p class="footer-down2">优氏教育集团旗下高端培训品牌-优氏精品中心 报名咨询专线：028-0000000000</p>
                <div class="footer-down3 clear">
                    <span>Copyright © 2018</span>
                    <a href="javascript:;">www.dai-shi.net</a>
                    <span>All rights reserved. 优氏精品中心 版权所有 蜀ICP备00016036号-1</span>
                </div>
                <div class="footer-down4 clear">
                    <img src="http://127.0.0.1:3000/img/icon-2.png" alt="">
                    <a href="javascript:;">川公网安备 000000000000000号</a>
                </div>
                <ul class="footer-down5 clear">
                    <li>
                        <img src="http://127.0.0.1:3000/img/icon-1.png" alt="">
                        <a class="footer-hov" href="javascript:;">中国互联网举报中心</a>
                    </li>
                    <li>
                        <img src="http://127.0.0.1:3000/img/icon-2.png" alt="">
                        <a class="footer-hov" href="javascript:;">互联网网站备案信息</a>
                    </li>
                    <li>
                        <img src="http://127.0.0.1:3000/img/icon-3.png" alt="">
                        <a class="footer-hov" href="javascript:;">成都互联网举报中心</a>
                    </li>
                    <li>
                        <img src="http://127.0.0.1:3000/img/icon-5.png" alt="">
                        <a class="footer-hov" href="javascript:;">成都网络报警平台</a>
                    </li>
                </ul>
            </div>
        </div>
</template>
<script>
export default {
  data(){
    return{
    jxd:["锦华万达","静居寺","交大路","交大","金沙","一品天下","阳光新业","大源","双楠","锦华万达","静居寺","交大路","交大","金沙","一品天下","阳光新业","大源","双楠","锦华万达","静居寺","交大路","交大","金沙","一品天下","阳光新业","大源","双楠",]
    }
  }
}
</script>
<style scoped>
.footer-kf{
    color: #555;
    margin:57px 40px 0px 0px;
}
.kf-set{
    color: #fff;
    font-size: 25px;
    padding: 15px;
    background: #ddd;
    border-radius: 4px;
    margin:40px 40px 0px 0px;
}
.tel-time{
    font-size: 13px;
    color: #888;
}
.tel-num{
    font-size: 24px;
    color: #333;
    padding-top:5px;
}
.tel-set{
    color: #fff;
    background: #ddd;
    padding: 15px;
    font-size: 24px;
    border-radius: 4px;
    margin-right: 40px;
}
.tel-kf{
    float: left;
}
.footer-kf,.footer-tel{
    float: left;
    text-align: left;
}
.footer-top_right{
    width: 28%;
    float: right;
}
.jx-out{
    color:#888;
    font-size:12px;
}
.jx-foot{
    position: relative;
    top:1px;
    left: -3px;
}
.jx-zyjx{
    float:left;
}
.ds_footer-top {
    width: 1200px;
    margin: 50px auto;
    padding-bottom: 30px;
    border-bottom: 1px solid #888;
}
.footer-dz a:hover{
    background-color:#5291ef; 
    color:#fff;
    border-color:#5291ef;
}
.footer-top_left {
    width: 60%;
    float: left;
}

.jx-addr{
    width: 100%;
    font-size: 18px;
    font-weight: bolder;
    margin-bottom: 10px;
    text-align: left;
}
.footer-dz {
    width: 100%;
    display: flex;
    float: left;
    flex-flow: row wrap;
    margin-top: 20px;
}

.footer-dz a {
    width: 70px;
    text-align: center;
    margin: 0px 15px 15px 0px;
    color: #888;
    border: 1px solid #888;
    font-size: 12px;
    padding: 5px;
}
.ds_footer-down {
    width: 100%;
    margin-top: 35px;
}

.footer-down1 {
    width: 268px;
    margin: 0px auto 15px auto;
}
.footer-down1>a,
.footer-down1>i {
    float: left;
    font-size: 12px;
    color: #888;
    text-align: center;
}

.footer-down1>a {
    margin: 0px 3px;
}

.footer-down2 {
    width: 1200px;
    margin: 0px auto 15px auto;
    color: #888;
    font-size: 12px;
    text-align: center;
}

.footer-down3 {
    width: 581px;
    margin: 0px auto 15px auto;
}
.footer-down3>span,
.footer-down3>a {
    float: left;
    color: #888;
    font-size: 12px;
    margin: 0px 4px;
}

.footer-down4 {
    margin: 0px auto 0px auto;
    width: 205px;
}
.footer-down4>img,
.footer-down4>a {
    float: left;
    font-size: 12px;
    color: #888;
    height: 23px;
    vertical-align: bottom;
}

.footer-down5 {
    width: 870px;
    margin: 20px auto;
}
.footer-down5 li {
    float: left;
    width: 145px;
    display: flex;
    border: 1px solid #999;
    border-radius: 2px;
    align-items: center;
    padding: 10px;
    margin: 0px 25px;
    justify-content: center;
}
.footer-down5>li:hover {
    border-color:#5291ef;
}
.footer-down5 a {
    font-size: 12px;
    color: #888;
    align-content: center;
}

.footer-down5 img {
    width: 16px;
    align-content: center;
}
.footer-hov:hover{
    color:#5291ef;
    cursor: pointer;
}
</style>
