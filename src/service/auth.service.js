/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-20 10:32:46
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-20 18:11:11
 * @FilePath: \Aurora-server\src\service\auth.service.js
 * @Description: 
 */
const connection = require('../app/database')
class AuthService {
    async checkResource(tableName,id, userId) {
        try {
            const statement = `SELECT * FROM ${tableName} WHERE id = ? AND user_id=?`
            const [result] = await connection.execute(statement, [id, userId])
            // console.log(result);
            //没有查询到数据 就代表没有权限
            return result.length === 0 ? false : true
        } catch (err) {
            console.log(err);
        }

    }

}
module.exports = new AuthService()