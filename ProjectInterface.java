package project.dao;

import java.util.List;

import project.model.Login;
import project.model.Neft;

import project.model.Payment;
import project.model.Recharge;
import project.model.UserRegister;

public interface ProjectInterface {
	
	int createRecord(List<UserRegister> rlst);
	int doRecharge(List<Recharge> rlst);
	List<Recharge> displayAll();
	int updateRecord(List<Recharge> rlst);
	//int updateRecord(List<Payment> plst);
	int neftRecord(List<Neft> nlst);

	int neftTransfer(List<Neft> nlst);
	

	
	

	
}
