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
public class forget extends HttpServlet {

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
        String e=request.getParameter("email");
          HttpSession h=request.getSession();
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
            PreparedStatement stmt=(PreparedStatement)con.prepareStatement("select * from vel where email=?");
            stmt.setString(1, e);
            ResultSet r=stmt.executeQuery();
            int j=0;
            while(r.next())
            {
                j++;
            }
            if(j!=0)
            {
                int k=MailSending.send("velammalitechnology@gmail.com","velammal@123",e,"otp");
                String c=String.valueOf(k);
                h.setAttribute("email",e);
                h.setAttribute("otp",c);
                JOptionPane.showMessageDialog(null,"Success");
                RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
                rd.forward(request,response);
            }
            else
            {
                    JOptionPane.showMessageDialog(null,"Failed");
                    RequestDispatcher rd=request.getRequestDispatcher("forget.jsp");
                    rd.forward(request, response);
            }
        }
        catch(Exception z)
        {
            System.out.println(z);
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
