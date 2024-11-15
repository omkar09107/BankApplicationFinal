package project.model;

public class UserRegister {
	
	private Long mobNo;
	private String uName;
	private String password;
	private int accNo;
	private Float accBal;
	public UserRegister() {}
	public UserRegister(Long mobNo, String uName, String password, int accNo, Float accBal) {
		super();
		this.mobNo = mobNo;
		this.uName = uName;
		this.password = password;
		this.accNo = accNo;
		this.accBal = accBal;
	}
	public Long getMobNo() {
		return mobNo;
	}
	public void setMobNo(Long mobNo) {
		this.mobNo = mobNo;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public Float getAccBal() {
		return accBal;
	}
	public void setAccBal(Float accBal) {
		this.accBal = accBal;
	}
	

	
}
