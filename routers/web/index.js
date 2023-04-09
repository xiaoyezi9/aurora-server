
const express = require('express')
const router = express.Router()
const service = require('./service')//相关操作逻辑
//搜索
router.post('/web/search', service.search)

//获取求助列表
router.post('/web/webgetwebhelplist', service.webgetwebhelplist)
router.post('/web/gethelpcontent', service.gethelpcontent)

//获取通知
router.post('/web/getnotice', service.getnotice)
router.post('/web/changenotice', service.changenotice)

//留言
router.post('/web/setcomment', service.setcomment)
//获取评论列表
router.post('/web/getcomment', service.getcomment)
router.post('/web/setreply', service.setreply)
//获取回复
router.post('/web/getreply', service.getreply)
//获取活动
router.post('/web/webgetwebactivitylist', service.webgetwebactivitylist)
router.post('/web/getactivitycontent', service.getactivitycontent)
//参与活动接口
router.post('/web/setjoin', service.setjoin)
//获取文章列表
router.post('/web/getarticlelist', service.getarticlelist)
router.post('/web/getarticlecontent', service.getarticlecontent)

router.post('/web/webgetweboldstufflist', service.webgetweboldstufflist)



//弃用
//岗位列表
router.post('/web/webgetjoblist', service.webgetjoblist)
router.post('/web/getjobcontent', service.getjobcontent)
//公司列表
router.post('/web/webgetcompanylist', service.webgetcompanylist)
router.post('/web/getcompanycontent', service.getcompanycontent)
router.post('/web/getoldstuffcontent', service.getoldstuffcontent)

























module.exports = router
