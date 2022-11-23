/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 19:15:47
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-18 20:54:42
 * @FilePath: \Aurora-server\src\main.js
 * @Description: 入口文件
 */
const config = require('./app/config')
const app=require('./app/index')
//这里执行数据库连接函数用于判断数据库是否连接成功
 require('./app/database')
app.listen(config.APP_PORT, () => {
    console.log(`服务器${config.APP_PORT}启动成功`)
})