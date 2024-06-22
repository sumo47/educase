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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author KAMALA KANNAN MOHAN
 */
public class nregular extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession hs=request.getSession();
            String re=request.getParameter("regno");
            String sc=request.getParameter("school");
            String gr=request.getParameter("grou");
            String ve=request.getParameter("vel");
            String bo=request.getParameter("bos");
            String me=request.getParameter("mediu");
            String go=request.getParameter("gro");
            String exp=request.getParameter("expected");  
            String the = (String)hs.getAttribute("fname");
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                PreparedStatement stmt=con.prepareStatement("update vel set regno=?,school=?,grou=?,vel=?,bos=?,mediu=?,gro=?,expected=? where fname='"+the+"'");
                stmt.setString(1,re);
                stmt.setString(2,sc);
                stmt.setString(3,gr);
                stmt.setString(4,ve);
                stmt.setString(5,bo);
                stmt.setString(6,me);
                stmt.setString(7,go);
                stmt.setString(8,exp);
                int i=stmt.executeUpdate();
                if(i!=0)
                {
                   JOptionPane.showMessageDialog(null,"Data Inserted Successfully" );
                   RequestDispatcher rd=request.getRequestDispatcher("rand.jsp");
                   rd.forward(request, response);
                  
                }
                else
                {
                    JOptionPane.showMessageDialog(null,"failed" );
                    RequestDispatcher rd=request.getRequestDispatcher("index.html");
                    rd.forward(request, response);
                   
                }
            }
        
        catch(Exception ec)
        {
            System.out.println(ec);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
