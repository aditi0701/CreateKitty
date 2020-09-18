/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author ADITI
 */
@WebServlet(urlPatterns = {"/signup_dsc"})
public class signup_dsc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String Username = request.getParameter("username_signup");
            String Fname = request.getParameter("fname_signup");
            String Lname = request.getParameter("lname_signup");
            String Email = request.getParameter("email_signup");
            String password = request.getParameter("password_signup");
            
            System.out.println("here " +Username);
            System.out.println(Fname);
            System.out.println(Lname);
            System.out.println(Email);
            System.out.println(password);
            
            String SQLURL= "jdbc:mysql://localhost:3306/dsc?autoReconnect=true&useSSL=false";
            String SQLUserName = "root";
            String SQLPassword = "1234";
         
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection(SQLURL,SQLUserName,SQLPassword);
                PreparedStatement st = conn.prepareStatement(" insert into signup(username,fname,lname,email,password)VAlUES(?,?,?,?,MD5(?));");
               
                st.setString(1,Username);
                st.setString(2,Fname);
                st.setString(3,Lname);
                st.setString(4,Email);
                st.setString(5,password);
                
                
                st.executeUpdate();
                st.close(); 
                conn.close(); 
                response.sendRedirect("login.jsp");
                     
            }     
            catch(Exception e)
            {
                System.out.println(e);
                System.out.println("error in DB");
                response.sendRedirect("error.jsp");
            }
            
          
            
        }
    }

    
}
