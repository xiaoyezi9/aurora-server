/*
 * @Author: 爱吃香菜的猹
 * @Date: 2023-03-13 18:44:02
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2023-03-17 21:05:17
 * @FilePath: \server\routers\admin\index.js
 * @Description: 
 */
const express = require('express')
const router = express.Router()
const service = require('./service')//相关操作逻辑

//仪表盘数据
router.post('/admin/numbering', service.numbering)


router.post('/admin/login', service.login)
//获取管理员信息
router.post('/admin/getadmin', service.getadmin)
//修改管理员信息
router.post('/admin/changeadminuser', service.changeadminuser)
router.post('/admin/registered', service.registered)
router.post('/admin/getadminlist', service.getadminlist)
router.post('/admin/changeadminstate', service.changeadminstate)

//修改密码（管理员/用户）
router.post('/admin/changepassword', service.changepassword)
router.post('/admin/deleteuser', service.deleteuser)

//获取用户列表
router.post('/admin/getuserlist', service.getuserlist)
//改变用户认证状态
router.post('/admin/changeuserstate', service.changeuserstate)
//封禁账号
router.post('/admin/changeactivationdate', service.changeactivationdate)

//获取评论
router.post('/admin/getcomment', service.getcomment)
//获取回复
router.post('/admin/getreply', service.getreply)


//获取内容列表
router.post('/admin/contentexamine', service.contentexamine)
//审核
router.post('/admin/changecontentstate', service.changecontentstate)
//管理员删除用户发表的求助新闻活动评论
router.post('/admin/admindelete', service.admindelete)



//标签管理
//获取分类列表
router.post('/admin/lablelist', service.lablelist)
router.post('/admin/changelable', service.changelable)

//轮播管理
router.post('/admin/carousellist', service.carousellist)
router.post('/admin/changecarousel', service.changecarousel)
router.post('/admin/deletecarouse', service.deletecarouse)

//客服管理
///获取反馈列表
router.post('/admin/kefullist', service.kefullist)
router.post('/admin/changkefustate', service.changkefustate)
router.post('/admin/deletekefu', service.deletekefu)
//设置被举报人处理结果
router.post('/admin/changresult', service.changresult)



//公告列表
router.post('/admin/announcementlist', service.announcementlist)

//发布公告
router.post('/admin/setannouncement', service.setannouncement)










module.exports = router
