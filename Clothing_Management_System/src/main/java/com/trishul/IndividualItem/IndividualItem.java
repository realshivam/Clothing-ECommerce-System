package com.trishul.IndividualItem;


public class IndividualItem {

	
	private String brand;
	private String color;
	private String instock;
	private String price;
	
	public IndividualItem (String brand,String color,String instock,String price) {
		
		this.brand=brand;
		this.color=color;
		this.instock=instock;
		this.price=price;
	}
	
	public String getBrand(){return brand;}
	public String getColor(){return color;}
	public String getInstock(){return instock;}
	public String getPrice(){return price;}
		
		
}
