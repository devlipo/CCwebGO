<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加结果</title>
</head>
<body>
	
	<jsp:useBean id="animals" class="animals.Animals"></jsp:useBean>
	<jsp:setProperty property="*" name="animals"/>
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/animals";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 添加图书信息的SQL语句
			String sql = "insert into animals(name,sex,price,species) values(?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setString(1, animals.getName());
			System.out.println("name："+animals.getName());
			// 对SQL语句中的第2个参数赋值
			ps.setString(2, animals.getSex());
			// 对SQL语句中的第3个参数赋值
			ps.setDouble(3,animals.getPrice());
			// 对SQL语句中的第4个参数赋值
			ps.setString(4, animals.getSpecies());
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息 “成功添加了 " + row + "条数据！”
			out.print("<script language='javascript'>alert('the count 1');</script>");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("<script language='javascript'>alert(‘添加失败’)</script>");
			e.printStackTrace();
		}
	%>
</body>
</html>