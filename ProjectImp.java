package project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirObjectFactory;

import project.model.Login;
import project.model.Neft;

import project.model.Payment;
import project.model.Recharge;
import project.model.UserRegister;

public class ProjectImp implements ProjectInterface{

	private Connection con;
	private PreparedStatement p;
	public int createRecord(List<UserRegister> ulst) {
		con=DBConnection.mycon();
		int i=0;
		UserRegister uobj=ulst.get(0);
		try {
			p=con.prepareStatement("insert into userData values(?,?,?,?,?)");
			p.setLong(1, uobj.getMobNo());
			p.setString(2, uobj.getuName());
			p.setString(3, uobj.getPassword());
			p.setInt(4, uobj.getAccNo());
			p.setFloat(5, uobj.getAccBal());
			i=p.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return i;

	}

	@Override
	public int doRecharge(List<Recharge> rlst) {

		con=DBConnection.mycon();
		int i=0;
		System.out.println("sql1");
		Recharge obj=rlst.get(0);

		try {
			p=con.prepareStatement("insert into recharge values(?,?,?,?)");
			p.setLong(1, obj.getMobNo());
			p.setString(2, obj.getService());
			p.setInt(3, obj.getAccNo());
			p.setFloat(4, obj.getAmt());
			i=p.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public List<Recharge> displayAll() {
		con=DBConnection.mycon();

		Recharge robj=null;
		List<Recharge> rlst=new ArrayList<Recharge>();
		robj=rlst.get(0);
		ResultSet r;
		try {
			p=con.prepareStatement("select * from recharge where mob_no=?");
			p.setLong(1, robj.getMobNo());
			r = p.executeQuery();
			while(r.next()) {
				robj=new Recharge(robj.getMobNo(),robj.getService() ,robj.getAccNo(), robj.getAmt());
				rlst.add(robj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rlst;
	}

	public boolean validateRecharge(Recharge robj) {
		boolean isValid = false;
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		con = DBConnection.mycon();
		try {
			con = DBConnection.mycon();
			String sql = "select * from userData where mob_no=? and acc_no=?";
			stmt = con.prepareStatement(sql);
			stmt.setLong(1, robj.getMobNo());
			stmt.setInt(2, robj.getAccNo());
			rs = stmt.executeQuery();			
			if (rs.next()) {
				System.out.println("sql6");
				isValid = true;
				System.out.println("Ans: " + rs.getString(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (stmt != null) stmt.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isValid;
	}

	public boolean validateCredentials(Login login) {
		boolean isValid = false;
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = DBConnection.mycon();
			String sql = "SELECT * FROM userData WHERE u_name = ? AND password = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, login.getuName());
			stmt.setString(2, login.getPassword());
			rs = stmt.executeQuery();
			if(rs.next()) {
				isValid = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isValid;
	}

	@Override
	public int neftRecord(List<Neft> nlst) {

		con=DBConnection.mycon();
		int i=0;
		Neft nobj=nlst.get(0);
		System.out.println("SQL1");
		try {
			p=con.prepareStatement("insert into neft values (?,?,?,?)");
			p.setInt(1, nobj.getAccNo());
			p.setString(2, nobj.getbName());
			p.setInt(3, nobj.getbAccNo());
			p.setFloat(4, nobj.getTamt());
			System.out.println("SQL2");
			i=p.executeUpdate();
			System.out.println(nobj.getTamt());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("SQL3");

		return i;

	}

	public int neftTransfer(List<Neft> nlst) {
		int i = 0;
		Connection con = DBConnection.mycon();
		Neft obj = nlst.get(0);
		System.out.println("D1");

		try {
			PreparedStatement p1 = con.prepareStatement(
					"UPDATE userData " +
							"SET ACC_BAL = ACC_BAL - ? " +
							"WHERE ACC_NO = ?"
					);

			p1.setFloat(1, obj.getTamt());
			p1.setInt(2, obj.getAccNo());
			i = p1.executeUpdate();
			PreparedStatement p2 = con.prepareStatement(
					"SELECT B_ACC_NO FROM neft WHERE ACC_NO = ?"
					);
			p2.setInt(1, obj.getAccNo());
			ResultSet rs = p2.executeQuery();

			if (rs.next()) {
				int receiverAccNo = rs.getInt("B_ACC_NO");
				PreparedStatement p3 = con.prepareStatement(
						"UPDATE userData " +
								"SET ACC_BAL = ACC_BAL + ? " +
								"WHERE ACC_NO = ?"
						);
				p3.setFloat(1, obj.getTamt());
				p3.setInt(2, receiverAccNo);
				i += p3.executeUpdate();
			} else {
				System.out.println("No matching receiver found in the NEFT table.");
			}

			System.out.println("D2");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("D3");

		return i;
	}

	@Override
	public int updateRecord(List<Recharge> rlst) {
		con=DBConnection.mycon();
		System.out.println("DD1");
		int i=0;
		System.out.println("test0");
		Recharge robj=rlst.get(0);
		System.out.println("DD2");
		try {
			System.out.println("test1");
			p=con.prepareStatement("update userData set acc_bal=acc_bal-? where acc_no=?");

			p.setFloat(1, robj.getAmt());
			p.setLong(2, robj.getAccNo());
			System.out.println("test2");
			i+= p.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("DD3");
		return i;
	}
	
	public boolean validateNeft(Neft nobj) {
		boolean isValid = false;
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		System.out.println("sql1");
		con = DBConnection.mycon();
		try {
			con = DBConnection.mycon();
			System.out.println("sql2");
			String sql = "select * from userData where acc_no=? and acc_bal>=?";
			System.out.println("sql3");
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, nobj.getAccNo());
			stmt.setFloat(2, nobj.getTamt());
			System.out.println("sql4");
			rs = stmt.executeQuery();
			System.out.println("sql5");
			if (rs.next()) {
				ResultSet rs1=null;
				System.out.println("sql6");

				try {
					String sql1 = "select * from userData where u_name=? and acc_no=?";
					System.out.println("sql7");

					stmt=con.prepareStatement(sql1);
					stmt.setString(1, nobj.getbName());
					stmt.setInt(2, nobj.getbAccNo());
					rs1=stmt.executeQuery();
					if(rs1.next()) {
						System.out.println("sql6");
						isValid = true;
						System.out.println("sql7");
						System.out.println("Ans: " + rs.getString(2));
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (stmt != null) stmt.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isValid;
	}
}



