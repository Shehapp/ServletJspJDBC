package com.example.login;

import com.example.emp.Employee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SearchEmpServlet extends HttpServlet {
    Connection conn = null;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ConnectDB(config.getInitParameter("username"), config.getInitParameter("password"));
        Employee.conn = conn;
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(conn == null){
            String error = "Connection to database failed";
            RequestDispatcher rd = req.getRequestDispatcher("Error.jsp");
            req.setAttribute("error",error );
            rd.forward(req,resp);
        }else {
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            Employee emp = new Employee(username, password);
            try {
                if (emp.IsExist()) {
                    RequestDispatcher rd = req.getRequestDispatcher("succ.jsp");
                    req.setAttribute("salary", emp.getSalary());
                    req.setAttribute("rs", emp.getValue());
                    rd.forward(req, resp);
                } else {
                    String error = "Username or password is incorrect";
                    RequestDispatcher rd = req.getRequestDispatcher("Error.jsp");
                    req.setAttribute("error", error);
                    rd.forward(req, resp);
                }
            } catch (Exception e) {
                String error ="Error in database";
                RequestDispatcher rd = req.getRequestDispatcher("Error.jsp");
                req.setAttribute("error", error);
                rd.forward(req, resp);
            }
        }

    }

    @Override
    public void destroy() {
        super.destroy();
    }
    public void ConnectDB(String username, String password){
        try {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",username,password);
        }catch (Exception e){}
    }

}
