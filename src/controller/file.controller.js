/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 15:55:14
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:45:38
 * @FilePath: \Aurora-server\src\controller\file.controller.js
 * @Description: 
 */
const config = require('../app/config')
const { AVATAR_PATH } = require('../constants/file-path')
const fileService = require('../service/file.service')
const userService = require('../service/user.service')
class FileController {
    async saveAvatarInfo(ctx, next) {
        // console.log(ctx.req.file);
        const { mimetype, filename, size } = ctx.req.file
        const { id } = ctx.user
        //将图像信息保存到数据库中
        const result = await fileService.createAvatar(filename, mimetype, size, id)
        const avatarUrl = `${config.APP_HOST}:${config.APP_PORT}/users/${id}/avatar`
        await userService.updateAvatarUrlById(id, avatarUrl)
        ctx.body = {
            status: 200,
            message: '上传头像成功'
        }
    }
    async savePicInfo(ctx, next) {
        // console.log(ctx.req.file);
        const files = ctx.req.files
        const { id } = ctx.user
        const {momentId}=ctx.query
        for (let file of files) {
            const { mimetype, filename, size } = file
            await fileService.createFile(filename,mimetype,size,id,momentId)
        }
        ctx.body = {
            status: 200,
            message: '上传图片成功'
        }
    }
}
module.exports = new FileController()