/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 19:32:52
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 20:16:05
 * @FilePath: \Aurora-server\src\controller\moment.controller.js
 * @Description: 
 */
const fileService = require('../service/file.service.js')
const momentService = require('../service/moment.service.js')
const fs= require('fs')
const {PIC_PATH}=require('../constants/file-path')
class MomentController {
    //发表一个动态
    async create(ctx, next) {
        //获取user_id content 图片
        const userId = ctx.user.id
        const content = ctx.request.body.content
        // console.log(userId,content);
        const result = await momentService.create(content, userId)
        ctx.body = result

    }
    //根据动态ID查询某一个动态
    async detail(ctx, next) {
        //获取momentId
        const momentId = ctx.params.momentId
        // console.log(momentId);
        const result = await momentService.getMomentById(momentId)

        ctx.body = result
    }
    //查询动态列表
    async list(ctx, next) {
        const { offset, size } = ctx.query
        const result = await momentService.getMomentList(offset, size)
        ctx.body = result
    }
    //修改动态
    async update(ctx, next) {
        const { momentId } = ctx.params
        const { content } = ctx.request.body
        const result =await momentService.updateMoment(content,momentId)
        ctx.body = "修改成功" + momentId
    }
    //删除动态
    async remove(ctx,next){
        const { momentId } = ctx.params
        const result =await momentService.removeMoment(momentId)
        ctx.body=result
    }
    //给动态添加标签
    async addLabels(ctx,next){
        const { labels } = ctx
        const {momentId}=ctx.params
        for(let label of labels){
            //判断标签是否与动态相关
             const isExist=await momentService.hasLabel(momentId,label.id)
             if(!isExist){
                await momentService.addLabels(momentId,label.id)
             }
        }  
        ctx.body='给动态添加标签成功'
    }
    async fileInfo(ctx,next){
        let {filename}=ctx.params
        const fileinfo=await fileService.getFileInfo(filename)
        const {type}=ctx.query
        const types=['small', 'middle', 'large']
        if(types.some(item=>item===type)){
            filename=filename+'-'+type
        }
        ctx.response.set('content-type',fileinfo.mimetype)
        ctx.body=fs.createReadStream(`${PIC_PATH}/${filename}`)
    }
}

module.exports = new MomentController()