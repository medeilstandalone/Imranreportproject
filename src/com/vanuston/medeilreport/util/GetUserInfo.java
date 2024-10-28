package com.vanuston.medeilreport.util;

import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class GetUserInfo {

    public static String pwd;
    public static String empName;
    public static String empCode;
    public static String userType;
    public static String home;
    public static String sales;
    public static String inv;
    public static String mas;
    public static String fin;
    public static String crm;
    public static String report;
    static Logger log = Logger.getLogger(GetUserInfo.class, "Utilities");
    CommonImplements commonController;    
    
    public boolean checkName(String uname) throws Exception {
        boolean boo = true;
        String query = "select user_name from user_info where user_name='" + uname + "' and ui_flag_id=0";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            String sar = commonController.getQueryValue(query);
            if (!sar.equals("")) {
                boo = false;
            }
        } catch (Exception ex) {
            String ss = "Method : checkName     Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return boo;
    }

    public List<String> getUserName(String name) {

        List<String> userArray = new ArrayList<String>();
        String query = null;
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            userArray = commonController.getUserName(name);

        } catch (Exception ex) {
            String ss = "Method : getUserName     Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return userArray;
    }

    public String getPassword(String uname) {
        String query = "select password from user_info where user_name='" + uname + "'";
        String pass = "";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            pass = commonController.getQueryValue(query);
        } catch (Exception ex) {
            String ss = "Method : getPassword     Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return pass;
    }


     public String getUsers(String uname) {
        String query = "select user_name from user_info where user_name='" + uname + "'";
        String pass = "";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            pass = commonController.getQueryValue(query);

        } catch (Exception ex) {
            String ss = "Method : getUsers     Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return pass;
    }

     public String getUserType(String uname) {
        String utype = "";
        if (uname.equals("MedeilAdmin")) {
            utype = "Admin";
        } else {
            String query = "select user_type from user_info where user_name='" + uname + "'";
            try {
                commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
                utype = commonController.getQueryValue(query);

            } catch (Exception ex) {
                String ss = "Class:GetUserInfo Method : getUserType     Exception :" + ex.getMessage() + " Query :" + query;
                log.debug(ss);
            }
        }
        return utype;
    }

    public String getPrivileges(String modname, String uname) {
        String query = "select " + modname + " from user_info where user_name='" + uname + "'";
        String priv = "";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            priv = commonController.getQueryValue(query);            
        } catch (Exception ex) {
            String ss = "Class:GetUserInfo Method : getPrivileges     Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }

        return priv;
    }
    
    public Boolean getPriv(String modname, String uname) {
         Boolean priv = false;
        try {
            if (checkName(uname) == false) {
                String access = getPrivileges(modname, uname);
                String[] modulePerm = access.split(",");
                for (int i = 0; i < modulePerm.length; i++) {
                    if (Integer.parseInt(modulePerm[i]) != 0) {
                        priv = true;
                    }
                }
            }
        } catch (Exception ex) {
            log.debug("Class :GetUserInfo Method : getPriv    Exception :" + ex.getMessage());
        }

        return priv;
    }
    public String getTIN() {
        String tin = "";
        String query = "select tin_no from shop_information";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            tin = commonController.getQueryValue(query);

        } catch (Exception ex) {
            String ss = "Class:GetUserInfo Method : getTIN     Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return tin;
    }
    public String getShopName() {
        String shopName = "";
        String sql = "";
        try {
            sql = "select shop_name from shop_information";
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            shopName = commonController.getQueryValue(sql);

        } catch (Exception ex) {
            String ss = "Class:GetUserInfo Method : getShopName     Exception :" + ex.getMessage() + " Query :" + sql;
            log.debug(ss);
        }
        return shopName;
    }

      public String getServerDetails () {
        String server = "192.168.1.2";
        try {
            File serverFile = new File("server/serverdetails.txt") ;
            BufferedReader br = new BufferedReader(new FileReader(serverFile));
            String s;
            while ((s = br.readLine()) != null) {
                server = s ;
            }

        } catch (Exception e) {
          log.debug("Method:getServerDetails Exception:"+e.getMessage());

        }
        return server ;
    }
}
