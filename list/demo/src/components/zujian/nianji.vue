<template>
  <div class="ds-cx">
    <a href="javascript:;">
      <img class="cx-img" src="http://127.0.0.1:3000/img/516.jpg">
    </a>
    <b class="cx-kj">课程费用在线计算</b>
    <p class="cx-qr">请填写真实有效的信息,我们将回电确认。</p>
    <form action="">
      <select class="cx-nian">
        <optgroup> 
          <option value="请选择年级">请选择年级</option>
        </optgroup>
        <optgroup label="高中">
          <option value="高一">高一</option>
          <option value="高二">高二</option>
          <option value="高三">高三</option>
        </optgroup>
        <optgroup label="初中">
          <option value="初一">初一</option>
          <option value="初二">初二</option>
          <option value="初三">初三</option>
        </optgroup>
        <optgroup label="小学">
          <option value="一年级">一年级</option>
          <option value="二年级">二年级</option>
          <option value="三年级">三年级</option>
          <option value="四年级">四年级</option>
          <option value="五年级">五年级</option>
          <option value="六年级">六年级</option>
        </optgroup>
      </select>
      <select class="cx-nian">
        <optgroup>
          <option value="选择补习班型">选择补习班型</option>
          <option value="VIP1对1私人订制">VIP1对1私人订制</option>
          <option value="2~6人精品小班">2~6人精品小班</option>
          <option value="2~6人精品小班">10余人特色大班</option>
        </optgroup>
      </select>
      <input class="cx-dts" type="text" placeholder="请输入联系地址">
      <input class="cx-dts" type="text" placeholder="请输入联系电话">
      <input class="cx-sb" type="submit" value="立即获取课程报价">
    </form>
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
.cx-sb{
  width: 100%;
  border-radius:3px; 
  background: rgba(252,13,27,0.8);
  border: none;
  padding: 6.4px 20px;
  font-size: 16px;
  color: #fff;
  cursor: pointer;
}
.cx-dts{
  width: 100%;
  height: 30px;
  margin-bottom:15px; 
  text-indent: 10px;
  color: #888;
  border-radius: 3px;
  border:1px solid #888;
}
.ds-cx{
  width: 260px;
  padding: 15px;
  box-sizing: border-box;
  background: #fff;
  border-radius: 3px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
}
.cx-nian{
  width:100%; 
  height: 35px;
  border-radius: 3px;
  text-indent: 10px;
  margin-bottom:15px; 
  color: #888;
}
.ds_cx ul {
    display: flex;
    flex-flow: column nowrap;
    background: #fff;
    padding: 15px;
    position: absolute;
    top: 0px;
    left: 0px;
    z-index: 200;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
    border-radius: 3px;
    margin-top: 35px;
}

.cx-img {
    width: 100%;
    margin-bottom: 20px;
}

.cx-kj{
    display: block;
    width: 100%;
    font-size: 22px;
    color: #5291ef;
    position: relative;
    text-align: left;
    margin-bottom: 5px;
}
.cx-kj::after{
  content: "";
  display: block;
  width: 4px;
  height: 23px;
  background: #5291ef;
  position: absolute;
  top: 3px;
  left: -15px;
}
.cx-qr {
    color: #666;
    font-size: 10px;
    width: 100%;
    text-align: left;
    margin-bottom: 20px;
}
</style>
