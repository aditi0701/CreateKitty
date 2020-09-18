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
import java.sql.Statement;

/**
 *
 * @author ADITI
 */
@WebServlet(urlPatterns = {"/kitty"})
public class kitty extends HttpServlet {

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
            
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("sessionUsername");
            String event_name = request.getParameter("event_name");
            String currency = request.getParameter("currency");
            String you = request.getParameter("you");
           // String rowCount = request.getParameter("rowCount");
            
            System.out.println(username);
            System.out.println(event_name);
            System.out.println(currency);
            System.out.println(you);
            //System.out.println(rowCount);
            
            String SQLURL= "jdbc:mysql://localhost:3306/dsc?autoReconnect=true&useSSL=false";
            String SQLUserName = "root";
            String SQLPassword = "1234";
            Statement stmt;
            
            try{
             
                if(username!=null){
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection(SQLURL,SQLUserName,SQLPassword);
                    String query = null;
                    stmt = conn.createStatement();
                    stmt.executeUpdate(query);
                    response.sendRedirect("expenses.jsp");          
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

    