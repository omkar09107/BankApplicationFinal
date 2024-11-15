package project.model;

import java.sql.Date;

public class Bill {
	
	private int billNo;
	private Date billDate;
	private float total;
	private float cgst;
	private float sgst;
	private float fTotal;
	
	public Bill() {}

	public Bill(int billNo, Date billDate, float total, float cgst, float sgst, float fTotal) {
		super();
		this.billNo = billNo;
		this.billDate = billDate;
		this.total = total;
		this.cgst = cgst;
		this.sgst = sgst;
		this.fTotal = fTotal;
	}

	public int getBillNo() {
		return billNo;
	}

	public void setBillNo(int billNo) {
		this.billNo = billNo;
	}

	public Date getBillDate() {
		return billDate;
	}

	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public float getCgst() {
		return cgst;
	}

	public void setCgst(float cgst) {
		this.cgst = cgst;
	}

	public float getSgst() {
		return sgst;
	}

	public void setSgst(float sgst) {
		this.sgst = sgst;
	}

	public float getfTotal() {
		return fTotal;
	}

	public void setfTotal(float fTotal) {
		this.fTotal = fTotal;
	}

	
}
