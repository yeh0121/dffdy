<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>


<%
		if(session.getAttribute("id")==null){
			out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
		}
		else{
		 
	            String id = (String) session.getAttribute("id");
				
	 			Class.forName("com.mysql.jdbc.Driver");

				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE final";
				con.createStatement().execute(sql);  
	
			    String pwd = new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"UTF-8");
				String name = new String(request.getParameter("name"));
				String mail = new String(request.getParameter("mail").getBytes("ISO-8859-1"),"UTF-8");

			    String sql1 = "UPDATE `members`  SET `name` = '"+name+"' , `pwd` = '"+pwd+"' , `mail` = '"+mail+"' where `id`='"+session.getAttribute("id")+"'" ;
			    //con.createStatement().execute(sql);
				int no=con.createStatement().executeUpdate(sql1);
				if (no>0)
				{
         //Step 5: 顯示結果          
         			out.print("<script>alert('更改成功'); window.location='member.jsp' </script>");
         		}
				
			    
				con.close();
				//response.sendRedirect("member.jsp");
		}		
%>
	
