/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 09:49:15
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 14:16:56
 * @FilePath: \Aurora-server\src\controller\label.controller.js
 * @Description: 
 */
const service = require('../service/label.service')
class LabelController {
    async create(ctx, next) {
        const { name } = ctx.request.body
        const result = await service.create(name)
        ctx.body = result
    }
    async list(ctx,next){
        const {limit,offset} = ctx.query
        const result=await service.list(limit,offset)
        ctx.body = result
    }
    
}

module.exports = new LabelController();