/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-19 22:00:06
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:16:25
 * @FilePath: \Aurora-server\src\service\moment.service.js
 * @Description: 
 */
const connection = require('../app/database')
// const sqlFragment = ` SELECT m.id id,m.content content,m.createAt createTime, m.updateAt updateTime,
// JSON_OBJECT('id',u.id,'name',u.name) autor
// FROM moment m
// LEFT JOIN users u ON m.user_id=u.id`
class MomentService {
    async create(content, userId) {
        const statement = `INSERT INTO moment (content,user_id) VALUES (?,?)`
        const [result] = await connection.execute(statement, [content, userId])
        // console.log(result);
        return result
    }
    async getMomentById(id) {
        const statement = `
        SELECT 
        m.id id, m.content content, m.createAt createTime, m.updateAt updateTime,
        JSON_OBJECT('id', u.id, 'name', u.name, 'avatarUrl', u.avatar_url) author,
        IF(COUNT(l.id),JSON_ARRAYAGG(
          JSON_OBJECT('id', l.id, 'name', l.name)
        ),NULL) labels,
        (SELECT IF(COUNT(c.id),JSON_ARRAYAGG(
          JSON_OBJECT('id', c.id, 'content', c.content, 'commentId', c.comment_id, 'createTime', c.createAt,
                      'user', JSON_OBJECT('id', cu.id, 'name', cu.name, 'avatarUrl', cu.avatar_url))
        ),NULL) FROM comment c LEFT JOIN user cu ON c.user_id = cu.id WHERE m.id = c.moment_id) comments,
        (SELECT JSON_ARRAYAGG(CONCAT('http://localhost:8000/moment/images/', file.filename)) 
        FROM file WHERE m.id = file.moment_id) images
      FROM moment m
      LEFT JOIN user u ON m.user_id = u.id
      LEFT JOIN moment_label ml ON m.id = ml.moment_id
      LEFT JOIN label l ON ml.label_id = l.id
      WHERE m.id = ?
      GROUP BY m.id;  
        `
        // console.log(id);
        try {
            const [result] = await connection.execute(statement, [id])
            return result[0]
        } catch (error) {
            console.log(error);
        }
        // console.log(result);
    }
    async getMomentList(offset, size) {
        const statement = `
        SELECT m.id id,m.content content,m.createAt createTime, m.updateAt updateTime,
        JSON_OBJECT('id',u.id,'name',u.name) autor,
        (SELECT COUNT(*) FROM comment c WHERE c.moment_id=m.id)
        FROM moment m
        LEFT JOIN users u ON m.user_id=u.id
         LIMIT ?,?
          `
        try {
            const [result] = await connection.execute(statement, [offset, size])
            return result
        } catch (error) {
            console.log(error);
        }

    }

    //更新动态
    async updateMoment(content, momentId) {
        try {
            const statement = `UPDATE moment SET content=? WHERE id=?`
            const [result] = await connection.execute(statement, [content, momentId])
            return result
        } catch (error) {
            console.log(error);
        }

    }
    //删除动态
    async removeMoment(momentId) {
        try {
            const statement = `DELETE FROM moment WHERE id=?`
            const [result] = await connection.execute(statement, [momentId])
            return result
        } catch (error) {
            console.log(error);

        }
    }

    async hasLabel(momentId, labelId) {
        try {
            const statement = `SELECT * FROM moment_label WHERE moment_id=? AND label_id=?`
            const [result] = await connection.execute(statement, [momentId, labelId])
            return result[0] ? true : false
        } catch (error) {
            console.log(error);
        }

    }

    async addLabels(momentId, labelId) {
        try {
            const statement = `INSERT INTO moment_label (moment_id,label_id) value(?,?)`
            const [result] = await connection.execute(statement, [momentId, labelId])
            return result
        } catch (error) {
            console.log(error);

        }

    }
}
module.exports = new MomentService()