package com.trishul.IndividualItem;


public class IndividualItem {

	
	private String brand;
	private String color;
	private String instock;
	private String price;
	
	
	//for agent list
	
	private String name;
	private String uid;
	
	
	public IndividualItem (String brand,String color,String instock,String price) {
		
		this.brand=brand;
		this.color=color;
		this.instock=instock;
		this.price=price;
	}
	
public IndividualItem (String brand,String color,String price) {
		
		this.brand=brand;
		this.color=color;
		this.price=price;
		
	}

public IndividualItem (String name,String uid)
{
	this.name=name;
	this.uid=uid;
}
	public String getBrand(){return brand;}
	public String getColor(){return color;}
	public String getInstock(){return instock;}
	public String getPrice(){return price;}
	public String getName() {return name;}
	public String getUid() {return uid;}
		
		
}
