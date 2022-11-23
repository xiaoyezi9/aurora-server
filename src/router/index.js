/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 14:48:08
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-19 14:54:57
 * @FilePath: \Aurora-server\src\router\index.js
 * @Description: 解决路由中间件每次都要手动导入
 */
const fs= require('fs')
const useRoutes=function() {
    //读取当前文件所在目录返回一个数组 --当前文件夹下所有文件
    fs.readdirSync(__dirname).forEach(file=>{
          if(file==='index.js') return 
          const router=require(`./${file}`)
          this.use(router.routes())
          this.use(router.allowedMethods())
    })
}

module.exports=useRoutes