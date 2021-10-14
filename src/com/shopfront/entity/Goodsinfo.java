package com.shopfront.entity;
/***
 * 商品信息实体
 * @author song
 *
 */
public class Goodsinfo {

	private int GoodsID;//商品ID
	private String GoodsName;//商品名称
	private String GoodsIntroduce;//商品介绍
	private String GoodsBrand;//商品品牌
	private String GoodsUnit;//商品计数单位
	private double GoodsWeight;//商品重量
	private double MarketPrice;//商品市场价格
	private double MemberPrice;//商品会员价格
	
	private int ClassID1;//商品类别一级分类
	private int ClassID2;//商品类别二级分类
	
	private String GoodsUrl;//商品图片地址
	
	private String AddDate;//上传日期
	
	private boolean Isrefinement;//是否精品
	private boolean IsHot;//是否热销
	private boolean IsDiscount;//是否特价
	
	private int ImageID;//图片ID
	private String ImageName;//图片名称
	
	public Goodsinfo() {
		
	}

	public int getGoodsID() {
		return GoodsID;
	}

	public void setGoodsID(int goodsID) {
		GoodsID = goodsID;
	}

	public String getGoodsName() {
		return GoodsName;
	}

	public void setGoodsName(String goodsName) {
		GoodsName = goodsName;
	}

	public String getGoodsIntroduce() {
		return GoodsIntroduce;
	}

	public void setGoodsIntroduce(String goodsIntroduce) {
		GoodsIntroduce = goodsIntroduce;
	}

	public String getGoodsBrand() {
		return GoodsBrand;
	}

	public void setGoodsBrand(String goodsBrand) {
		GoodsBrand = goodsBrand;
	}

	public String getGoodsUnit() {
		return GoodsUnit;
	}

	public void setGoodsUnit(String goodsUnit) {
		GoodsUnit = goodsUnit;
	}

	public double getGoodsWeight() {
		return GoodsWeight;
	}

	public void setGoodsWeight(double goodsWeight) {
		GoodsWeight = goodsWeight;
	}

	public double getMarketPrice() {
		return MarketPrice;
	}

	public void setMarketPrice(double marketPrice) {
		MarketPrice = marketPrice;
	}

	public double getMemberPrice() {
		return MemberPrice;
	}

	public void setMemberPrice(double memberPrice) {
		MemberPrice = memberPrice;
	}

	public int getClassID1() {
		return ClassID1;
	}

	public void setClassID1(int classID1) {
		ClassID1 = classID1;
	}

	public int getClassID2() {
		return ClassID2;
	}

	public void setClassID2(int classID2) {
		ClassID2 = classID2;
	}

	public String getGoodsUrl() {
		return GoodsUrl;
	}

	public void setGoodsUrl(String goodsUrl) {
		GoodsUrl = goodsUrl;
	}

	public String getAddDate() {
		return AddDate;
	}

	public void setAddDate(String addDate) {
		AddDate = addDate;
	}

	public boolean isIsrefinement() {
		return Isrefinement;
	}

	public void setIsrefinement(boolean isrefinement) {
		Isrefinement = isrefinement;
	}

	public boolean isIsHot() {
		return IsHot;
	}

	public void setIsHot(boolean isHot) {
		IsHot = isHot;
	}

	public boolean isIsDiscount() {
		return IsDiscount;
	}

	public void setIsDiscount(boolean isDiscount) {
		IsDiscount = isDiscount;
	}

	public int getImageID() {
		return ImageID;
	}

	public void setImageID(int imageID) {
		ImageID = imageID;
	}

	public String getImageName() {
		return ImageName;
	}

	public void setImageName(String imageName) {
		ImageName = imageName;
	}
	
	
	
}
