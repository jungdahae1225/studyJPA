package final_class;
//20190356 컴퓨터학과 정다해 크롬실행
//ProductManager클래스
import java.util.*;

public class ProductManager {
	List<ProductBean> addrlist = new ArrayList<ProductBean>();

	//추가 메서드
	public void add(ProductBean ab) {
		addrlist.add(ab);
	}

	//목록 전달 메서드
	public List<ProductBean> getAddrList() {
		return addrlist;
	}
}
