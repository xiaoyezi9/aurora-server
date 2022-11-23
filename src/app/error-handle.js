/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 21:17:46
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-20 10:38:01
 * @FilePath: \Aurora-server\src\app\error-handle.js
 * @Description: 
 */
const errorTypes = require('../constants/error-types')
const errorHandler = (error, ctx) => {
    let status, message
    switch (error.message) {
        case errorTypes.NAME_OR_PASSWORD_IS_REQUIRED:
            status = 400 //bad request
            message = "用户名或者密码不能为空"
            break;
        case errorTypes.USER_ALREADY_EXISTS:
            status = 409  //conflict
            message = "用户名已经存在"
            break;
        case errorTypes.USER_DOES_NOT_EXIST:
            status = 400//bad request
            message = '用户名不存在'
            break;
        case errorTypes.PASSWORD_IS_INCOREENT:
            status = 400
            message = '密码错误'
            break;
        case errorTypes.UNAUTHORIZATION:
            status = 401
            message = '无效的token'
            break;
        case errorTypes.UNPERMISSION:
            status = 401
            message = '您没有相关权限'
            break;
        default:
            status = 404
            message = 'NOT FOUND'
            break;
    }
    ctx.status = status
    ctx.body = message
}
module.exports = errorHandler