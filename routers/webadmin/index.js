
const express = require('express')
const router = express.Router()
const service = require('./service')//相关操作逻辑
const jwt = require('../../plugins/jwt')//引入jwt
router.use(jwt)//express-jwt中间件
router.use(function (err, req, res, next) {
  if (err) {
    console.log(err)
  }
  if (err.name === 'UnauthorizedError') {
    //  这个需要根据自己的业务逻辑来处理（ 具体的err值 请看下面）
    res.send({    
        state:{
          "type": 'ERROE',
          "msg": "操作失败"
      },
        code:401});
  }
});
//上传中间件
const multer = require('multer')//上传npm i multer
const upload = multer({ dest: __dirname + '/../../uplodes' })//上传本地
//图片图片上传
router.post('/upload', upload.single('file'), service.upload)
/**
 * 用户信息
 * 
 * 
 * 
 */
//普通用户注册
router.post('/webadmin/registered', service.registered)
//普通用户登录
router.post('/webadmin/login', service.login)
//用户信息
router.post('/webadmin/getuser', service.getuser)
router.post('/webadmin/updatauser', service.updatauser)
//获取图表数据
router.post('/webadmin/getusernumbering', service.getusernumbering)

/**
 * 
 * 
 * 求助
 */
// //创建求助
router.post('/webadmin/createhelp', service.createhelp)
//用户获取求助列表
router.post('/webadmin/getwebhelplist', service.getwebhelplist)
//求助详情
router.post('/webadmin/gethelpdetails', service.gethelpdetails)
//修改求助
router.post('/webadmin/updatehelp', service.updatehelp)
//删除求助
router.post('/webadmin/deletehelp', service.deletehelp)

//创建活动
router.post('/webadmin/createactivity', service.createactivity)
//用户获取求助列表
router.post('/webadmin/getwebactivitylist', service.getwebactivitylist)
//活动详情
router.post('/webadmin/getactivitydetails', service.getactivitydetails)
//修改活动
router.post('/webadmin/updateactivity', service.updateactivity)
//删除活动
router.post('/webadmin/deleteactivity', service.deleteactivity)
//获取用户参与活动列表
router.post('/webadmin/joinslist', service.joinslist)
//获取活动参与人员列表
router.post('/webadmin/getwebjoinslist', service.getwebjoinslist)

//取消参加活动
router.post('/webadmin/deletejoin', service.deletejoin)

//文章详情
router.post('/webadmin/getarticledetails', service.getarticledetails)
//修改文章
router.post('/webadmin/updatearticle', service.updatearticle)
//添加文章
router.post('/webadmin/createarticle', service.createarticle)
//删除文章
router.post('/webadmin/deletearticle', service.deletearticle)
//文章列表
router.post('/webadmin/articlelist', service.articlelist)
//反馈
router.post('/webadmin/createfankui', service.createfankui)
router.post('/webadmin/createjubao', service.createjubao)
router.post('/webadmin/jubaocontent', service.jubaocontent)
router.post('/webadmin/createshensu', service.createshensu)

router.post('/webadmin/getoldstuffdetails', service.getoldstuffdetails)



































module.exports = router
