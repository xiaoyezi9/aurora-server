/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 10:13:30
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-21 13:48:06
 * @FilePath: \Aurora-server\src\middleware\label.middleware.js
 * @Description: 
 */
const service = require('../service/label.service')
const vertifyLabelExists = async (ctx, next) => {
    //取出所有标签
    const { labels } = ctx.request.body
    // console.log(labels);
    const newLabels = []
    //【按段每一个标签在label表中是否存在
    for (let name of labels) {
        const labelResult = await service.getLabelByName(name)
        const label = {
            name 
        }
        if (!labelResult) {
            //不存在就创建一个标签
            const result = await service.create(name)
            label.id = result.insertId
        }
        else {
            label.id = labelResult.id
        }
        newLabels.push(label)
    }
    ctx.labels = newLabels
    await next()
}

module.exports = {
    vertifyLabelExists
}