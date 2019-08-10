//创建首页路由器
const express = require("express");
const pool = require("../pool.js");
var index = express.Router();
//1首页导航栏
index.get("/nav", (req, res) => {
  var sql = `SELECT jewelry_family.fid,fname,fdetails,fhref,cname,fimg FROM jewelry_family,jewelry_class WHERE jewelry_family.fid=jewelry_class.fid`;
  pool.query(sql, (err, result) => {
    if (err) throw err;
    var arr = []; var output = [];
    for (var i = 0; i < result.length; i++) {
      var n = arr.indexOf(result[i].fid);
      if (n == -1) {
        arr.push(result[i].fid);
        output.push({ "fid": result[i].fid, "cname": [result[i].cname]})
      }
      else {
        output[n].cname.push(result[i].cname);
      }
    }
    for (var i = 0; i < output.length; i++) {
      output[i].fname = result[i*4].fname;
      output[i].fdetails = result[i*4].fdetails;
      output[i].fhref = result[i*4].fhref;
      output[i].fimg = result[i*4].fimg;
    }
    res.send(output);
  })
});
//2首页轮播图
index.get("/carousel",(req,res)=>{
  var sql=`SELECT lid,img,title,href FROM jewelry_index_carousel`;
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result);
  })
})
module.exports = index;