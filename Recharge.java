package project.model;

public class Recharge {
	
	private Long mobNo;
	private String service;
	private int accNo;
	private float amt;
	
	public Recharge() {}

	public Recharge(Long mobNo, String service, int accNo, float amt) {
		super();
		this.mobNo = mobNo;
		this.service = service;
		this.accNo = accNo;
		this.amt = amt;
	}

	public Long getMobNo() {
		return mobNo;
	}

	public void setMobNo(Long mobNo) {
		this.mobNo = mobNo;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

	public float getAmt() {
		return amt;
	}

	public void setAmt(float amt) {
		this.amt = amt;
	}

}
