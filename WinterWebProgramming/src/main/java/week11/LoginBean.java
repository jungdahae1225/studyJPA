//20190356 컴퓨터학과 정다해
package week11;

public class LoginBean {
	private String username;
	private String passwd;
	
	//id와 pw가 이하 정보와 같다면 로그인 성공시킬 것임
	final String _userid = "admin";
	final String _userpw = "1234";
	 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public boolean checkUser() {
		if(username.equals(_userid) && passwd.equals(_userpw))
			return true;
		else
			return false;
	}
}
