package p2;

public class Item {
	private String iname;
	private String img;
	private  String price;
	public Item(){
	super();
	}
	public Item( String iname, String price, String img) {
		super();
		
		this.iname = iname;
		this.img = img;
		this.price = price;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getimg() {
		return img;
	}
	public void setimg(String img) {
		this.img = img;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Item [ iname=" + iname + ", img=" + img + ", price=" + price + "]";
	}
	
}
