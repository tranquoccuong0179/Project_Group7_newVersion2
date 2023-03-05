/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.Account;
import db.AccountFacade;
import db.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.Hasher;

/**
 *
 * @author Cuong
 */
@WebServlet(name = "UserController", urlPatterns = {"/user"})
public class UserController extends HttpServlet {

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
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        switch (action) {
            case "login":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "login_handler":
                login_handler(request, response);
                break;
            case "register":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "register_handler":
                register_handler(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "index":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "edit":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "edit_handler":
                edit_handler(request, response);
                break;
            case "change":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "change_handler":
                change_handler(request, response);
            default:
            //Show error page
        }
    }

    protected void login_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String op = request.getParameter("op");
            switch (op) {
                case "login":
                    //Lấy thông tin login 
                    String email = request.getParameter("email");
                    String password = request.getParameter("password");
                    //kiểm tra trong database
                    AccountFacade af = new AccountFacade();
                    Account user = af.login(email, password);
                    if (user == null) {
                        //nếu login không thành công thì quay về login form để nhập lại thông tin
                        request.setAttribute("message", "Incorrect email or password");
                        request.getRequestDispatcher("/user/login.do").forward(request, response);
                    } else {
                        //login thành công 
                        //lưu account vào session
                        HttpSession session = request.getSession();
                        session.setAttribute("user", user);
                        //Quay về home page
                        response.sendRedirect(request.getContextPath() + "/home/index.do");
                    }
                    break;
            }
        } catch (Exception ex) {
            //quay về login form để thông báo lỗi
            request.setAttribute("message", ex.toString());
            request.getRequestDispatcher("/user/login.do").forward(request, response);
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Xóa session
        HttpSession session = request.getSession();
        session.invalidate();
        //quay về trang chủ
        response.sendRedirect(request.getContextPath() + "/home/index.do");
    }

    protected void register_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        switch (op) {
            case "register":
                try {
                    String fullName = request.getParameter("fullname");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    String address = request.getParameter("address");
                    String password = request.getParameter("password");
                    String password2 = request.getParameter("confirmPassword");
                    if (!password.equals(password2)) {
                        response.sendRedirect(request.getContextPath() + "/user/register.do");

                    } else {
                        password = Hasher.hash(password);

                        //Tạo đối tượng account
                        User user = new User(0, email, password, fullName, phone, address, phone);
                        //Lưu account vào request đê bảo tồn trạng thái của form

                        AccountFacade af = new AccountFacade();
                        af.create(user);

                        response.sendRedirect(request.getContextPath() + "/home/index.do");
                    }

                } catch (Exception e) {
                }
                break;
        }
    }

    protected void edit_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        switch (op) {
            case "edit":
                try {
                    //Lay data tu client
                    int id = Integer.parseInt(request.getParameter("id"));
                    String email = request.getParameter("email");
                    String pass = request.getParameter("pass");
                    String name = request.getParameter("fullName");
                    String address = request.getParameter("address");
                    String phone = request.getParameter("phone");
                    User user = new User(id, email, pass, name, "user", address, phone);

                    //Hien edit form
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    //Cap nhat toy vao db
                    AccountFacade af = new AccountFacade();
                    af.update(user);
                    //Hien danh sach toy
                    response.sendRedirect(request.getContextPath() + "/user/index.do");

                } catch (SQLException ex) {
                    //Show the error page
                    /*
                    //C1: bad
                    request.setAttribute("message", ex.getMessage());
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "error");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                     */
                    //C2:
                    //Show the error page
                    ex.printStackTrace();//In chi tiet ve ngoai le cho developer
                    request.setAttribute("message", "Can not save this toy. Please check the toy data.");
                    request.setAttribute("action", "edit");
                    request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                }
                break;
            case "cancel":
                response.sendRedirect(request.getContextPath() + "/user/index.do");
                break;
        }
    }
    protected void change_handler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        switch(op){
            case "change":
                String oldPass = request.getParameter("oldPass");
                
                String newPass = request.getParameter("newPass");
                String confirmNewPass = request.getParameter("confirmNewPass");
                int id = Integer.parseInt(request.getParameter("id"));
                String pass = request.getParameter("pass");
                try {
                    oldPass = Hasher.hash(oldPass);
                    if(oldPass.equals(pass) && newPass.equals(confirmNewPass)){
                        HttpSession session = request.getSession();
                        User user = (User) session.getAttribute("user");
                        user.setPassword(Hasher.hash(newPass));
                        session.setAttribute("user", user);
                        AccountFacade af = new AccountFacade();
                        af.changePassword(id, newPass);
                        
                         
                        
                        
                        response.sendRedirect(request.getContextPath() + "/home/index.do");
                        
                    }
                    else {
                        request.setAttribute("message", "wrong pass");
                        response.sendRedirect(request.getContextPath() + "/user/change.do");
                    }
                    
                } catch (Exception e) {
                }
                break;
            case "cancel":
                response.sendRedirect(request.getContextPath() + "/user/index.do");
                break;
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
