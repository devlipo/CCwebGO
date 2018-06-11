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



        //��ȡҪ�޸ĵ�Ա����id
        java.sql.Connection conn = null;
        java.sql.PreparedStatement prep = null;
        ResultSet rst = null;

        try {
            //��������

                Class.forName("com.mysql.jdbc.Driver");

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animals", "root", "123456");

                prep =conn.prepareStatement("select * from animals where id=?");
                prep.setInt(1, id);

                rst = prep.executeQuery();

                //���ݲ�ѯ����Ա����Ϣ����һ���޸�ҳ��

                if(rst.next()){
                    String name = rst.getString("name");
                    double price = rst.getDouble("price");
                    String species = rst.getString("species");
                    out.println("<form action='UpdateServlet'method='post' onsubmit='return check(this);'>");
                    out.println("ID:"+id+"<br>");
                    out.println("�ǳƣ�"+"<input name='name' value="+name+">");
                    out.println("�۸�"+"<input name='price' value="+price+">");
                    out.println("���ࣺ"+"<input name='species' value="+species+">");
                    //��id����Ҳ������ȥ����������һ�����ص�name=id�ģ�ֻ����дname�ĲŻ���ύ
                    out.println("<input type='hidden' name='id' value='"+id+"'>");
                    out.println("<input type='submit' value='ok'>");
                    out.println("<form>");
                }




                //


            } catch (SQLException e) {
                // TODO Auto-generated catch block
                /*
                 * 1������־
                 */
                e.printStackTrace();
                /*
                 * 1�����쳣�Ƿ��ܹ��ָ�������ܹ��ָ��������ָ���������ܹ��ָ�
                 * �����磬���ݿ������ͣ�������жϵȣ��������쳣һ���֮Ϊϵͳ�쳣��
                 * ����ʾ�û��Ժ�����
                 */
                out.println("�Ժ�����");
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
                    out.println("���ִ���");

                }

        }//finally




    }
}