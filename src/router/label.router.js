/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 09:47:56
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 14:14:53
 * @FilePath: \Aurora-server\src\router\label.router.js
 * @Description: 
 */

const Router = require('koa-router')
const { vertifyAuth } = require('../middleware/auth.middleware')
const { create,list } = require('../controller/label.controller')
const labelRouter = new Router({ prefix: '/label' })
labelRouter.post('/', vertifyAuth, create)
labelRouter.get('/', vertifyAuth, list)

module.exports = labelRouter