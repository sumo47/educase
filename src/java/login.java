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
import java.sql.ResultSet;
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
public class login extends HttpServlet {

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
        HttpSession hss;
        hss=request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String f=request.getParameter("email");
            String p=request.getParameter("password");
            hss.setAttribute("email",f);
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
            PreparedStatement stmt=(PreparedStatement)con.prepareStatement("select * from vel where email=? and password=?");
            stmt.setString(1,f);
            stmt.setString(2,p);
            String bb=" ";
            int i=0;
            ResultSet rs=stmt.executeQuery();
            while(rs.next())
            {
                bb=rs.getString("bos");
                i++;
            }
            if(i!=0)
            {
                hss.setAttribute("ssss",bb);
                JOptionPane.showMessageDialog(null,"Sucess"); 
                RequestDispatcher r=request.getRequestDispatcher("mark.jsp");
                r.forward(request, response);
            }
            else
            {
                JOptionPane.showMessageDialog(null,"Failed");
                RequestDispatcher r=request.getRequestDispatcher("login.jsp");
                r.forward(request, response);
            }
        }
    
        catch(Exception e)
        {
            System.out.println(e);
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
