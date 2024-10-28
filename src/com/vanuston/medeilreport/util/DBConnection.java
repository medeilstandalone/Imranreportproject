package com.vanuston.medeilreport.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBConnection {

    static Logger log = Logger.getLogger(DBConnection.class, "Utilities");
    private static Connection con = null;
    private static Connection conT = null;
    private static Statement stmt = null;

    public static Connection getConnection() {
        if (conT == null) {
            makeTransConnection();
        }
        return conT;
    }

    public static Statement getStatement() {
        try {
            stmt = getConnection().createStatement();
        } catch (Exception ex) {
            String ss = "Class : DBConnection  Method  : getStatement     Exception :" + ex.getMessage();
            log.debug(ss);
        }
        return stmt;
    }

    private static Connection makeTransConnection() {
        try {
            String tmp=new LogReg().temp();
           if(!tmp.equals("Error")){
            Class.forName("com.mysql.jdbc.Driver");
            conT = DriverManager.getConnection("jdbc:mysql://localhost:3356/medil", "root",tmp);
        } }catch (Exception ex) {
            String ss = "Class : DBConnection  Method  : makeTransConnection  Exception :" + ex.getMessage();
            log.debug(ss);            
        }
        return conT;
    }

    public static void closeAllConnections() {
        try {
            if (con != null) {
                con.close();
            }
            con = null;
        } catch (Exception ex) {
            String ss = "Class : DBConnection  Method  : closeAllConnections     Exception :" + ex.getMessage();
            log.debug(ss);
        }
        try {
            if (conT != null) {
                conT.close();
            }
            conT = null;
        } catch (Exception ex) {
            String ss = "Class : DBConnection  Method  : closeAllConnections     Exception :" + ex.getMessage();
            log.debug(ss);
        }
    }

    @Override
    public void finalize() {
        try {
            if (con != null) {
                con.close();
            }
            con = null;
        } catch (Exception ex) {
            String ss = "Class : DBConnection  Method  : finalize     Exception :" + ex.getMessage();
            log.debug(ss);
        }
        try {
            if (conT != null) {
                conT.close();
            }
            conT = null;
        } catch (Exception ex) {
            String ss = "Class : DBConnection  Method  : finalize     Exception :" + ex.getMessage();
            log.debug(ss);
        }
    }
}
