/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 14:23:28
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 16:45:22
 * @FilePath: \Aurora-server\src\middleware\auth.middleware.js
 * @Description: 
 */

const jwt = require('jsonwebtoken')
const { PUBLIC_KEY } = require('../app/config.js')
const errorType = require('../constants/error-types')
const userService = require('../service/user.service')
const authSerivce = require('../service/auth.service')
const md5password = require('../utils/md5Password')


const vertifyLogin = async (ctx, next) => {
    //获取用户名和密码
    const { name, password } = ctx.request.body
    //判断用户名或密码不能为空
    if (!name || !password) {
        const error = new Error(errorType.NAME_OR_PASSWORD_IS_REQUIRED)
        return ctx.app.emit('error', error, ctx)
    }
    //判断用户名是否存在
    const result = await userService.getUserByName(name)
    const user = result[0]
    // @ts-ignore
    if (!user) {
        const error = new Error(errorType.USER_DOES_NOT_EXIST)
        return ctx.app.emit('error', error, ctx)
    }

    //判断密码是否与数据库的密码相同（加密）
    if (md5password(password) !== user.password) {
        const error = new Error(errorType.PASSWORD_IS_INCOREENT)
        return ctx.app.emit('error', error, ctx)

    }
    ctx.user = user
    await next()

}

const vertifyAuth = async (ctx, next) => {
    console.log('验证授权middleware11');
    //获取token
    //  console.log(ctx.headers.authorization);
    const authorization = ctx.headers.authorization
    if (!authorization) {
        // console.log(11);
        const error = new Error(errorType.UNAUTHORIZATION)
        return ctx.app.emit('error', error, ctx)
    }

    const token = authorization.replace('Bearer ', '')
    // console.log(token);
    //验证token
    try {
        const result = jwt.verify(token, PUBLIC_KEY, {
            algorithms: ['RS256']
        })
        ctx.user = result
        // console.log(ctx.user);
        await next()
    } catch (err) {
        const error = new Error(errorType.UNAUTHORIZATION)
        console.log(err);
        ctx.app.emit('error', error, ctx)
    }
}

const vertifyPermission = async (ctx, next) => {
    console.log('验证权限的middleware');
    //获取key
    const [resourceKey] = Object.keys(ctx.params)
    const tableName = resourceKey.replace('Id', '')
    //获取id值
    const resourceId=ctx.params[resourceKey]
    const { id } = ctx.user
    // console.log(resourceKey,resourceId,id);
    //查询是否具有权限
    try {
        const isPermission = await authSerivce.checkResource(tableName,resourceId, id)
        if (!isPermission) throw new Error()
        await next()
    } catch (err) {
        const error = new Error(errorType.UNPERMISSION)
        return ctx.app.emit('error', error, ctx)
    }

}

module.exports = { vertifyLogin, vertifyAuth, vertifyPermission }