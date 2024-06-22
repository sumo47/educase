/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KAMALA KANNAN MOHAN
 */
public class mark extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
            HttpSession hss=request.getSession();
            String email = (String)hss.getAttribute("email");
            String a=request.getParameter("myf");
         
            if("state".equals(a)){
                String b=request.getParameter("m1");
                String c=request.getParameter("p1");
                String d=request.getParameter("c1");
                String z1=request.getParameter("scutoff");
                  try{
                         Class.forName("com.mysql.jdbc.Driver");
             Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                         PreparedStatement stt=(PreparedStatement) con.prepareStatement("update vel set smat=?,sphy=?,sche=?,scutoff=? where email='"+email+"'");
                         stt.setString(1,b);
                         stt.setString(2,c);
                         stt.setString(3,d);
                         stt.setString(4,z1);
                         int i=1;
                         i=stt.executeUpdate();
                         if(i!=0){
                             i++;
                              RequestDispatcher r=request.getRequestDispatcher("middle.jsp");
                             r.forward(request,response);
                         }
                         
                          
            
                  }
                  catch(Exception e){
                      System.out.println(e);
                  }
                  
              }
              else if("andhra".equals(a)){
                 String b=request.getParameter("m1");
                String c=request.getParameter("mb1");
                String d=request.getParameter("p1");
                String f=request.getParameter("pp1");
                String g=request.getParameter("c1");
                String h=request.getParameter("pc1");
                String z2=request.getParameter("scutoff");
                  
                  try{
                         Class.forName("com.mysql.jdbc.Driver");
             Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                         PreparedStatement stt=(PreparedStatement) con.prepareStatement("update vel set amata=?,amatb=?,aphy=?,apphy=?,ache=?,apche=?,scutoff=? where email='"+email+"'");
                         stt.setString(1,b);
                         stt.setString(2,c);
                         stt.setString(3,d);
                         stt.setString(4,f);
                         stt.setString(5,g);
                         stt.setString(6,h);
                         stt.setString(7,z2);
                         int i=1;
                         i=stt.executeUpdate();
                         if(i!=0){
                           RequestDispatcher r=request.getRequestDispatcher("middle.jsp");
                             r.forward(request,response);
                         }
                  }
                  catch(Exception e){
                      System.out.println(e);
                  }
            }
            else if("cbse".equals(a)){
                String ab=request.getParameter("m1");
                String bc=request.getParameter("c1");
                String cd=request.getParameter("p1");
                String z3=request.getParameter("scutoff");
                try{
                         Class.forName("com.mysql.jdbc.Driver");
             Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                         PreparedStatement stt=(PreparedStatement) con.prepareStatement("update vel set cmat=?,cphy=?,cche=?,scutoff=? where email='"+email+"'");
                         stt.setString(1,ab);
                         stt.setString(2,bc);
                         stt.setString(3,cd);
                         stt.setString(4,z3);
                         int i=1;
                         i=stt.executeUpdate();
                         if(i!=0){
                           RequestDispatcher r=request.getRequestDispatcher("middle.jsp");
                             r.forward(request,response);
                         }
                  }
                  catch(Exception e){
                      System.out.println(e);
                  }
        }
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(mark.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(mark.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(mark.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(mark.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
