package client;

public class UserVO {
	private String name;
	// private 맴버 변수 (규약No.2)
	private int code;
	// private 맴버 변수 (규약No.2)
	public UserVO() {}
	// 기본 생성자가 있어야합니다. (규약No.3)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public UserVO(String name, int code) {
		super();
		this.name = name;
		this.code = code;
	}
	
}
