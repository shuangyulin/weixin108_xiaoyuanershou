<template>
  <div class="addEdit-block">
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
	  :style="{backgroundColor:addEditForm.addEditBoxColor}"
    >
      <el-row>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'" label="出售单号" prop="chushoudanhao">
            <el-input v-model="ruleForm.chushoudanhao" 
                placeholder="出售单号" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" v-if="ruleForm.chushoudanhao" label="出售单号" prop="chushoudanhao">
              <el-input v-model="ruleForm.chushoudanhao" 
                placeholder="出售单号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'" label="商品编号" prop="shangpinbianhao">
          <el-select  @change="shangpinbianhaoChange" v-model="ruleForm.shangpinbianhao" placeholder="请选择商品编号">
            <el-option
                v-for="(item,index) in shangpinbianhaoOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input"v-if="ruleForm.shangpinbianhao" label="商品编号" prop="shangpinbianhao">
              <el-input v-model="ruleForm.shangpinbianhao" 
                placeholder="商品编号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="商品名称" prop="shangpinmingcheng">
          <el-input v-model="ruleForm.shangpinmingcheng" 
              placeholder="商品名称" clearable  :readonly="ro.shangpinmingcheng"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="商品名称" prop="shangpinmingcheng">
              <el-input v-model="ruleForm.shangpinmingcheng" 
                placeholder="商品名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'"  label="商品类别" prop="shangpinleibie">
          <el-select v-model="ruleForm.shangpinleibie" placeholder="请选择商品类别">
            <el-option
                v-for="(item,index) in shangpinleibieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="商品类别" prop="shangpinleibie">
	      <el-input v-model="ruleForm.shangpinleibie"
                placeholder="商品类别" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="24">  
        <el-form-item class="upload" v-if="type!='info' && !ro.tupian" label="图片" prop="tupian">
          <file-upload
          tip="点击上传图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.tupian?ruleForm.tupian:''"
          @change="tupianUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.tupian" label="图片" prop="tupian">
            <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.tupian.split(',')" :src="item" width="100" height="100">
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="商品规格" prop="shangpinguige">
          <el-input v-model="ruleForm.shangpinguige" 
              placeholder="商品规格" clearable  :readonly="ro.shangpinguige"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="商品规格" prop="shangpinguige">
              <el-input v-model="ruleForm.shangpinguige" 
                placeholder="商品规格" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="商品品牌" prop="shangpinpinpai">
          <el-input v-model="ruleForm.shangpinpinpai" 
              placeholder="商品品牌" clearable  :readonly="ro.shangpinpinpai"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="商品品牌" prop="shangpinpinpai">
              <el-input v-model="ruleForm.shangpinpinpai" 
                placeholder="商品品牌" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="新旧程度" prop="xinjiuchengdu">
          <el-input v-model="ruleForm.xinjiuchengdu" 
              placeholder="新旧程度" clearable  :readonly="ro.xinjiuchengdu"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="新旧程度" prop="xinjiuchengdu">
              <el-input v-model="ruleForm.xinjiuchengdu" 
                placeholder="新旧程度" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'"  label="出售单价" prop="chushoudanjia">
          <el-select v-model="ruleForm.chushoudanjia" placeholder="请选择出售单价">
            <el-option
                v-for="(item,index) in chushoudanjiaOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="出售单价" prop="chushoudanjia">
	      <el-input v-model="ruleForm.chushoudanjia"
                placeholder="出售单价" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="出售数量" prop="chushoushuliang">
          <el-input v-model="ruleForm.chushoushuliang" 
              placeholder="出售数量" clearable  :readonly="ro.chushoushuliang"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="出售数量" prop="chushoushuliang">
              <el-input v-model="ruleForm.chushoushuliang" 
                placeholder="出售数量" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="出售总价" prop="chushouzongjia">
            <el-input v-model="chushouzongjia"
                placeholder="出售总价" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" v-if="ruleForm.chushouzongjia" label="出售总价" prop="chushouzongjia">
              <el-input v-model="ruleForm.chushouzongjia" 
                placeholder="出售总价" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="date" v-if="type!='info'" label="出售时间" prop="chushoushijian">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.chushoushijian" 
                type="date"
                placeholder="出售时间">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item class="input" v-if="ruleForm.chushoushijian" label="出售时间" prop="chushoushijian">
              <el-input v-model="ruleForm.chushoushijian" 
                placeholder="出售时间" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="select" v-if="type!='info'" label="用户名" prop="yonghuming">
          <el-select  @change="yonghumingChange" v-model="ruleForm.yonghuming" placeholder="请选择用户名">
            <el-option
                v-for="(item,index) in yonghumingOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item class="input"v-if="ruleForm.yonghuming" label="用户名" prop="yonghuming">
              <el-input v-model="ruleForm.yonghuming" 
                placeholder="用户名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming" 
              placeholder="姓名" clearable  :readonly="ro.xingming"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="姓名" prop="xingming">
              <el-input v-model="ruleForm.xingming" 
                placeholder="姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      <el-col :span="12">
        <el-form-item class="input" v-if="type!='info'"  label="手机" prop="shouji">
          <el-input v-model="ruleForm.shouji" 
              placeholder="手机" clearable  :readonly="ro.shouji"></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item class="input" label="手机" prop="shouji">
              <el-input v-model="ruleForm.shouji" 
                placeholder="手机" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
      </el-row>
          <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="备注" prop="beizhu">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.beizhu" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.beizhu" label="备注" prop="beizhu">
                    <span v-html="ruleForm.beizhu"></span>
                </el-form-item>
              </div>
            </el-col>
          </el-row>
      <el-form-item class="btn">
        <el-button v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validateMobile = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的手机号码"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isPhone(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
	  addEditForm: {"btnSaveFontColor":"#fff","selectFontSize":"14px","btnCancelBorderColor":"#DCDFE6","inputBorderRadius":"4px","inputFontSize":"14px","textareaBgColor":"#fff","btnSaveFontSize":"14px","textareaBorderRadius":"4px","uploadBgColor":"#fff","textareaBorderStyle":"solid","btnCancelWidth":"88px","textareaHeight":"120px","dateBgColor":"#fff","btnSaveBorderRadius":"4px","uploadLableFontSize":"14px","textareaBorderWidth":"1px","inputLableColor":"#606266","addEditBoxColor":"rgba(251, 249, 249, 1)","dateIconFontSize":"14px","btnSaveBgColor":"#409EFF","uploadIconFontColor":"#8c939d","textareaBorderColor":"#DCDFE6","btnCancelBgColor":"#ecf5ff","selectLableColor":"#606266","btnSaveBorderStyle":"solid","dateBorderWidth":"1px","dateLableFontSize":"14px","dateBorderRadius":"4px","btnCancelBorderStyle":"solid","selectLableFontSize":"14px","selectBorderStyle":"solid","selectIconFontColor":"#C0C4CC","btnCancelHeight":"44px","inputHeight":"40px","btnCancelFontColor":"#606266","dateBorderColor":"#DCDFE6","dateIconFontColor":"#C0C4CC","uploadBorderStyle":"solid","dateBorderStyle":"solid","dateLableColor":"#606266","dateFontSize":"14px","inputBorderWidth":"1px","uploadIconFontSize":"28px","selectHeight":"40px","inputFontColor":"#606266","uploadHeight":"148px","textareaLableColor":"#606266","textareaLableFontSize":"14px","btnCancelFontSize":"14px","inputBorderStyle":"solid","btnCancelBorderRadius":"4px","inputBgColor":"#fff","inputLableFontSize":"14px","uploadLableColor":"#606266","uploadBorderRadius":"4px","btnSaveHeight":"44px","selectBgColor":"#fff","btnSaveWidth":"88px","selectIconFontSize":"14px","dateHeight":"40px","selectBorderColor":"#DCDFE6","inputBorderColor":"#DCDFE6","uploadBorderColor":"#DCDFE6","textareaFontColor":"#606266","selectBorderWidth":"1px","dateFontColor":"#606266","btnCancelBorderWidth":"1px","uploadBorderWidth":"1px","textareaFontSize":"14px","selectBorderRadius":"4px","selectFontColor":"#606266","btnSaveBorderColor":"#409EFF","btnSaveBorderWidth":"1px"},
      id: '',
      type: '',
      ro:{
	chushoudanhao : false,
	shangpinbianhao : false,
	shangpinmingcheng : false,
	shangpinleibie : false,
	tupian : false,
	shangpinguige : false,
	shangpinpinpai : false,
	xinjiuchengdu : false,
	chushoudanjia : false,
	chushoushuliang : false,
	chushouzongjia : false,
	chushoushijian : false,
	yonghuming : false,
	xingming : false,
	shouji : false,
	beizhu : false,
	userid : false,
      },
      ruleForm: {
        chushoudanhao: this.getUUID(),
        shangpinbianhao: '',
        shangpinmingcheng: '',
        shangpinleibie: '',
        tupian: '',
        shangpinguige: '',
        shangpinpinpai: '',
        xinjiuchengdu: '',
        chushoudanjia: '',
        chushoushuliang: '',
        chushouzongjia: '',
        chushoushijian: '',
        yonghuming: '',
        xingming: '',
        shouji: '',
        beizhu: '',
        userid: '',
      },
          shangpinbianhaoOptions: [],
          shangpinleibieOptions: [],
          chushoudanjiaOptions: [],
          yonghumingOptions: [],
      rules: {
          chushoudanhao: [
                { required: true, message: '出售单号不能为空', trigger: 'blur' },
          ],
          shangpinbianhao: [
                { required: true, message: '商品编号不能为空', trigger: 'blur' },
          ],
          shangpinmingcheng: [
          ],
          shangpinleibie: [
          ],
          tupian: [
          ],
          shangpinguige: [
          ],
          shangpinpinpai: [
          ],
          xinjiuchengdu: [
          ],
          chushoudanjia: [
                { validator: validateIntNumber, trigger: 'blur' },
          ],
          chushoushuliang: [
                { validator: validateIntNumber, trigger: 'blur' },
          ],
          chushouzongjia: [
                { validator: validateIntNumber, trigger: 'blur' },
          ],
          chushoushijian: [
          ],
          yonghuming: [
          ],
          xingming: [
          ],
          shouji: [
          ],
          beizhu: [
          ],
          userid: [
          ],
      }
    };
  },
  props: ["parent"],
  computed: {
    chushouzongjia:{
      get: function () {
        return 1*this.ruleForm.chushoudanjia*this.ruleForm.chushoushuliang
      }
    },
  },
  created() {
	this.addEditStyleChange()
	this.addEditUploadStyleChange()
  },
  methods: {
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
          if(o=='chushoudanhao'){
            this.ruleForm.chushoudanhao = obj[o];
	    this.ro.chushoudanhao = true;
            continue;
          }
          if(o=='shangpinbianhao'){
            this.ruleForm.shangpinbianhao = obj[o];
	    this.ro.shangpinbianhao = true;
            continue;
          }
          if(o=='shangpinmingcheng'){
            this.ruleForm.shangpinmingcheng = obj[o];
	    this.ro.shangpinmingcheng = true;
            continue;
          }
          if(o=='shangpinleibie'){
            this.ruleForm.shangpinleibie = obj[o];
	    this.ro.shangpinleibie = true;
            continue;
          }
          if(o=='tupian'){
            this.ruleForm.tupian = obj[o];
	    this.ro.tupian = true;
            continue;
          }
          if(o=='shangpinguige'){
            this.ruleForm.shangpinguige = obj[o];
	    this.ro.shangpinguige = true;
            continue;
          }
          if(o=='shangpinpinpai'){
            this.ruleForm.shangpinpinpai = obj[o];
	    this.ro.shangpinpinpai = true;
            continue;
          }
          if(o=='xinjiuchengdu'){
            this.ruleForm.xinjiuchengdu = obj[o];
	    this.ro.xinjiuchengdu = true;
            continue;
          }
          if(o=='chushoudanjia'){
            this.ruleForm.chushoudanjia = obj[o];
	    this.ro.chushoudanjia = true;
            continue;
          }
          if(o=='chushoushuliang'){
            this.ruleForm.chushoushuliang = obj[o];
	    this.ro.chushoushuliang = true;
            continue;
          }
          if(o=='chushouzongjia'){
            this.ruleForm.chushouzongjia = obj[o];
	    this.ro.chushouzongjia = true;
            continue;
          }
          if(o=='chushoushijian'){
            this.ruleForm.chushoushijian = obj[o];
	    this.ro.chushoushijian = true;
            continue;
          }
          if(o=='yonghuming'){
            this.ruleForm.yonghuming = obj[o];
	    this.ro.yonghuming = true;
            continue;
          }
          if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
	    this.ro.xingming = true;
            continue;
          }
          if(o=='shouji'){
            this.ruleForm.shouji = obj[o];
	    this.ro.shouji = true;
            continue;
          }
          if(o=='beizhu'){
            this.ruleForm.beizhu = obj[o];
	    this.ro.beizhu = true;
            continue;
          }
          if(o=='userid'){
            this.ruleForm.userid = obj[o];
	    this.ro.userid = true;
            continue;
          }
        }
      }
      // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
            this.$http({
              url: `option/xinxifabu/chushoubianhao`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.shangpinbianhaoOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
            this.$http({
              url: `option/shangpinfenlei/shangpinleibie`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.shangpinleibieOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
            this.$http({
              url: `option/xinxifabu/chushoujiage`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.chushoudanjiaOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
            this.$http({
              url: `option/xinxifabu/yonghuming`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.yonghumingOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
    },
    // 下二随
    shangpinbianhaoChange () {
      this.$http({
        url: `follow/xinxifabu/chushoubianhao?columnValue=`+ this.ruleForm.shangpinbianhao,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
              if(data.data.shangpinmingcheng){
                this.ruleForm.shangpinmingcheng = data.data.shangpinmingcheng
              }
              if(data.data.shangpinguige){
                this.ruleForm.shangpinguige = data.data.shangpinguige
              }
              if(data.data.shangpinpinpai){
                this.ruleForm.shangpinpinpai = data.data.shangpinpinpai
              }
              if(data.data.xinjiuchengdu){
                this.ruleForm.xinjiuchengdu = data.data.xinjiuchengdu
              }
              if(data.data.chushoushuliang){
                this.ruleForm.chushoushuliang = data.data.chushoushuliang
              }
              if(data.data.xingming){
                this.ruleForm.xingming = data.data.xingming
              }
              if(data.data.shouji){
                this.ruleForm.shouji = data.data.shouji
              }
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    // 下二随
    yonghumingChange () {
      this.$http({
        url: `follow/xinxifabu/yonghuming?columnValue=`+ this.ruleForm.yonghuming,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
              if(data.data.shangpinmingcheng){
                this.ruleForm.shangpinmingcheng = data.data.shangpinmingcheng
              }
              if(data.data.shangpinguige){
                this.ruleForm.shangpinguige = data.data.shangpinguige
              }
              if(data.data.shangpinpinpai){
                this.ruleForm.shangpinpinpai = data.data.shangpinpinpai
              }
              if(data.data.xinjiuchengdu){
                this.ruleForm.xinjiuchengdu = data.data.xinjiuchengdu
              }
              if(data.data.chushoushuliang){
                this.ruleForm.chushoushuliang = data.data.chushoushuliang
              }
              if(data.data.xingming){
                this.ruleForm.xingming = data.data.xingming
              }
              if(data.data.shouji){
                this.ruleForm.shouji = data.data.shouji
              }
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    // 多级联动参数
    info(id) {
      this.$http({
        url: `chushoujilu/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
	//解决前台上传图片后台不显示的问题
	let reg=new RegExp('../../../upload','g')//g代表全部
	this.ruleForm.beizhu = this.ruleForm.beizhu.replace(reg,'../../../ssmp2t94/upload');
        } else {
          this.$message.error(data.msg);
        }
      });
    },
    // 提交
    onSubmit() {
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
        this.ruleForm.chushouzongjia = this.chushouzongjia
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}
      // ${column.compare}

















      this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `chushoujilu/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.chushoujiluCrossAddOrUpdateFlag = false;
                  this.parent.search();
                  this.parent.contentStyleChange();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.chushoujiluCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    tupianUploadChange(fileUrls) {
	this.ruleForm.tupian = fileUrls;
			this.addEditUploadStyleChange()
    },
	addEditStyleChange() {
	  this.$nextTick(()=>{
	    // input
	    document.querySelectorAll('.addEdit-block .input .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputFontColor
	      el.style.fontSize = this.addEditForm.inputFontSize
	      el.style.borderWidth = this.addEditForm.inputBorderWidth
	      el.style.borderStyle = this.addEditForm.inputBorderStyle
	      el.style.borderColor = this.addEditForm.inputBorderColor
	      el.style.borderRadius = this.addEditForm.inputBorderRadius
	      el.style.backgroundColor = this.addEditForm.inputBgColor
	    })
	    document.querySelectorAll('.addEdit-block .input .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.inputHeight
	      el.style.color = this.addEditForm.inputLableColor
	      el.style.fontSize = this.addEditForm.inputLableFontSize
	    })
	    // select
	    document.querySelectorAll('.addEdit-block .select .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectFontColor
	      el.style.fontSize = this.addEditForm.selectFontSize
	      el.style.borderWidth = this.addEditForm.selectBorderWidth
	      el.style.borderStyle = this.addEditForm.selectBorderStyle
	      el.style.borderColor = this.addEditForm.selectBorderColor
	      el.style.borderRadius = this.addEditForm.selectBorderRadius
	      el.style.backgroundColor = this.addEditForm.selectBgColor
	    })
	    document.querySelectorAll('.addEdit-block .select .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.selectHeight
	      el.style.color = this.addEditForm.selectLableColor
	      el.style.fontSize = this.addEditForm.selectLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .select .el-select__caret').forEach(el=>{
	      el.style.color = this.addEditForm.selectIconFontColor
	      el.style.fontSize = this.addEditForm.selectIconFontSize
	    })
	    // date
	    document.querySelectorAll('.addEdit-block .date .el-input__inner').forEach(el=>{
	      el.style.height = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateFontColor
	      el.style.fontSize = this.addEditForm.dateFontSize
	      el.style.borderWidth = this.addEditForm.dateBorderWidth
	      el.style.borderStyle = this.addEditForm.dateBorderStyle
	      el.style.borderColor = this.addEditForm.dateBorderColor
	      el.style.borderRadius = this.addEditForm.dateBorderRadius
	      el.style.backgroundColor = this.addEditForm.dateBgColor
	    })
	    document.querySelectorAll('.addEdit-block .date .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.dateHeight
	      el.style.color = this.addEditForm.dateLableColor
	      el.style.fontSize = this.addEditForm.dateLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .date .el-input__icon').forEach(el=>{
	      el.style.color = this.addEditForm.dateIconFontColor
	      el.style.fontSize = this.addEditForm.dateIconFontSize
	      el.style.lineHeight = this.addEditForm.dateHeight
	    })
	    // upload
	    let iconLineHeight = parseInt(this.addEditForm.uploadHeight) - parseInt(this.addEditForm.uploadBorderWidth) * 2 + 'px'
	    document.querySelectorAll('.addEdit-block .upload .el-upload--picture-card').forEach(el=>{
	      el.style.width = this.addEditForm.uploadHeight
	      el.style.height = this.addEditForm.uploadHeight
	      el.style.borderWidth = this.addEditForm.uploadBorderWidth
	      el.style.borderStyle = this.addEditForm.uploadBorderStyle
	      el.style.borderColor = this.addEditForm.uploadBorderColor
	      el.style.borderRadius = this.addEditForm.uploadBorderRadius
	      el.style.backgroundColor = this.addEditForm.uploadBgColor
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-form-item__label').forEach(el=>{
	      el.style.lineHeight = this.addEditForm.uploadHeight
	      el.style.color = this.addEditForm.uploadLableColor
	      el.style.fontSize = this.addEditForm.uploadLableFontSize
	    })
	    document.querySelectorAll('.addEdit-block .upload .el-icon-plus').forEach(el=>{
	      el.style.color = this.addEditForm.uploadIconFontColor
	      el.style.fontSize = this.addEditForm.uploadIconFontSize
	      el.style.lineHeight = iconLineHeight
	      el.style.display = 'block'
	    })
	    // 多文本输入框
	    document.querySelectorAll('.addEdit-block .textarea .el-textarea__inner').forEach(el=>{
	      el.style.height = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaFontColor
	      el.style.fontSize = this.addEditForm.textareaFontSize
	      el.style.borderWidth = this.addEditForm.textareaBorderWidth
	      el.style.borderStyle = this.addEditForm.textareaBorderStyle
	      el.style.borderColor = this.addEditForm.textareaBorderColor
	      el.style.borderRadius = this.addEditForm.textareaBorderRadius
	      el.style.backgroundColor = this.addEditForm.textareaBgColor
	    })
	    document.querySelectorAll('.addEdit-block .textarea .el-form-item__label').forEach(el=>{
	      // el.style.lineHeight = this.addEditForm.textareaHeight
	      el.style.color = this.addEditForm.textareaLableColor
	      el.style.fontSize = this.addEditForm.textareaLableFontSize
	    })
	    // 保存
	    document.querySelectorAll('.addEdit-block .btn .btn-success').forEach(el=>{
	      el.style.width = this.addEditForm.btnSaveWidth
	      el.style.height = this.addEditForm.btnSaveHeight
	      el.style.color = this.addEditForm.btnSaveFontColor
	      el.style.fontSize = this.addEditForm.btnSaveFontSize
	      el.style.borderWidth = this.addEditForm.btnSaveBorderWidth
	      el.style.borderStyle = this.addEditForm.btnSaveBorderStyle
	      el.style.borderColor = this.addEditForm.btnSaveBorderColor
	      el.style.borderRadius = this.addEditForm.btnSaveBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnSaveBgColor
	    })
	    // 返回
	    document.querySelectorAll('.addEdit-block .btn .btn-close').forEach(el=>{
	      el.style.width = this.addEditForm.btnCancelWidth
	      el.style.height = this.addEditForm.btnCancelHeight
	      el.style.color = this.addEditForm.btnCancelFontColor
	      el.style.fontSize = this.addEditForm.btnCancelFontSize
	      el.style.borderWidth = this.addEditForm.btnCancelBorderWidth
	      el.style.borderStyle = this.addEditForm.btnCancelBorderStyle
	      el.style.borderColor = this.addEditForm.btnCancelBorderColor
	      el.style.borderRadius = this.addEditForm.btnCancelBorderRadius
	      el.style.backgroundColor = this.addEditForm.btnCancelBgColor
	    })
	  })
	},
	addEditUploadStyleChange() {
		this.$nextTick(()=>{
		  document.querySelectorAll('.addEdit-block .upload .el-upload-list--picture-card .el-upload-list__item').forEach(el=>{
			el.style.width = this.addEditForm.uploadHeight
			el.style.height = this.addEditForm.uploadHeight
			el.style.borderWidth = this.addEditForm.uploadBorderWidth
			el.style.borderStyle = this.addEditForm.uploadBorderStyle
			el.style.borderColor = this.addEditForm.uploadBorderColor
			el.style.borderRadius = this.addEditForm.uploadBorderRadius
			el.style.backgroundColor = this.addEditForm.uploadBgColor
		  })
	  })
	},
  }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
  
  & /deep/ .ql-container {
	  height: 310px;
  }
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
.addEdit-block {
	margin: -10px;
}
.detail-form-content {
	padding: 12px;
}
.btn .el-button {
  padding: 0;
}
</style>
