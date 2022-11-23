/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-20 16:23:17
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 08:08:24
 * @FilePath: \Aurora-server\src\router\comment.router.js
 * @Description: 
 */
const Router = require('koa-router')
const { vertifyAuth, vertifyPermission } = require('../middleware/auth.middleware')
const {create,reply,update,remove,list} =require('../controller/comment.controller')
const commentRouter=new Router({prefix:'/comment'})
//发表评论
commentRouter.post('/',vertifyAuth,create)
//回复评论
commentRouter.post('/:commentId/reply',vertifyAuth,reply)
//修改评论
commentRouter.patch('/:commentId',vertifyAuth,vertifyPermission,update)
//删除评论
commentRouter.delete('/:commentId',vertifyAuth,vertifyPermission,remove)
//获取评论列表

commentRouter.get('/',list)

module.exports=commentRouter