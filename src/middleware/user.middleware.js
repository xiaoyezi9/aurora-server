/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 21:08:50
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-25 20:51:27
 * @FilePath: \Aurora-server\src\middleware\user.middleware.js
 * @Description: 用户请求中间件 
 */
const md5password = require('../utils/md5Password.js')
const errorType = require('../constants/error-types')
const service = require('../service/user.service')
//用户注册接口的中间件，用于判断用户名是否重复，为空
const verifyUser = async (ctx, next) => {
   //获取用户名和密码
   const { name, password } = ctx.request.body
   console.log(name,password);
   //判断用户名或密码不能为空
   if (!name || !password) {
      const error = new Error(errorType.NAME_OR_PASSWORD_IS_REQUIRED)
      return ctx.app.emit('error', error, ctx)
   }

   //判断这次注册的用户名是没有被注册过的
   const result = await service.getUserByName(name)
   // @ts-ignore
   if (result.length) {
      const error = new Error(errorType.USER_ALREADY_EXISTS)
      return ctx.app.emit('error', error, ctx)
   }
   await next()
}
//对密码进行加密处理
const handlerPassword = async (ctx, next) => {
   let { password } = ctx.request.body
   ctx.request.body.password = md5password(password)
   await next()
}
module.exports = { verifyUser, handlerPassword }
