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
public class late extends HttpServlet {

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
            String lo=request.getParameter("diploma");
            String ma=request.getParameter("mark");
            //String bd=request.getParameter("bosd");
            String pr=request.getParameter("pregno");
            String co=request.getParameter("college");
            String de=request.getParameter("dept");
            String dj=request.getParameter("doj");
            String we=request.getParameter("med");
            //String to=request.getParameter("toeq");
            String th = (String)hs.getAttribute("fname");
            String bo="1";
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                PreparedStatement stmt=con.prepareStatement("UPDATE vel SET diploma=?,mark=?,pregno=?,college=?,dept=?,doj=?,med=?,bos=? WHERE fname='"+th+"'");
                stmt.setString(1,lo);
                stmt.setString(2,ma);
                //stmt.setString(3,bd);
                stmt.setString(3,pr);
                stmt.setString(4,co);
                stmt.setString(5,de);
                stmt.setString(6,dj);
                stmt.setString(7,we);
                stmt.setString(8,bo);
                int i=stmt.executeUpdate();
                if(i!=0)
                {
                   JOptionPane.showMessageDialog(null,"Data Inserted Successfully" );
                   RequestDispatcher z=request.getRequestDispatcher("rand.jsp");
                   z.forward(request, response);
                }
                else
                {
                    JOptionPane.showMessageDialog(null,"failed" );
                    RequestDispatcher z=request.getRequestDispatcher("index.html");
                    z.forward(request, response);
                }
            }
        catch(Exception zx)
        {
            System.out.println(zx);
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
