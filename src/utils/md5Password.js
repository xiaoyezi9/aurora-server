/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 13:54:19
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-19 13:57:28
 * @FilePath: \Aurora-server\src\utils\md5Password.js
 * @Description: 密码加密函数
 */
const crypto = require('crypto');
//crypto 是node自带的库
const md5password = (password) => {
    const md5 = crypto.createHash('md5')
   const result=  md5.update(password).digest('hex')
   return result 
}

module.exports=md5password