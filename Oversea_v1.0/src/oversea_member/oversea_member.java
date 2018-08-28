package oversea_member;

public class oversea_member {
	private String name;
	private String email;
	private String passwd;
	private String ph1;
	private String ph2;
	private String ph3;
	private String phone;
	private String birth;
	private String zipcode;
	private String addr;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getPh1() {
		return ph1;
	}
	public void setPh1(String ph1) {
		this.ph1 = ph1;
	}
	public String getPh2() {
		return ph2;
	}
	public void setPh2(String ph2) {
		this.ph2 = ph2;
	}
	public String getPh3() {
		return ph3;
	}
	public void setPh3(String ph3) {
		this.ph3 = ph3;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPhone() {
		StringBuffer sb = new StringBuffer(ph1);
		sb.append(ph2);
		sb.append(ph3);
		phone = sb.toString();
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
