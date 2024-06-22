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
public class password extends HttpServlet {

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
        throws ServletException,IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession h=request.getSession();
        String e=(String) h.getAttribute("email");
        try (PrintWriter out = response.getWriter()) {
            String pa=request.getParameter("password");
            String cpa=request.getParameter("cpassword");
            if(pa.equals(cpa))
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                PreparedStatement stmt=(PreparedStatement) con.prepareStatement("update vel set password=?,cpassword=? where email=?");
                stmt.setString(1, pa);
                stmt.setString(2, cpa);
                stmt.setString(3, e);
                int i=0;
                i=stmt.executeUpdate();
                if(i!=0)
                {
                    JOptionPane.showMessageDialog(null,"Success");
                    RequestDispatcher f=request.getRequestDispatcher("login.jsp");
                    f.forward(request,response);
                }
                else
                {
                    JOptionPane.showMessageDialog(null,"Failed");
                    RequestDispatcher f=request.getRequestDispatcher("forget.jsp");
                    f.forward(request,response);
                }
            }
        }
        catch(Exception ex)
        {
            System.out.print(ex);
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

 private int executeUpdate() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
