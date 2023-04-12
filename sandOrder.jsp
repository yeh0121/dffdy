<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.time.LocalDateTime,java.time.format.DateTimeFormatter"%>
<%@ include file="setSql.jsp"%>


<%	

	String Name = request.getParameter("Name");
	String Phone = request.getParameter("Phone");
	String Addr = request.getParameter("Address");
	String Email= request.getParameter("Email");
	String PayWay= request.getParameter("PayWay");
	String PickWay= request.getParameter("PickWay");
	String Note= request.getParameter("Note");
	Timestamp time=new Timestamp(System.currentTimeMillis());  
	
	
	
	if(Name==null || Phone==null || Addr==null ||Email==null ||PayWay=="*請選擇*" ||PickWay=="*請選擇*" ){
		out.print("<script>alert('請確實填寫送貨及付款資料！'); window.location='car-basic-data.jsp'</script>");
		
	}
	else{
		String ID=(String)session.getAttribute("ID");
		String CartAmount=(String)session.getAttribute("CartAmount");
		String O_No1="";
		String O_No="";
		sql = "SELECT * FROM `cart` WHERE `Mem_id`='" + ID+ "'"  ;       //列出該會員的購物車清單
		ResultSet rs =con.createStatement().executeQuery(sql);
		
		DateTimeFormatter Dformat = DateTimeFormatter.ofPattern("yyyyMMdd");
		String today=Dformat.format(LocalDateTime.now());
		
		sql ="SELECT * FROM `order1` order by `Date` desc ,`O_No`  desc limit 1";      //找出上一筆訂單，找單號
		ResultSet lastNo=con.createStatement().executeQuery(sql);
		lastNo.next();
		
		O_No1=lastNo.getString(1);
		if (O_No1.substring(1,9).equals(today)){
			long newNo= Long.parseLong(O_No1.substring(1,12))+1;
			O_No+="N"+Long.toString(newNo);
		}
		else{
			O_No+="N"+today+"001";
		}
		
		out.println(O_No1.substring(1,9));
		out.println(today);
		out.println(O_No1.substring(1,12));
		out.println(O_No);
		while(rs.next()){
			sql = "UPDATE cart SET O_No='"+O_No+"' WHERE `Mem_id`='"+ID+"' AND O_No is null ";
			con.createStatement().execute(sql);
			
			sql = "SELECT * FROM `commodity` WHERE `ID`='" + rs.getString(2)+ "'"  ;    
			ResultSet rsP =con.createStatement().executeQuery(sql);
			rsP.next();
			
			int Sold=Integer.parseInt(rsP.getString(5))+Integer.parseInt(rs.getString(3));
			int Inventory=Integer.parseInt(rsP.getString(6))-Integer.parseInt(rs.getString(3));
			
			sql ="UPDATE commodity SET  Sold='"+Sold+"', Inventory='"+Inventory+"' WHERE `ID`='" + rs.getString(2)+ "'";
			con.createStatement().execute(sql);
			
			
		}

		sql = "INSERT INTO order1 (O_No, Mem_id, Date, PayWay, PickWay, Note, Amount)";
		sql+=" VALUES ('"+O_No+"', '"+ID+"', '"+time.toString()+"','"+PayWay+"','"+PickWay+"','"+Note+"','"+CartAmount+"')" ;
		con.createStatement().execute(sql);
		con.close();
		
		out.print("<script>window.location='order-completed.jsp'</script>");
	}
%>
	
