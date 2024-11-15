package project.model;

public class Payment {
	
	
	private float amt;
	private Long mobNo;
	
	public Payment() {}

	public Payment(float amt, Long mobNo) {
		super();
		this.amt = amt;
		this.mobNo = mobNo;
	}

	public float getAmt() {
		return amt;
	}

	public void setAmt(float amt) {
		this.amt = amt;
	}

	public Long getMobNo() {
		return mobNo;
	}

	public void setMobNo(Long mobNo) {
		this.mobNo = mobNo;
	}

	
}
