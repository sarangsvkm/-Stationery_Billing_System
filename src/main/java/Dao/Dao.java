package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.Register;

public class Dao {
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	DataBaseConnector dobj = new DataBaseConnector();
	String query = null;

	// Login

	public String log(String name, String pass) {

		try {
			query = "select * from register where Name='" + name + "' && Password='" + pass + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	// registor
	public String regUser(Register robj) {

		try {
			query = "insert into register(Name,Phno,Email,Password) values(?,?,?,?)";
			con = dobj.Dbconnect();
			System.out.println("1");
			ps = con.prepareStatement(query);
			System.out.println("11");
			ps.setString(1, robj.getName());
			ps.setString(2, robj.getPhno());
			ps.setString(3, robj.getEmailid());
			ps.setString(4, robj.getPassword());
			System.out.println("12");
			int i = ps.executeUpdate();
			System.out.println("12");
			if (i != 0) {
				return "Success";
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewUser() {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from register";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setId(rs.getString(1));
				robj.setName(rs.getString(2));
				robj.setPhno(rs.getString(3));
				robj.setEmailid(rs.getString(4));
				viewL.add(robj);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}

	public ArrayList<Register> updateUser(Register robj) {
		ArrayList<Register> list = new ArrayList<Register>();

		try {
			query = "select * from register where id='" + robj.getId() + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			System.out.println("Hai");

			while (rs.next()) {
				robj.setName(rs.getString(2));
				robj.setPhno(rs.getString(3));
				robj.setEmailid(rs.getString(4));
				list.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public String upUser(Register robj) {
		String query = "update register set Name=?,Phno=?,Email=? where id='" + robj.getId() + "'";

		try {
			System.out.println("Hai dao");
			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getName());
			ps.setString(2, robj.getPhno());
			ps.setString(3, robj.getEmailid());
			int i = ps.executeUpdate();

			if (i != 0) {
				return "SUCCESS";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return " ";
	}
	// to delete

	public String deleUser(Register robj) {
		String query = "delete from register where id='" + robj.getId() + "'";
		try {

			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);

			int i = ps.executeUpdate();

			if (i != 0) {
				return "SUCCESS";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public String addstock(Register robj) {

		try {

			query = "insert into stock(Item_Name,Quantity,Price) values(?,?,?)";
			con = dobj.Dbconnect();
			// System.out.println("1");
			ps = con.prepareStatement(query);
			// System.out.println("11");

			ps.setString(1, robj.getItem_Name());
			ps.setString(2, robj.getQuantity());
			ps.setString(3, robj.getPrice());

			// System.out.println("12");
			int i = ps.executeUpdate();
			// System.out.println("12");
			if (i != 0) {
				return "success";
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewPdt() {
		ArrayList<Register> viewL1 = new ArrayList<Register>();
		try {

			query = "select * from stock";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setId(rs.getString(1));
				robj.setItem_Name(rs.getString(2));
				robj.setQuantity(rs.getString(3));
				robj.setPrice(rs.getString(4));
				viewL1.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL1;
	}

	public ArrayList<Register> update(Register robj) {
		ArrayList<Register> list1 = new ArrayList<Register>();

		try {
			query = "select * from stock where pid='" + robj.getId() + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);

			while (rs.next()) {

				robj.setId(rs.getString(1));
				robj.setItem_Name(rs.getString(2));
				robj.setQuantity(rs.getString(3));
				robj.setPrice(rs.getString(4));
				list1.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list1;
	}

	public String up(Register robj) {

		String query = "update stock set Item_Name=?,Quantity=?,Price=? where pid='" + robj.getId() + "'";

		try {

			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);

			// ps.setString(1,robj1.getPid());
			ps.setString(1, robj.getItem_Name());
			ps.setString(2, robj.getQuantity());
			ps.setString(3, robj.getPrice());

			int i = ps.executeUpdate();

			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return " ";
	}
	// to delete

	public String delete(Register robj) {
		String query = "delete from stock where pid='" + robj.getId() + "'";
		try {

			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);

			int i = ps.executeUpdate();

			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewOne(String name) {
		ArrayList<Register> list = new ArrayList<Register>();
		Register robj = new Register();
		try {
			query = "select * from register where Name='" + name + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				robj.setName(rs.getString(2));
				robj.setPhno(rs.getString(3));
				robj.setEmailid(rs.getString(4));
				list.add(robj);
				return list;
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public String billcreate(Register robj) {
		try {
			query = "insert into bill(Cashiername,CustomerName,CustPhno,Date,Billno,Itemname,Price,PurchaseQuantity,Totalprice) values(?,?,?,?,?,?,?,?,?)";// query
			con = dobj.Dbconnect(); // db connector
			ps = con.prepareStatement(query); // query execution
			ps.setString(1, robj.getBcashname());
			ps.setString(2, robj.getBcustname());
			ps.setString(3, robj.getBphno());
			ps.setString(4, robj.getBdate());
			ps.setString(5, robj.getBbillno());
			ps.setString(6, robj.getBitemname());
			ps.setString(7, robj.getBprice());
			ps.setString(8, robj.getBpqty());
			ps.setString(9, robj.getBTprice());

			int i = ps.executeUpdate();
			if (i != 0) {
				return "billcreatesuccess";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> ViewAllBill(String BILLNUMBERTEMP) {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from bill where Billno='" + BILLNUMBERTEMP + "' && PurchaseQuantity>0";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBcashname(rs.getString(1));
				robj.setBcustname(rs.getString(2));
				robj.setBphno(rs.getString(3));
				robj.setBdate(rs.getString(4));
				robj.setBbillno(rs.getString(5));
				robj.setBitemname(rs.getString(6));
				robj.setBprice(rs.getString(7));
				robj.setBpqty(rs.getString(8));
				robj.setBTprice(rs.getString(9));
				viewL.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}

	public String ViewAllBillno() {
		try {
			query = "select Max(Billno) from bill";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "1000";
	}

	public ArrayList<Register> TotalPrice(String BILLNUMBERTEMP) {
		ArrayList<Register> Tprice = new ArrayList<Register>();
		try {

			query = "select Sum(Totalprice) from bill where Billno='" + BILLNUMBERTEMP + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBfinaltotal(rs.getString(1));
				Tprice.add(robj);
				System.out.println(Tprice);
				return Tprice;
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return Tprice;
	}

	public String QuantityDifference(String Pid, String qtydifference) {
		try {

			query = "update stock set Quantity='" + qtydifference + "' where Pid ='" + Pid + "'";
			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);
			int i = ps.executeUpdate();
			if (i != 0) {
				return "";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> SearchBill(String BILLNUMBERTEMP) {
		ArrayList<Register> viewBills1 = new ArrayList<Register>();
		try {

			query = "select * from bill where Billno='" + BILLNUMBERTEMP + "' && PurchaseQuantity>0";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBcashname(rs.getString(1));
				robj.setBcustname(rs.getString(2));
				robj.setBphno(rs.getString(3));
				robj.setBdate(rs.getString(4));
				robj.setBbillno(rs.getString(5));
				robj.setBitemname(rs.getString(6));
				robj.setBprice(rs.getString(7));
				robj.setBpqty(rs.getString(8));
				robj.setBTprice(rs.getString(9));
				viewBills1.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewBills1;
	}

}
