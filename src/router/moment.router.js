/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 19:31:24
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 19:36:55
 * @FilePath: \Aurora-server\src\router\moment.router.js
 * @Description: 发表动态接口
 */
const Router = require('koa-router')
const { create,detail,list ,update,remove,addLabels,fileInfo} = require('../controller/moment.controller')
const { vertifyAuth,vertifyPermission } = require('../middleware/auth.middleware')
const { vertifyLabelExists } = require('../middleware/label.middleware')



const momentRouter = new Router({ prefix: '/moment' })
momentRouter.post('/', vertifyAuth, create)
momentRouter.get('/', list)
momentRouter.get('/:momentId', detail)
momentRouter.patch('/:momentId',  vertifyAuth,vertifyPermission,update)
momentRouter.delete('/:momentId',  vertifyAuth,vertifyPermission,remove)

//给动态添加标签
momentRouter.post('/:momentId/labels', vertifyAuth,vertifyLabelExists, addLabels)
//动态配图
momentRouter.get('/images/:filename', vertifyAuth,fileInfo)

module.exports = momentRouter