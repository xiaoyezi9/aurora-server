/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-21 09:52:28
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:15:50
 * @FilePath: \Aurora-server\src\service\label.service.js
 * @Description: 
 */
const connection = require('../app/database')
class LabelService {
    async create(name) {
        try {
            const statement = `INSERT INTO label (name) VALUES (?)`
            const [result] = await connection.execute(statement, [name])
            return result
        } catch (error) {
            console.log(error);
        }

    }

    async getLabelByName(name) {
        try {
            const statement = `SELECT *  FROM label WHERE name=?`
            const [result] = await connection.execute(statement, [name])
            return result[0]
        } catch (error) {
            console.log(error);

        }


    }
    async list(limit, offset) {
        try {
            const statement = `SELECT *  FROM label LIMIT ?,?`
            const [result] = await connection.execute(statement, [offset, limit])
            return result
        } catch (error) {
            console.log(error);

        }

    }
}
module.exports = new LabelService()
