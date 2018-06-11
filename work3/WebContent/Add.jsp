<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html> 		
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>添加宠物</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">
	function check(form){
		with(form){
			if(name.value == ""){
				alert("名称不能为空");
				return false;
			}
			if(sex.value == ""){
				alert("公母不能为空");
				return false;
			}
			if(price.value == ""){
				alert("价格不能为空");
				return false;
			}
			if(species.value == ""){
				alert("种类不能为空");
				return false;
			}
			return true;
		}
	}
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
                	<a class="lista_first" href="#">公司首页</a>
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
            	<form action="Add_animals.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="450">
			<tr>
				<td align="center" colspan="2">
					<h2>添加宠物信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">宠物名字：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">公&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp母：</td>
				<td><input type="text" name="sex" /></td>
			</tr>
			<tr>
				<td align="right">价&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp格：</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td align="right">种&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp类：</td>
				<td><input type="text" name="species" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
				</td>
			</tr>
		</table>
	</form>
        </div>
    </div>
</div>

</body>
</html>