/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

@WebServlet("/registration")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)

/**
 *
 * @author KAMALA KANNAN MOHAN
 */
public class registration extends HttpServlet {

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
            int w;
            w = (int)((Math.random() * 9000000)+1000000);
            String z = Integer.toString(w);
            HttpSession hs=request.getSession();
            hs.setAttribute("ref",z);
            System.out.println(z);
            String f=request.getParameter("fname");
            String l=request.getParameter("lname");
            String d=request.getParameter("dob");
            String e=request.getParameter("email");
            String pa=request.getParameter("password");
            String cpa=request.getParameter("cpassword");
            String n=request.getParameter("num");
            String a=request.getParameter("anum");
            String i=request.getParameter("living");
            String p=request.getParameter("pname");
            String o=request.getParameter("poccu");
            String m=request.getParameter("mtongue");
            String t=request.getParameter("tenth");
            String r=request.getParameter("address");
            String di=request.getParameter("district");
            String s=request.getParameter("state");
            String pi=request.getParameter("pincode");
            String fp=request.getParameter("fpre");
            String sp=request.getParameter("spre");
            Part part=request.getPart("filename");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\Admin\\Documents\\NetBeansProjects\\vel\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        part.write(savePath + File.separator);
        String g=request.getParameter("gender");
        String c=request.getParameter("choice");
        String re=request.getParameter("regno");
        String sc=request.getParameter("school");
        String gr=request.getParameter("grou");
        String ve=request.getParameter("vel");
        String bo=request.getParameter("bos");
        String me=request.getParameter("mediu");
        String go=request.getParameter("gro");
        String exp=request.getParameter("expected");
        String lo=request.getParameter("diploma");
        String ma=request.getParameter("mark");
        //String bd=request.getParameter("bosd");
        String pr=request.getParameter("pregno");
        String co=request.getParameter("college");
        String de=request.getParameter("dept");
        String dj=request.getParameter("doj");
        String we=request.getParameter("med");
       // String to=request.getParameter("toeq");
        String reg=request.getParameter("registered");
        String sm=request.getParameter("smat");
            String sph=request.getParameter("sphy");
            String scm=request.getParameter("sche");
             String cm=request.getParameter("cmat");
            String cp=request.getParameter("cphy");
            String cc=request.getParameter("cche");
            String ama=request.getParameter("amata");
            String amb=request.getParameter("amatb");
            String ap=request.getParameter("aphy");
            String ac=request.getParameter("apphy");
            String cmp=request.getParameter("ache");
            String ccc=request.getParameter("cpche");
            String z1=request.getParameter("scutoff");
        hs.setAttribute("fname",f);
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
            PreparedStatement stmt=con.prepareStatement("insert into vel values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,f);
            stmt.setString(2,l);
            stmt.setString(3,d);
            stmt.setString(4,e);
            stmt.setString(5,pa);
            stmt.setString(6,cpa);
            stmt.setString(7,n);
            stmt.setString(8,a);
            stmt.setString(9,i);
            stmt.setString(10,p);
            stmt.setString(11,o);
            stmt.setString(12,m);
            stmt.setString(13,t);
            stmt.setString(14,r);
            stmt.setString(15,di);
            stmt.setString(16,s);
            stmt.setString(17,pi);
            stmt.setString(18,fp);
            stmt.setString(19,sp);
            stmt.setString(20,fileName);
            stmt.setString(21,savePath);
            stmt.setString(22,g);
            stmt.setString(23,z);
            stmt.setString(24,c);
            stmt.setString(25,re);
            stmt.setString(26,sc);
            stmt.setString(27,gr);
            stmt.setString(28,ve);
            stmt.setString(29,bo);
            stmt.setString(30,me);
            stmt.setString(31,go);
            stmt.setString(32,exp);
            stmt.setString(33,lo);
            stmt.setString(34,ma);
            stmt.setString(35,pr);
            stmt.setString(36,co);
            stmt.setString(37,de);
            stmt.setString(38,dj);
            stmt.setString(39,we);
            stmt.setString(40,reg);
            stmt.setString(41,sm);
            stmt.setString(42,sph);
            stmt.setString(43,scm);
            stmt.setString(44,cm);
            stmt.setString(45,cp);
            stmt.setString(46,cc);
            stmt.setString(47,ama);
            stmt.setString(48,amb);
            stmt.setString(49,ap);
            stmt.setString(50,ac);
            stmt.setString(51,cmp);
            stmt.setString(52,ccc);
            stmt.setString(53,z1);
            stmt.executeUpdate();
            if("Lateral".equals(c) && pa.equals(cpa))
            {
               JOptionPane.showMessageDialog(null,"Data Inserted Successfully" );
               RequestDispatcher rd=request.getRequestDispatcher("late.jsp");
               rd.forward(request, response);
            }
            else{
               JOptionPane.showMessageDialog(null,"Data Inserted Successfully" );
               RequestDispatcher rd=request.getRequestDispatcher("new.jsp");
               rd.forward(request, response);
            }
        }
        catch(Exception ex){
            System.out.println(ex);
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

    
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for(String s : items){
            if(s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
