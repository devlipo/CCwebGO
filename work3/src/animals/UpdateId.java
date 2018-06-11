package animals;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateId extends HttpServlet{

    public void service(HttpServletRequest request,HttpServletResponse response)throws
    ServletException,IOException{

        response.setContentType("text/html;charset=utf-8");
        int id = Integer.parseInt(request.getParameter("id"));

        PrintWriter out = response.getWriter();



        //读取要修改的员工的id
        java.sql.Connection conn = null;
        java.sql.PreparedStatement prep = null;
        ResultSet rst = null;

        try {
            //加载驱动

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animals", "root", "123456");

                prep =conn.prepareStatement("select * from animals where id=?");
                prep.setInt(1, id);

                rst = prep.executeQuery();

                //依据查询到的员工信息生成一个修改页面

                if(rst.next()){
                    String name = rst.getString("name");
                    double price = rst.getDouble("price");
                    String species = rst.getString("species");
                    out.println("<form action='UpdateServlet'method='post' onsubmit='return check(this);'>");
                    out.println("ID:"+id+"<br>");
                    out.println("昵称："+"<input name='name' value="+name+">");
                    out.println("价格："+"<input name='price' value="+price+">");
                    out.println("种类："+"<input name='species' value="+species+">");
                    //把id参数也给传过去，所以做了一个隐藏的name=id的，只有有写name的才会表单提交
                    out.println("<input type='hidden' name='id' value='"+id+"'>");
                    out.println("<input type='submit' value='ok'>");
                    out.println("<form>");
                }




                //


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                /*
                 * 1、记日志
                 */
                e.printStackTrace();
                /*
                 * 1、看异常是否能够恢复，如果能够恢复则立即恢复，如果不能够恢复
                 * （比如，数据库服务暂停，网络中断等，这样的异常一般称之为系统异常）
                 * 则提示用户稍后重试
                 */
                out.println("稍后重试");
                e.printStackTrace();
            }

         catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }finally{
            if(conn!=null){

            }
                try {


                    conn.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    out.println("出现错误");

                }

        }//finally




    }
}