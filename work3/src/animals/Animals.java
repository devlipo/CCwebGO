package animals;

public class Animals {
	public static final int PAGE_SIZE = 5;
	// ���
	private int id;
	// ͼ������
	private String name;
	//��ĸ
	private String sex;
	// �۸�
	private double price;
	// ����
	private String species;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	@Override  
	public String toString() {  
	    return "Animals [id=" + id + ", name=" + name + ", sex=" + sex  
	            + ", price=" + price + ",species=" + species + "]"; 
 }
}

