// @ts-nocheck
/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 19:40:38
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 18:42:18
 * @FilePath: \Aurora-server\src\app\config.js
 * @Description: 
 */
const fs= require('fs')
const path=require('path')
const dotenv=require('dotenv')
dotenv.config()
// console.log(process.env.APP_PORT);
const PUBLIC_KEY=fs.readFileSync(path.resolve(__dirname,'./keys/public.key'))
const PRIVATE_KEY=fs.readFileSync(path.resolve(__dirname,'./keys/private.key'))
module.exports={ 
APP_PORT,
APP_HOST,
MYSQL_PORT,
MYSQL_DATABASE,
MYSQL_HOST,
MYSQL_USER,
MYSQL_PASSWORD

}=process.env

module.exports.PRIVATE_KEY= PRIVATE_KEY
module.exports.PUBLIC_KEY=PUBLIC_KEY
