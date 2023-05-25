/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DBQuery.DBQuery;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sumith
 */
public class signup extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try
                                {
                                    /*to store the values of field in web page to a variable  
                                    using get parameter command*/
                                    
                                    String nm= request.getParameter("Rname");
                                    String usernm= request.getParameter("Ruser");
                                    String passwd= request.getParameter("Rpass");
                                    String email= request.getParameter("Remail");
                                    String mobile= request.getParameter("Rmobile");
                                    //System.out.print("INSERT INTO `users`( `nm`, `usernm`, `passwd`, `email`, `mobile`,'act') VALUES ('"+nm+"','"+usernm+"','"+passwd+"','"+email+"','"+mobile+"','1')");
                                    DBQuery db=new DBQuery();
                                    /*call method and pass values extracted from signup page and 
                                    pass it to DBQuery page to add it into database*/
                                   int i= db.add_user(nm, usernm, passwd, email, mobile);
                                   
                                  HttpSession session=request.getSession();
                                  if(i>0)
                                  {
                                  session.setAttribute("msg", "Registration successful");
                                  }
                                  else{
                                  session.setAttribute("msg", "Registration Failed");
                                  }
                                    response.sendRedirect("index.jsp");
                                 
                                    
                                }catch(Exception xx)
                                {
                                   xx.printStackTrace();
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
