/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 15:45:02
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 20:09:32
 * @FilePath: \Aurora-server\src\middleware\file.middleware.js
 * @Description: 
 */
const Multer = require('koa-multer')
const path = require('path');
const Jimp = require('jimp') //图片处理库
const { AVATAR_PATH, PIC_PATH } = require('../constants/file-path')
const avatarUpload = Multer({
    dest: AVATAR_PATH
})
const picUpload = Multer({
    dest: PIC_PATH
})
const avatarHandler = avatarUpload.single('avatar')
const picHandler = picUpload.array('pic', 9) //最大上传9个图片
const picResize = async (ctx, next) => {
    const files = ctx.req.files
    for (let file of files) {
        const destPath = path.join(file.destination, file.filename)
        Jimp.read(file.path).then((image) => {
            image.resize(1280, Jimp.AUTO).write(`${destPath}-large`)
            image.resize(640, Jimp.AUTO).write(`${destPath}-middle`)
            image.resize(320, Jimp.AUTO).write(`${destPath}-small`)

        })
    }
    await next()
}
module.exports = {
    avatarHandler,
    picHandler, picResize
}