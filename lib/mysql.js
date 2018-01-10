/**
 * Created by williamlau on 2018/1/8.
 */
const mysql=require('mysql');
const config=require('../config/default');
const pool=mysql.createPool({
    host     : config.database.HOST,
    user     : config.database.USERNAME,
    password : config.database.PASSWORD,
    database : config.database.DATABASE
});
let query=function(sql,values){
    return new Promise((resolve,reject) => {
        pool.getConnection(function(err,connection){
            if (err) {
                reject(err);
            } else {
                connection.query(sql,values,(err,rows) => {
                    if (err) {
                        reject(err)
                    } else {
                        resolve( rows );
                    }
                    connection.release()
                })
            }
        })
    })
};

// 查询所有文章
let findArticle = function () {
<<<<<<< HEAD
    let _sql = 'SELECT a.ID,a.title,a.time,a.read,a.comment, GROUP_CONCAT(l.label)' +
=======
    let _sql = 'SELECT a.*, GROUP_CONCAT(l.label)' +
>>>>>>> 2b1c4c8447341ce648af9b27d113551d04736980
        ' AS label FROM article_table a' +
        ' INNER JOIN article_label_table al' +
        ' ON al.articleid=a.ID' +
        ' INNER JOIN label_table l ' +
        ' ON al.labelid=l.ID' +
        ' GROUP BY a.ID';
    return query( _sql);
};

module.exports = {
    query,
    findArticle
};
