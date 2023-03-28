package com.example.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Employee {
    public static Connection conn = null;
    private String username = null;
    private String password = null;
    private String salary = null;
    private PreparedStatement rs = null;

    public Employee(String username, String password) {
        this.username = username;
        this.password = password;
    }
    public Boolean IsExist() throws Exception{
        String sql="select * from login where username='"+username+"' and passwordd='"+password+"'";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                this.salary = rs.getString(3);
                return true;
            }
            else
                return false;
    }
    public PreparedStatement getValue()throws Exception {
        String sql="select username,salary from login where salary>'"+salary+"'";
        System.out.println(sql);
            rs = conn.prepareStatement(sql);
        return rs;
    }
    public String getSalary() {
        return this.salary;
    }
}
