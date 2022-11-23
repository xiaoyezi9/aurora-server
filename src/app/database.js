// @ts-nocheck
/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 20:46:15
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-19 13:03:00
 * @FilePath: \Aurora-server\src\app\database.js
 * @Description:  数据库配置文件
 */

const mysql=require('mysql2')
const config = require('./config')
//创建连接池
const connections= mysql.createPool({
  port:config.MYSQL_PORT,
  host:config.MYSQL_HOST,
  database:config.MYSQL_DATABASE,
  user:config.MYSQL_USER,
  password:config.MYSQL_PASSWORD
})

connections.getConnection((err,conn) => {
    conn.connect((err) => {
       if(err){
        console.log('数据库连接失败',err)
       }else{
        console.log('数据库连接成功')
       }
    })
})
module.exports=connections.promise()