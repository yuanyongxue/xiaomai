package com.shopfront.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.apache.log4j.chainsaw.Main;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;






import com.alibaba.fastjson.JSONArray;
import com.shopfront.dao.mainpage.goodsinfoSer;
import com.shopfront.entity.Goodsinfo;
import com.shopfront.entity.OfGoodsinfo;
import com.shopfront.entity.Shopcart;


@Controller
@RequestMapping("mainList")
public class goodSer {
	
	private static final String String = null;
	@Resource
	goodsinfoSer dao;
	private String shopcartID;
	
	@RequestMapping("/list")
	public String update(Map map,int id){
		List<Goodsinfo> list=dao.list(id);
		
		List<Goodsinfo> list1=dao.list1();
		
		map.put("list", list);
		
		map.put("list1", list1);
		return "Mainpage/MainList";
	}
	
	
	//查询
	@RequestMapping("/literature")
	public String getlist(Map map ,String s){
		s=s==null?"":s;
		List<Goodsinfo> list3=dao.list3("%"+s+"%");
		
		map.put("list3", list3);
		map.put("s", s);
		return "Mainpage/literature";
	}


	
	@RequestMapping("cart")
	public String list2(Map map){
		List<Shopcart> list2=dao.list2();
		map.put("list2", list2);
		return "Mainpage/cart";
	}
	
	
	
	
	@RequestMapping("/del")
	public String del(String shopcartID){

		 dao.del(shopcartID);
		/*return "redirect:/Shop_front/mainList/cart";*/
		return "redirect:/mainList/cart";
		
	}
	
	/*@RequestMapping("literature")
	public  String list3(Map map,String GoodsName){
		GoodsName=GoodsName==null?"":GoodsName;
		List<Goodsinfo> list3=dao.list3("%"+GoodsName+"%");
			
		return "literature";
		
	}*/
	
	//结算
	 @RequestMapping("pay")
	 public String pay(Map map){
		 List<Shopcart> list4=dao.list4();
		 return "Mainpage/pay";
	 }
	
	
	
	public String list(Map map){
		List<Shopcart>list2 =dao.list2();
		map.put("list2", list2);
		
		return "Mainpage/MainList";
		}
	
	
	
	
	/*public String getlist(String GoodsName,Map map){
		List<Goodsinfo> list3=dao.list3(GoodsName);
		
		map.put("list3", list3);
		
		return "GoodsName";
	}
	*/
	
	/*@RequestMapping(value="/cart",method=RequestMethod.GET,produces="application/json; charset=utf-8")
    @ResponseBody
    public String  cart(Map map)
	{
		
		List<Goodsinfo> list2=dao.list2();
		map.put("list2", list2);
		return "cart";
	}
    */
	
	/*public String list2(Map map){
		List<Goodsinfo> list2=dao.list2();
		map.put("list2", list2);
		return "cart";
	}*/
}
