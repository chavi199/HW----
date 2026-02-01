package Lesson15;

public class Product {
	private int Id;
	private String Name;
	private int Price;
	
	public Product(int id, String name, int price) {
		super();
		Id = id;
		Name = name;
		Price = price;
	}
	@Override
	public String toString() {
		return "Product [Id=" + Id + ", Name=" + Name + ", Price=" + Price + "]";
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
public void DIscount(int x) {
	Price+=x;
}

}
