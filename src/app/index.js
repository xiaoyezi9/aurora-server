// @ts-nocheck
/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 19:50:34
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-19 16:07:12
 * @FilePath: \Aurora-server\src\app\index.js
 * @Description: 
 */
const Koa = require('koa')
// //导入用户相关接口
// const userRouter = require('../router/user.router')
// //导入登录相关接口
// const authRouter = require('../router/authorization.router')

//导入解析参数库
const bodyParser = require('koa-bodyparser')
//导入错误处理函数
const errorHandler = require('./error-handle')

const useRoutes=require('../router/index')
const app = new Koa()
app.useRoutes=useRoutes
app.use(bodyParser())
app.on('error', errorHandler)
app.useRoutes()

module.exports = app