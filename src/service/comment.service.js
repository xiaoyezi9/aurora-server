/*
 * @Author: 爱吃香菜的猹
 * @Date: 2022-11-20 16:31:55
 * @LastEditors: 爱吃香菜的猹
 * @LastEditTime: 2022-11-22 11:14:16
 * @FilePath: \Aurora-server\src\service\comment.service.js
 * @Description:
 */
const connection = require("../app/database");
class CommentService {
  async create(momentId, content, userId) {
    try {
      const statement = `INSERT INTO comment (moment_id,content,user_id) VALUES (?,?,?)`;
      const [result] = await connection.execute(statement, [
        momentId,
        content,
        userId,
      ]);
      return result;
    } catch (error) {
      console.log(error);
    }
  }
  async reply(momentId, content, id, commentId) {
    try {
      const statement = `INSERT INTO comment (moment_id,content,user_id,comment_id) VALUES (?,?,?,?)`;
      const [result] = await connection.execute(statement, [
        momentId,
        content,
        id,
        commentId,
      ]);
      return result;
    } catch (error) {
      console.log(error);
    }
  }
  async update(commentId, content) {
    try {
      const statement = `UPDATE comment SET content = ? WHERE id = ?`;
      const [result] = await connection.execute(statement, [
        content,
        commentId,
      ]);
      return result;
    } catch (error) {
      console.log(error);
    }
  }
  async remove(commentId) {
    try {
      const statement = `DELETE FROM comment WHERE id = ?`;
      const [result] = await connection.execute(statement, [commentId]);
      return result;
    } catch (error) {
      console.log(error);
    }
  }
  async getComentByMomentId(momentId) {
    try {
      const statement = `SELECT c.id,c.content,c.comment_id commentId, c.createAt createTime ,
    JSON_OBJECT('id',u.id,'name',u.name) user
    FROM comment c
    LEFT JOIN users u on u.id=c.user_id
    WHERE moment_id = ?`;
      const [result] = await connection.execute(statement, [momentId]);
      return result;
    } catch (error) {
      console.log(error);
    }
  }
}
module.exports = new CommentService();
