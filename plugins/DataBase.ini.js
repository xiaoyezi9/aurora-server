/*
 * @Author: 爱吃香菜的猹
 * @Date: 2023-03-13 18:44:02
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2023-03-13 18:51:33
 * @FilePath: \xiaoyuan-master\server\plugins\DataBase.ini.js
 * @Description: 
 */
const Database = {}

Database.host = '127.0.0.1'//ip
Database.user = 'root'//用户名
Database.password = '123456'//密码
Database.port = 3306//端口
Database.database = 'auroradev'//数据库名
exports.dbmysql =  Database
