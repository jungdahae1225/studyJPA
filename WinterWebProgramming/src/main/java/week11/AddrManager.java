//20190356 컴퓨터학과 정다해
package week11;

import java.util.*;

public class AddrManager {
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	//이하 3줄은 그룹별 출력을 위함
	//sort메소드를 사용하려고 했는데 실패,, 나중에 해볼 것
	List<AddrBean> addrlist_family = new ArrayList<AddrBean>();
	List<AddrBean> addrlist_company = new ArrayList<AddrBean>();
	List<AddrBean> addrlist_friend = new ArrayList<AddrBean>();
	
	
	
	//주소록 추가 메서드
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}

	//주소록 목록 전달 메서드
	public List<AddrBean> getAddrList() {
		return addrlist;
	}
	
	
	//------------------그룹별 출력을 위함 --------------------//
	public void add_family(AddrBean ab) {
		addrlist_family.add(ab);
	}
	
	public void add_company(AddrBean ab) {
		addrlist_company.add(ab);
	}
	
	public void add_friend(AddrBean ab) {
		addrlist_friend.add(ab);
	}
	
	public List<AddrBean> getAddrlist_family() {
		return addrlist_family;
	}
	
	public List<AddrBean> getAddrlist_company() {
		return addrlist_company;
	}
	
	public List<AddrBean> getAddrlist_friend() {
		return addrlist_friend;
	}
	
	
}
