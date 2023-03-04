package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Register;
import Dao.Dao;

import Dao.Dao;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		Dao daobj = new Dao();
		Register robj = new Register();

		HttpSession ses = request.getSession();

		String action = request.getParameter("action");
		if (action.equals("login")) {
			String name = request.getParameter("username");
			String pass = request.getParameter("password");
			String result = daobj.log(name, pass);
			if (result.equals("success")) {
				if (name.equals("Admin")) {
					ArrayList<Register> List = daobj.viewOne(name);
					ses.setAttribute("pass", pass);
					ses.setAttribute("llist", List);
					ses.setAttribute("userlist", List);
					request.getRequestDispatcher("admin_view.jsp").forward(request, response);
				} else {
					ArrayList<Register> List = daobj.viewOne(name);
					ses.setAttribute("pass", pass);
					ses.setAttribute("llist", List);
					ses.setAttribute("userlist", List);
					request.getRequestDispatcher("Cashier_view.jsp").forward(request, response);
				}
			} else {
				request.getRequestDispatcher("Error.jsp").forward(request, response);
			}
		}
		// register e
		if (action.equals("register")) {

			robj.setName(request.getParameter("name"));
			robj.setEmailid(request.getParameter("email"));
			robj.setPhno(request.getParameter("phno"));
			robj.setPassword(request.getParameter("psw"));

			String result = daobj.regUser(robj);

			ArrayList<Register> viewUser = daobj.viewUser();

			if (result.equals("Success")) {
				ses.setAttribute("ulist", viewUser);
				request.getRequestDispatcher("View.jsp").forward(request, response);
			}

		}
		if (action.equals("view")) {

			ArrayList<Register> viewUser = daobj.viewUser();

			ses.setAttribute("ulist", viewUser);
			request.getRequestDispatcher("View.jsp").forward(request, response);
		}

		if (action.equals("update")) {
			String id = request.getParameter("id");
			robj.setId(id);

			ArrayList<Register> ulist = daobj.updateUser(robj);
			ses.setAttribute("ulist", ulist);
			request.getRequestDispatcher("viewup.jsp").forward(request, response);

			// both view and registrations are completed here

		}

		if (action.equals("up")) {

			String name = request.getParameter("name");
			String phno = request.getParameter("phno");
			String email = request.getParameter("email");
			String id = request.getParameter("id");

			robj.setName(name);
			robj.setPhno(phno);
			robj.setEmailid(email);
			robj.setId(id);
			String valid = daobj.upUser(robj);

			if (valid.equals("SUCCESS")) {
				ArrayList<Register> ulist = daobj.viewUser();
				ses.setAttribute("ulist", ulist);
				request.getRequestDispatcher("View.jsp").forward(request, response);
			}
		}

		if (action.equals("delete")) {
			String id = request.getParameter("id");

			robj.setId(id);

			String valid = daobj.deleUser(robj);

			if (valid.equals("SUCCESS")) {
				ArrayList<Register> ulist = daobj.viewUser();
				ses.setAttribute("ulist", ulist);

				request.getRequestDispatcher("View.jsp").forward(request, response);

			}

		}
		if (action.equals("stock")) {

			robj.setItem_Name(request.getParameter("itemname"));
			robj.setQuantity(request.getParameter("qty"));
			robj.setPrice(request.getParameter("price"));
			String result = daobj.addstock(robj);
			ArrayList<Register> view = daobj.viewPdt();

			if (result.equals("success")) {
				ses.setAttribute("ulist1", view);
				request.getRequestDispatcher("Viewstock.jsp").forward(request, response);
			}

		}
		if (action.equals("view1")) {

			ArrayList<Register> view = daobj.viewPdt();

			ses.setAttribute("ulist1", view);
			request.getRequestDispatcher("Viewstock.jsp").forward(request, response);
		}

		if (action.equals("update1")) {

			String pid = request.getParameter("pid");
			robj.setId(pid);

			ArrayList<Register> ulist1 = daobj.update(robj);
			ses.setAttribute("ulist1", ulist1);
			request.getRequestDispatcher("viewupstock.jsp").forward(request, response);

			// both view and registrations are completed here

		}
		if (action.equals("Up1")) {

			String pid = request.getParameter("pid");
			String pname = request.getParameter("itemname");
			String Quantity = request.getParameter("qty");
			String Price = request.getParameter("price");

			robj.setId(pid);
			robj.setItem_Name(pname);
			robj.setQuantity(Quantity);
			robj.setPrice(Price);

			String valid = daobj.up(robj);

			if (valid.equals("success")) {

				ArrayList<Register> ulist1 = daobj.viewPdt();
				;
				ses.setAttribute("ulist1", ulist1);
				request.getRequestDispatcher("Viewstock.jsp").forward(request, response);
			}
		}
		if (action.equals("delete1")) {

			String pid = request.getParameter("pid");
			robj.setId(pid);
			String valid = daobj.delete(robj);
			if (valid.equals("success")) {
				ArrayList<Register> ulist1 = daobj.viewPdt();
				ses.setAttribute("ulist1", ulist1);
				request.getRequestDispatcher("Viewstock.jsp").forward(request, response);
			}
		}
		if (action.equals("billview")) {
			String name = request.getParameter("username");
			ArrayList<Register> uList = daobj.viewPdt();
			String billno1 = daobj.ViewAllBillno();
			ArrayList<Register> List = daobj.viewOne(name);
			ses.setAttribute("list1", uList);// Product Details
			ses.setAttribute("billno", billno1);// Maximum bill number
			ses.setAttribute("list2", List);// Cashier details
			request.getRequestDispatcher("Invoice.jsp").forward(request, response);
		}

		if (action.equals("productview")) {
			String name = request.getParameter("username");
			ArrayList<Register> plist = daobj.viewPdt();
			ArrayList<Register> clist = daobj.viewOne(name);
			ses.setAttribute("plist", plist);// Product Details
			ses.setAttribute("clist", clist);// Cashier details
			request.getRequestDispatcher("Product.jsp").forward(request, response);
		}

		if (action.equals("createbill")) {
			String size = (request.getParameter("ulistsize"));
			int size1 = Integer.parseInt(size);
			robj.setBillsize(size);
			String BILLNUMBERTEMP = request.getParameter("bbillno");
			robj.setBbillno(request.getParameter("bbillno"));
			ArrayList<Register> bill = new ArrayList<Register>();
			for (int i = 1; i <= size1; i++) {
				robj.setBcashname(request.getParameter("bcashname"));
				robj.setBcustname(request.getParameter("bcustname"));
				robj.setBphno(request.getParameter("bphno"));
				robj.setBdate(request.getParameter("bdate"));
				robj.setBbillno(request.getParameter("bbillno"));
				robj.setBitemname(request.getParameter("itemname" + i));
				robj.setBqty(request.getParameter("qty" + i));
				robj.setBprice(request.getParameter("price" + i));
				robj.setBpqty(request.getParameter("pqty" + i));

				String pqty = (request.getParameter("pqty" + i));
				String qty = (request.getParameter("qty" + i));
				String price = (request.getParameter("price" + i));
				int qty1 = Integer.parseInt(qty);
				int pqty1 = Integer.parseInt(pqty);
				int price1 = Integer.parseInt(price);
				int total = pqty1 * price1;
				String tprice = Integer.toString(total);
				robj.setBTprice(tprice);
				bill.add(robj);
				String pid = (request.getParameter("pid" + i));
				String qtydifference = Integer.toString(qty1 - pqty1);
				daobj.QuantityDifference(pid, qtydifference);
				String result = daobj.billcreate(robj);
				ses.setAttribute("result", result);
			}
			String result1 = (String) ses.getAttribute("result");
			ArrayList<Register> billlist = daobj.ViewAllBill(BILLNUMBERTEMP);
			if (result1.equals("billcreatesuccess")) {
				ArrayList<Register> Totalprice = daobj.TotalPrice(BILLNUMBERTEMP);
				String name = request.getParameter("cashname");
				ArrayList<Register> clist = daobj.viewOne(name);
				ses.setAttribute("clist", clist);
				ses.setAttribute("totalprice", Totalprice);
				ses.setAttribute("billdetails", billlist);
				request.getRequestDispatcher("Lastbill.jsp").forward(request, response);
			}
		}
		if (action.equals("billsearch")) {
			robj.setBillsearch(request.getParameter("billno"));
			String search = request.getParameter("billno");
			ArrayList<Register> billlist = daobj.SearchBill(search);
			ArrayList<Register> Totalprice = daobj.TotalPrice(search);
			ses.setAttribute("totalprice", Totalprice);
			ses.setAttribute("billdetails", billlist);
			request.getRequestDispatcher("Billview.jsp").forward(request, response);
		}
		if (action.equals("Billinfo")) {
			String name = request.getParameter("username");
			ArrayList<Register> List = daobj.viewOne(name);
			ses.setAttribute("userlist", List);// Cashier details
			request.getRequestDispatcher("Billinfo.jsp").forward(request, response);
		}
		if (action.equals("back")) {
			String name = request.getParameter("username");
			ArrayList<Register> List = daobj.viewOne(name);
			ses.setAttribute("userlist", List);
			request.getRequestDispatcher("Cashier_view.jsp").forward(request, response);

		}
		if (action.equals("adminBillinfo")) {
			String name = request.getParameter("username");
			ArrayList<Register> List = daobj.viewOne(name);
			ses.setAttribute("userlist", List);// Cashier details
			String search = request.getParameter("billno");
			ArrayList<Register> billlist = daobj.SearchBill(search);
			ArrayList<Register> Totalprice = daobj.TotalPrice(search);
			ses.setAttribute("totalprice", Totalprice);
			ses.setAttribute("billdetails", billlist);
			request.getRequestDispatcher("AdminBillinfo.jsp").forward(request, response);
		}

	}
}