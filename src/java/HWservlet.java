/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.data.FormBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author
 */
@WebServlet(urlPatterns = {"/HWservlet"})
public class HWservlet extends HttpServlet {

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
        ServletContext sc = this.getServletContext();
        FormBean bean = (FormBean) sc.getAttribute("bean");
        if (bean == null) {
            bean = new FormBean();
            sc.setAttribute("bean", bean);
        }

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            Boolean isEmailValid = false;

            //request dispatcher
            //populate the form bean
            //FormBean bean = new FormBean();
            //first name store data
            bean.setFName(request.getParameter("FName"));
            //store last name data
            bean.setLName(request.getParameter("LName"));
            //store the userid aka the email
            bean.setUserID(request.getParameter("UserID"));
            //store the password
            bean.setPassword(request.getParameter("Password"));
            //store the verify password field
            bean.setRePassword(request.getParameter("RePassword"));
            // store the display name, the alias
            bean.setAlias(request.getParameter(("alias")));
            // store the CountryOfRes
            bean.setCountryOfRes(request.getParameter("CountryOfRes"));
            // store the city
            bean.setCity(request.getParameter("City"));
            //store the langauge
            bean.setLangauge(request.getParameter("Language"));
            // store the security question, SecurityQues
            bean.setSecurityQues(request.getParameter("SecurityQues"));
            //store the answer to the security questioh, SecurityAns
            bean.setSecurityAns(request.getParameter("SecurityAns"));
            //store the check email box
            bean.setNC_CHECK_EMAIL(request.getParameter("NC_CHECK_EMAIL"));
            // store the check other box
            bean.setNC_CHECK_OTHER(request.getParameter("NC_CHECK_OTHER"));

            //invoke the isValid method, and return the value
            isEmailValid = bean.isValid();

            //check if bean is valid, if not, repopulate the page
            if (!bean.isValid()) {
                //forward the request dispatcher
                String url = "/repop.jsp";
                //String url = "/projectTest.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(url);
                dispatcher.forward(request, response);
            } else {
                String url ="/Congrats.jsp";
                //String url = "/projectTest.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(url);
                dispatcher.forward(request, response);
            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HWservlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HWservlet at " + bean.getNC_CHECK_EMAIL() + "</h1>");
            out.println("<h1>Servlet HWservlet at " + bean.getNC_CHECK_OTHER() + "</h1>");
            out.println(isEmailValid);
            out.println("<body>");

            out.println("</body>");
            out.println("</html>");
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
