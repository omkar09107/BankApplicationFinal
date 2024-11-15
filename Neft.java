package project.model;

public class Neft {
	
	private int accNo;
	private String bName;
	private int bAccNo;
	private float tamt;//t=transfer
	
	public Neft() {}

	public Neft(int accNo, String bName, int bAccNo, float tamt) {
		super();
		this.accNo = accNo;
		this.bName = bName;
		this.bAccNo = bAccNo;
		this.tamt = tamt;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public int getbAccNo() {
		return bAccNo;
	}

	public void setbAccNo(int bAccNo) {
		this.bAccNo = bAccNo;
	}

	public float getTamt() {
		return tamt;
	}

	public void setTamt(float tamt) {
		this.tamt = tamt;
	}

	
}
