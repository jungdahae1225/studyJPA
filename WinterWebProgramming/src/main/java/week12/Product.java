//20190356 컴퓨터학과 정다해
package week12;

public class Product {
	private String[] productList = {"사과", "딸기", "귤", "자몽", "수박"};
	private String[] productList_price = {"100", "200", "300", "400", "500"};
	private String[] productList_num = {"1", "2", "3", "4", "5"};
	
	private int num1 = 10;
	private int num2 = 20;
	
	public String[] getProductList() {
		return productList;
	}
	
	public String[] getProductList_price() {
		return productList_price;
	}
	
	public String[] getProductList_num() {
		return productList_num;
	}

	//num1과 num2는 우리가 이미 값을 지정했으므로 setter는 필요 없다.
	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}
	
}
