package main;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;
import javax.servlet.*;

public class MyContextListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent event){
		// TODO Auto-generated method stub
		
		
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		ServletContext sc = event.getServletContext();
		String driver = sc.getInitParameter("driver");
		String url = sc.getInitParameter("jdbc:mysql://localhost:3306/animals");
		String user = sc.getInitParameter("root");
		String pass = sc.getInitParameter("123456");
		try{
			Class.forName(driver);//加载驱动类程序
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animals","root","123456");
			sc.setAttribute("conn", conn);
			System.out.println("Connect Succeed!");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
