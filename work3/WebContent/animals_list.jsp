<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="animals.Animals"%> 
<html> 		
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>宠物中心</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">
</script>
</head>

<body>
<div class="nav-top">
	<span><a href=index.html>“江南皮革厂”</a></span>
    <div class="nav-topright">
        <span>您好：管理员</span>
        <span><a href=login.jsp>注销</a></span>
    </div>
</div>
<div class="nav-down">
	<div class="leftmenu1">
        <div class="menu-oc"><img src="images/menu-all.png" /></div>
    	<ul>
        	<li>
            	<a class="a_list a_list1">公司管理</a>
                <div class="menu_list menu_list_first">
                	<a class="lista_first" href="index.html">公司首页</a>
                    <a href="#">各部门</a>
                    <a href="#">资金链</a>
                    <a href="#">董事会</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list2">个人管理</a>
                <div class="menu_list">
                	<a href="#">公司通知</a>
                    <a href="#">业绩情况</a>
                    <a href="#">工资明细</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">宠物管理</a>
                <div class="menu_list">
                	<a href="FindServlet">宠物中心</a>
                    <a href="Add.jsp">添加宠物</a>
                </div>
            </li>
        </ul>
    </div>
    <div class="leftmenu2">
    	<div class="menu-oc1"><img src="images/menu-all.png" /></div>
        <ul>
        	<li>
            	<a class="j_a_list j_a_list1"></a>
                <div class="j_menu_list j_menu_list_first">
                	<span class="sp1"><i></i>公司管理</span>
                	<a class="j_lista_first" href="#">公司首页</a>
                    <a href="#">各部门</a>
                    <a href="#">资金链</a>
                    <a href="#">董事会</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list2"></a>
                <div class="j_menu_list">
                	<span class="sp2"><i></i>个人管理</span>
                	<a href="#">公司通知</a>
                    <a href="#">业绩情况</a>
                    <a href="#">工资明细</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list3"></a>
                <div class="j_menu_list">
                	<span class="sp3"><i></i>宠物管理</span>
                	<a href="FindServlet">宠物中心</a>
                    <a href="Add.jsp">添加宠物</a>
                </div>
            </li>
        </ul>
        
    </div>
    <div class="rightcon">
    	<div class="right_con">
	<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="6">
				<h2>所有宝宝信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>ID</b></td>
			<td><b>名字</b></td>
			<td><b>公母</b></td>
			<td><b>价格</b></td>
			<td><b>种类</b></td>
			<td><b>操作</b></td>
		</tr>
			<%
				// 获取图书信息集合
					List<Animals> list = (List<Animals>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(Animals animals : list){
			%>
				<tr align="center" bgcolor="white">
					<td><%=animals.getId()%></td>
					<td><%=animals.getName()%></td>
					<td><%=animals.getSex()%></td>
					<td><%=animals.getPrice()%></td>
					<td><%=animals.getSpecies()%></td>
					<td><a href="UpdateId?id=<%=animals.getId()%>">修改</a>
					<a href="DeleteServlet?id=<%=animals.getId() %>">删除</a></td>
				</tr>
			<%
					}
				}
			%>
				<tr>
		<td align="center" colspan="6" bgcolor="white">
			<%=request.getAttribute("bar")%>
		</td>
	</tr>
	</table>
	</div>
 </div>
</div>
	
</body>
</html>