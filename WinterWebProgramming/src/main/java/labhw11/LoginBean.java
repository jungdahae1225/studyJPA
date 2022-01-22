//20190356 컴퓨터학과 정다해
package labhw11;
import java.util.*;

public class LoginBean {
	private String id;
	private String pw;
	private Integer gender;
	private String email;
	private String birth;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	Calendar cal = Calendar.getInstance();
	int nowYear = cal.get(Calendar.YEAR);//현재 년도
	
	public boolean isGrownUp() {
		
		String[] dArray = birth.split("-");
		if(nowYear - Integer.parseInt(dArray[0]) + 1 >= 20)
			return true;
		else
			return false;
	}
}
