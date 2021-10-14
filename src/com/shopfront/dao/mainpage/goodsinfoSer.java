package com.shopfront.dao.mainpage;

import java.util.List;

import org.apache.ibatis.annotations.Param;




import com.shopfront.entity.Goodsinfo;
import com.shopfront.entity.Shopcart;


public interface goodsinfoSer {
		//主页
		public List<Goodsinfo> list(@Param("MemberID")int MemberID);
		public List<Goodsinfo> list1();
		
		
		//删除
		public int del(@Param("shopcartID") String shopcartID);
		
		
		//结算
		public List<Shopcart> list4();
		
		//购物车
		public List<Shopcart> list2();
		
		
		/*模糊查询*/
		
		public List<Goodsinfo> list3(@Param("s")String s);
 		
		
		
		/*//public Goodsinfo update(@Param("id") String  id);
			public List<Goodsinfo> list2(@Param("name")String name);
			public int  add(Goodsinfo obj); */
}
