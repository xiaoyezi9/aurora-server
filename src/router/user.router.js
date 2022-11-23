/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 20:11:55
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:19:15
 * @FilePath: \Aurora-server\src\router\user.router.js
 * @Description:  负责注册接口
 */

const Router = require('koa-router')
const {create,avatarInfo}=require('../controller/user.controller')
const {verifyUser, handlerPassword} = require('../middleware/user.middleware')
const userRouter = new Router({ prefix: '/users' })
// 注册
userRouter.post('/', verifyUser,handlerPassword,create)
//获取用户头像
userRouter.get('/:userId/avatar', avatarInfo)

module.exports=userRouter