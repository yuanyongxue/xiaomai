package com.shopfront.entity;
/***
 * 商品图片实体
 * @author song
 *
 */
public class Image {

	private int ImageID;//商品图片ID
	private String ImageName;//商品图片名称
	private String ImageUrl;//商品图片地址
	
	public Image() {
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

	public String getImageUrl() {
		return ImageUrl;
	}

	public void setImageUrl(String imageUrl) {
		ImageUrl = imageUrl;
	}
	
	
}
