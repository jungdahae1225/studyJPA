//20190356 컴퓨터학과 정다해
package week11;
/**-------------------DTO역할-------------------**/
public class AddrBean{
	
	private String username;
	private String tel;
	private String email;
	private String sex;
	
	//LAB11_1 위해 추가
	private String group;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
	}
	
}
