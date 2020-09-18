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
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ADITI
 */
@WebServlet(urlPatterns = {"/login_dsc"})
public class login_dsc extends HttpServlet {

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
            String username = request.getParameter("username_login");
            String password =request.getParameter("password_login");
            System.out.println(username);
            System.out.println(password);
           
            String SQLURL= "jdbc:mysql://localhost:3306/dsc?autoReconnect=true&useSSL=false";
            String SQLUserName = "root";
            String SQLPassword = "1234";
            
            try{
             
                if(username!=null){
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection(SQLURL,SQLUserName,SQLPassword);
                    String Query = "SELECT * FROM signup WHERE username=? and password=MD5(?)";
                    PreparedStatement psm = conn.prepareStatement(Query);
                    psm.setString(1, username);
                    psm.setString(2, password);
                    ResultSet rs = psm.executeQuery();

                    if(rs.next()){
                         HttpSession session = request.getSession();
                         session.setAttribute("sessionUsername",username);
                         response.sendRedirect("new_kitty.jsp");
                    }
                    
                    else{
                        out.println("error in DB");
                        response.sendRedirect("error.jsp"); 
                    }
                               
                }
            }
            catch(Exception e){
               out.println("error in DB");
                System.out.println(e);
                response.sendRedirect("error.jsp"); 
            
            }
             
            
        }
    }

    
}
