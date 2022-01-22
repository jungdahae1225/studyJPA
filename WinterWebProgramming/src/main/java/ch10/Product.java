package ch10;
/**
 * 
 * @author dahae
 * File : Product.java
 * Desc : 제품 빈즈 클래스
 */
public class Product {
	private ProductData data = new ProductData(new String[] {"item1", "item2", "item3", "item4", "item5"}, 10, 20);
	
	//num1과 num2는 우리가 이미 값을 지정했으므로 setter는 필요 없다.
	public int getNum1() {
		return data.num1;
	}

	public int getNum2() {
		return data.num2;
	}
	
	public String[] getProductList() {
		return data.productList;
	}
}
