/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 20:15:16
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-25 20:59:44
 * @FilePath: \Aurora-server\src\controller\user.controller.js
 * @Description: 接口具体操作
 */
const fs = require('fs')
const { AVATAR_PATH } = require('../constants/file-path.js')
const userService = require('../service/user.service')
const fileService = require('../service/file.service')
class UserController {
    async create(ctx, next) {
        //获取用户请求传递的参数
        const user = ctx.request.body
        //查询数据
        const result = await userService.create(user)
        //返回数据
        ctx.body = result
    }
    //获取头像信息
    async avatarInfo(ctx, next) {
        const { userId } = ctx.params
        const avatarInfo = await fileService.getAvatarByUserId(userId)
        //读取图像信息
        ctx.response.set('content-type',avatarInfo.minmetype )
        ctx.body = fs.createReadStream(`${AVATAR_PATH}/${avatarInfo.filename}`)

    }
}
module.exports = new UserController()