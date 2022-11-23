/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 14:14:18
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-19 21:06:20
 * @FilePath: \Aurora-server\src\router\authorization.router.js
 * @Description: 登录授权
 */

const Router = require('koa-router')
const { login,success } = require('../controller/authorization.controller')
const { vertifyLogin,vertifyAuth } = require('../middleware/auth.middleware')

const authRouter = new Router()
authRouter.post('/login',vertifyLogin,login)
authRouter.get('/test',vertifyAuth,success)
module.exports=authRouter