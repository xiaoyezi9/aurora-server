/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-20 16:25:05
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 08:09:56
 * @FilePath: \Aurora-server\src\controller\comment.controller.js
 * @Description: 
 */
const service = require('../service/comment.service')
class CommentController {
    async create(ctx, next) {
        const { momentId, content } = ctx.request.body
        const { id } = ctx.user
        const result = await service.create(momentId, content, id)
        ctx.body = result

    }
    async reply(ctx, next) {
        const { momentId, content } = ctx.request.body
        const { commentId } = ctx.params
        const { id } = ctx.user
        // console.log( momentId, content, id, commentId);
        const result = await service.reply(momentId, content, id, commentId)
        ctx.body='回复评论成功'
    }
    
    async update(ctx,next){
        const { commentId } = ctx.params
        const { content } = ctx.request.body
        const result = await service.update(commentId,content)
        ctx.body=result

    }
    async remove(ctx,next){
        const { commentId } = ctx.params
        const result = await service.remove(commentId)
        ctx.body=result

    }
    async list(ctx,next){
        const { momentId } = ctx.query
        const result = await service.getComentByMomentId(momentId )
        ctx.body=result
          
    }
}

module.exports = new CommentController()