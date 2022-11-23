/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-18 20:18:10
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:17:45
 * @FilePath: \Aurora-server\src\service\user.service.js
 * @Description: 接口传递过来的参数对数据库进行查询
 */
const connection = require('../app/database')
class UserService {
    async create(user) {
        // console.log('数据保存到数据库',user);
        const { name, password } = user
        const statement = `INSERT INTO users (name,password) VALUES (?,?)`
        try {
            const result = await connection.execute(statement, [name, password])
            return result[0]
        } catch (error) {
            console.log(error);
        }

    }
    async getUserByName(name) {
        const statement = `SELECT * FROM users WHERE name=?`
        try {
            const result = await connection.execute(statement, [name])
            return result[0]
        } catch (error) {
            console.log(error);

        }

    }
    async updateAvatarUrlById(id, avatarUrl) {
        try {
            const statement = `UPDATE users SET avatar_url=? WHERE id =?`
            const result = await connection.execute(statement, [avatarUrl, id])
            return result[0]
        } catch (error) {
            console.log(error);

        }

    }
}

module.exports = new UserService()