/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 14:16:07
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-19 22:41:53
 * @FilePath: \Aurora-server\src\controller\authorization.controller.js
 * @Description: 
 */
const jwt = require('jsonwebtoken')
const { PRIVATE_KEY } = require('../app/config.js')
class AuthController {
    async login(ctx, next) {
        //获取用户请求传递的参数
        const { id, name } = ctx.user
        const token = jwt.sign({ id, name }, PRIVATE_KEY, {
            expiresIn: 60 * 60 * 24,
            algorithm: 'RS256'
        })
        //返回数据
        ctx.body = {
            id,
            name,
            token
        }
    }
    
    async success(ctx,next){
        ctx.body="授权成功"
    }
}
module.exports = new AuthController()