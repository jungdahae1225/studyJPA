//20190356 컴퓨터학과 정다해 크롬실행
//ProductBean클래스
package final_class;

//DO클래스
public class ProductBean {

	private String productname;
	private String qty;
	private String price;
	private String kind;
	
	private String grade; //판매등급을 정하기 위함
	
	public String forSetGrade() {
		Integer gr = Integer.parseInt(price) * Integer.parseInt(qty);
		
		if(gr >= 50000)
			setGrade("우수");
		else if(gr >= 20000)
			setGrade("보통");
		else
			setGrade("미흡");
		
		return grade;
	}
	
	public ProductBean() {//단가와 수량의 초기값을 -1로 설정한다.
		this.price = "-1";
		this.qty = "-1";
	} 
	
	
	//이하 setter getter
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
}
