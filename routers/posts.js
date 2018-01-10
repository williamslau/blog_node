/**
 * Created by williamlau on 2018/1/8.
 */
const Router=require('koa-router');
const userModel=require('../lib/mysql');
const moment=require('moment');
let router = new Router({
    prefix: '/william'
});
router.get('/home',async (ctx,next) =>{
    await userModel.findArticle().then(function(json){
        ctx.body = json;
    }).catch(function(err){
        ctx.body = err;
    });
});

module.exports = router;