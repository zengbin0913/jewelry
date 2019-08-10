//创建商品路由器
const express=require("express");
const pool=require("../pool.js");
var product=express.Router();
//商品列表
product.get("/list",(req,res)=>{
  var fid=req.query.fid;
  var output={
	  family:{},
	  jclass:[],
	  product:[],
	};
  var sql=`SELECT fid,fname,fdetails,fimg FROM jewelry_family WHERE fid=?`;
  pool.query(sql,[fid],(err,result)=>{
	if(err) throw err;
	output.family=result[0];
	var sql=`SELECT cid,cname,cdetails,chref,cimg FROM jewelry_class WHERE fid=?`;
	pool.query(sql,[fid],(err,result)=>{
		if(err)throw err;
		output.jclass=result;
		var sql=`SELECT pid,cid,pname,img,details,href,price FROM jewelry_product WHERE fid=?`;
		pool.query(sql,[fid],(err,result)=>{
			if(err)throw err;
			output.product=result;
			res.send(output);
		})
	})
  })
});
//商品详情
product.get("/details",(req,res)=>{
	var pid=req.query.pid;
	var output={
		product:{},
		jclass:{},
		list:[]
	};
	var sql=`SELECT cid,fid,pname,img,details,price FROM jewelry_product WHERE pid=?`;
	pool.query(sql,[pid],(err,result)=>{
		if(err)throw err;
		output.product=result;
		var cid=result[0].cid;
		var sql=`SELECT cname,fid,cdetails,cimg FROM jewelry_class WHERE cid=?`;
		pool.query(sql,[cid],(err,result)=>{
			if(err)throw err;
			output.jclass=result;
			var fid=result[0].fid;
			var sql=`	SELECT pname,img,href FROM jewelry_product WHERE fid=?`;
			pool.query(sql,[fid],(err,result)=>{
				if(err)throw err;
				output.list=result;
				res.send(output);
			})
		})
	})
})
module.exports=product;