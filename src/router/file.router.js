/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 15:32:04
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:43:37
 * @FilePath: \Aurora-server\src\router\file.router.js
 * @Description: 
 */
const Router = require('koa-router')
const { saveAvatarInfo,savePicInfo } = require('../controller/file.controller')
const { vertifyAuth } = require('../middleware/auth.middleware')
const { avatarHandler, picHandler,picResize } = require('../middleware/file.middleware')
const fileRouter = new Router({ prefix: '/upload' })
//头像上传
fileRouter.post('/avatar', vertifyAuth,avatarHandler,saveAvatarInfo)
//文件上传
fileRouter.post('/picture', vertifyAuth, picHandler,picResize,savePicInfo)


module.exports = fileRouter