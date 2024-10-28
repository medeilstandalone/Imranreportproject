/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vanuston.medeilreport.dao;

import com.vanuston.medeilreport.implementation.CommonImplements;
import java.rmi.RemoteException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.Vector;
import com.vanuston.medeilreport.util.DBConnection;
import com.vanuston.medeilreport.util.Logger;

/**
 *
 * @author muralikrishnan
 */
public class CommonDAO implements CommonImplements {

    public static Logger log = Logger.getLogger(CommonDAO.class, "CommonDAO");

    @Override
    public String[] DistributorName(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name.equals("")) {
                rs = DBConnection.getStatement().executeQuery("select * from dist_information where dist_flag_id = '0'");
            } else {
                rs = DBConnection.getStatement().executeQuery("select * from dist_information where dist_name like'" + name + "%' and dist_flag_id = '0'");
            }
            while (rs.next()) {
                v.addElement(rs.getString("dist_name"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : DistributorName()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] ProductName(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            rs = DBConnection.getStatement().executeQuery("call pro_getStockitems('" + name + "')");
            while (rs.next()) {
                v.addElement(rs.getString("itemname") + "_" + rs.getString("dosage"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : ProductName()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] CustomerName(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name == "") {
                rs = DBConnection.getStatement().executeQuery("select * from cust_information where cust_flag_id = '0'");
            } else {
                rs = DBConnection.getStatement().executeQuery("select * from cust_information where cust_name like'" + name + "%' and cust_flag_id = '0'");
            }
            while (rs.next()) {
                v.addElement(rs.getString("cust_name"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : CustomerName()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] DoctorName(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name == "") {
                rs = DBConnection.getStatement().executeQuery("select distinct doctor_name from doctors_information where doc_flag_id = '0'");
            } else {
                rs = DBConnection.getStatement().executeQuery("select distinct doctor_name from doctors_information where doctor_name like'" + name + "%' and doc_flag_id = '0'");
            }
            while (rs.next()) {
                v.addElement(rs.getString("doctor_name"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : DoctorName()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] prescriptionList(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name == "") {
                rs = DBConnection.getStatement().executeQuery("select distinct concat(cust_name,' - ',mobile_no) as cust_name from cust_information where cust_flag_id = '0' union select distinct id from prescription_maintenance where del_flag= '0'");
            } else {
                rs = DBConnection.getStatement().executeQuery("select distinct concat(cust_name,' - ',mobile_no) as cust_name from cust_information where cust_name like '"+name+"%' and cust_flag_id = '0' union select distinct id from prescription_maintenance where id like '"+name+"%' and del_flag = '0'");
            }
            while (rs.next()) {
                v.addElement(rs.getString("cust_name"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : prescriptionList()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] ItemName(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name == "") {
                rs = DBConnection.getStatement().executeQuery("select distinct(trim(d.itemname))as itemname ,trim(d.dosage) as dosage from stock_statement s, drugtable d where s.item_code=d.itemcode");
            } else {
                rs = DBConnection.getStatement().executeQuery("select distinct(trim(d.itemname))as itemname ,trim(d.dosage) as dosage from stock_statement s, drugtable d where s.item_code=d.itemcode and (s.item_name like concat('"+name+"','%') or s.item_code like concat('"+name+"','%'))");
            }
            while (rs.next()) {
                v.addElement(rs.getString("itemname") + "_" + rs.getString("dosage"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : ItemName()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }
   
    @Override
    public String[] Specialist(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name == "") {
                rs = DBConnection.getStatement().executeQuery("select distinct(specialist) from doctor_specialist");
            } else {
                rs = DBConnection.getStatement().executeQuery("select distinct(specialist) from doctor_specialist where specialist like '" + name + "%'");
            }
            while (rs.next()) {
                v.addElement(rs.getString("specialist"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : Specialist()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] AccountNumber() throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
         v.addElement("--Select--");
        try {
            ResultSet rs = null;
                rs = DBConnection.getStatement().executeQuery("SELECT acc_number FROM bank_details");
            while (rs.next()) {
                v.addElement(rs.getString("acc_number"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : AccountNumber()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] mfrName(String name) throws RemoteException {
        Vector v = new Vector();
        String[] s = null;
        try {
            ResultSet rs = null;
            if (name == "") {
                rs = DBConnection.getStatement().executeQuery("select distinct(company_name) from drugtable where dru_flag_id >= '1' and company_name!='' order by company_name ");
            } else {
                rs = DBConnection.getStatement().executeQuery("select distinct(company_name) from drugtable where company_name like'" + name + "%' and dru_flag_id >= '1' and company_name!='' order by company_name");
            }
            while (rs.next()) {
                v.addElement(rs.getString("company_name"));
            }
            s = new String[v.size()];
            for (int i = 0; i < v.size(); i++) {
                s[i] = "" + v.get(i);
            }
        } catch (Exception ex) {
            String msg = "Class : CommonDAO  Method  : mfrName()   = "+ex.getMessage();
            log.debug(msg);
        }
        return s;
    }

    @Override
    public String[] EmployeeID(String name) throws RemoteException {
        Vector v = new Vector();
     ResultSet rs=null;
     String empid[]=null;
     try {
         if(name.equals("")) {
         rs=DBConnection.getStatement().executeQuery("select emp_code from employee_information");
         }
         else {
         rs=DBConnection.getStatement().executeQuery("select emp_code from employee_information where emp_code like '"+name+"%'");
         }
     while(rs.next()){
         v.add(rs.getString("emp_code"));
     }
     empid=new String[v.size()];
     for (int i = 0; i < v.size(); i++) {
          empid[i] = "" + v.get(i);
     }
     }
     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : EmployeeID Exception:" + e.getMessage();
         log.debug(ss);
     }
     return empid;
    }
    

    @Override
    public List invoiceNumber(String name) throws RemoteException {
        List invoiceList = new ArrayList();
     ResultSet rs=null;

     try {
         if(name.equals("")) {
         rs=DBConnection.getStatement().executeQuery("select distinct(invoice_no) from purchase_invoice");
         }
         else {
         rs=DBConnection.getStatement().executeQuery("select distinct(invoice_no) from purchase_invoice where invoice_no like '"+name+"%'");
         }
     while(rs.next()){
         invoiceList.add(rs.getString("invoice_no"));
     }
     }
     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : invoiceNumber Exception:" + e.getMessage();
         log.debug(ss);
     }
     return invoiceList;
    }

    @Override
    public List vatValues() throws RemoteException {
        List vatList = new ArrayList();
        ResultSet rs=null;

     try {
         rs=DBConnection.getStatement().executeQuery("select vat_val from vat_master");
         while(rs.next()){
         vatList.add(rs.getDouble("vat_val"));
         }
     }

     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : vatValues Exception:" + e.getMessage();
         log.debug(ss);
     }
     return vatList;
    }

    @Override
    public List batchNumber(String name) throws RemoteException {
     List invoiceList = new ArrayList();
     ResultSet rs=null;

     try {
         if(name.equals("")) {
         rs=DBConnection.getStatement().executeQuery("select distinct(batch_no) from purchase_invoice");
         }
         else {
         rs=DBConnection.getStatement().executeQuery("select distinct(batch_no) from purchase_invoice where batch_no like '"+name+"%'");
         }
     while(rs.next()){
         invoiceList.add(rs.getString("batch_no"));
     }
     }
     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : batchNumber Exception:" + e.getMessage();
         log.debug(ss);
     }
     return invoiceList;
    }

    @Override
    public List rackNumber(String name) throws RemoteException {
        List invoiceList = new ArrayList();
     ResultSet rs=null;

     try {
         if(name.equals("")) {
         rs=DBConnection.getStatement().executeQuery("select distinct(rack_no) from stock_statement where rack_no != ''");
         }
         else {
         rs=DBConnection.getStatement().executeQuery("select distinct(rack_no) from stock_statement where rack_no like '"+name+"%' and rack_no!=''");
         }
     while(rs.next()){
         invoiceList.add(rs.getString("rack_no"));
     }
     }
     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : rackNumber Exception:" + e.getMessage();
         log.debug(ss);
     }
     return invoiceList;
    }

    @Override
    public List shelfNumber(String name) throws RemoteException {
        List invoiceList = new ArrayList();
        ResultSet rs=null;

     try {
         if(name.equals("")) {
         rs=DBConnection.getStatement().executeQuery("select distinct(shelf_no) from stock_statement where shelf_no!=''");
         }
         else {
         rs=DBConnection.getStatement().executeQuery("select distinct(shelf_no) from stock_statement where shelf_no like '"+name+"%' and shelf_no!=''");
         }
     while(rs.next()){
         invoiceList.add(rs.getString("shelf_no"));
     }
     }
     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : shelfNumber Exception:" + e.getMessage();
         log.debug(ss);
     }
     return invoiceList;
    }

    @Override
    public List getFormulation(String formulation) throws RemoteException {
        List<String> formulationList = new ArrayList<String>();
         ResultSet rs =null;
         try {
             if(formulation.equals("")) {
              rs=DBConnection.getStatement().executeQuery("select distinct(formulation_length) as formulation from drugtable");
             }
             else {
              rs=DBConnection.getStatement().executeQuery("select distinct(formulation_length) as formulation from drugtable where formulation_length like '"+formulation+"%'");
             }
             while(rs.next()) {
                 formulationList.add(rs.getString("formulation"));
             }
         }
         catch(Exception e) {
            String ss = "Class : CommonDAO  Method  : getFormulation Exception:" + e.getMessage();
            log.debug(ss);
         }
         return formulationList;
     }

    @Override
    public List getTherapeutic(String therapeutic) throws RemoteException {
        List<String> therapeuticList = new ArrayList<String>();
         ResultSet rs =null;
         try {
             if(therapeutic.equals("")) {
              rs=DBConnection.getStatement().executeQuery("select distinct(therapeutic) as therapeutic from drugtable where therapeutic!=''");
             }
             else {
              rs=DBConnection.getStatement().executeQuery("select distinct(therapeutic) as therapeutic from drugtable where therapeutic!='' and therapeutic like '"+therapeutic+"%'");
             }
             while(rs.next()) {
                 therapeuticList.add(rs.getString("therapeutic"));
             }
         }
         catch(Exception e) {
            String ss = "Class : CommonDAO  Method  : getFormulation Exception:" + e.getMessage();
            log.debug(ss);
         }
         return therapeuticList;
     }

    @Override
 public String[] customerAddress(String name) {
     Vector v = new Vector();
     ResultSet rs=null;
     String address[]=null;
     try {
         if(name.equals("")) {
         rs=DBConnection.getStatement().executeQuery("select distinct(cust_address2) from cust_information where cust_address2 != ''");
         }
         else {
         rs=DBConnection.getStatement().executeQuery("select distinct(cust_address2) from cust_information where cust_address2 like '"+name+"%' and cust_address!=''");
         }
     while(rs.next()){
         v.add(rs.getString("cust_address2"));
     }
     address=new String[v.size()];
     for (int i = 0; i < v.size(); i++) {
          address[i] = "" + v.get(i);
     }
     }
     catch(Exception e){
         String ss = "Class : CommonDAO  Method  : customerAddress Exception:" + e.getMessage();
         log.debug(ss);
     }
     return address;
     }

    @Override
    public String getSessionID() {
        String sname = "";
        Random r = new Random();
        String[] charc = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
        String a1 = charc[Math.abs(r.nextInt() % 26)];
        String b1 = charc[Math.abs(r.nextInt() % 26)];
        String c1 = charc[Math.abs(r.nextInt() % 26)];
        String d1 = charc[Math.abs(r.nextInt() % 26)];
        String a = Math.abs(r.nextInt() % 10) + "" + Math.abs(r.nextInt() % 10) + "" + Math.abs(r.nextInt() % 10);
        String b = Math.abs(r.nextInt() % 10) + "" + Math.abs(r.nextInt() % 10) + "" + Math.abs(r.nextInt() % 10);
        sname = a1 + a + "" + b1 + "" + c1 + b + "" + d1;
        return sname;
    }

    @Override
    public int queryExecution(String q) {
        int save = 0;
        try {
            save = DBConnection.getStatement().executeUpdate(q);
        } catch (Exception ex) {
            String ss = "Class : CommonDAO  Method  : queryExecution Exception:" + ex.getMessage() + "Query :" + q;
            log.debug(ss);
        }
        return save;
    }

    @Override
    public void querySelection(String q) {
        ResultSet rs=null;
        try {
            rs = DBConnection.getStatement().executeQuery(q);
        } catch (Exception ex) {
            String ss = "Class : CommonDAO  Method  : queryExecution Exception:" + ex.getMessage() + "Query :" + q;
            log.debug(ss);
        }        
    }

    @Override
    public String getQueryValue(String que) {
        String value = "";
        try {            
            ResultSet rs = DBConnection.getStatement().executeQuery(que);
            while (rs.next()) {
                value = rs.getString(1);                
            }
        } catch (Exception ex) {
            String ss = "Class : CommonDAO  Method  : getQueryValue():StringException:" + ex.getMessage();
            log.debug(ss);
        }
        return value;
    }

    @Override
    public int getQueryWitCol(String query, String col) {
        int qty = 0;
        try {
            ResultSet rs = DBConnection.getStatement().executeQuery(query);
            while (rs.next()) {
                if (rs.getString(col) != null) {
                    qty = rs.getInt(col);
                }
            }
        } catch (Exception ex) {
            String ss = "Class : CommonDAO  Method  : getQueryWitCol:" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }

        return qty;
    }

    @Override
    public List<String> getQueryValue(String query, int count) {
        List<String> value = new ArrayList<String>();

        try {
            ResultSet rs = DBConnection.getStatement().executeQuery(query);
            value.add("ALL");
            while (rs.next()) {
                for (int i = 0; i < count; i++) {
                    value.add(rs.getString(i + 1));
                }
            }
        } catch (Exception ex) {
            String ss = "Class : CommonDAO  Method  : getQueryValue():String[]   Exception :" + ex.getMessage();
            log.debug(ss);
        }
        return value;
    }

    @Override
    public int selectCountQuryExe(String query) {
        int save = 0;
        try {
            ResultSet rs = DBConnection.getStatement().executeQuery(query);
            while (rs.next()) {
                save = rs.getInt("count(*)");
            }
        } catch (Exception ex) {
            String ss = "Class : CommonDAO  Method  : selectCountQuryExe Exception:" + ex.getMessage();
            log.debug(ss);
        }
        return save;
    }

    @Override
    public List<String> getUserName(String type) {
        List<String> userList = new ArrayList<String>();

        String query = "";
        try {

            if (type.equals("")) {
                query = "SELECT user_name FROM user_info where ui_flag_id=0";
            } else {
                query = "SELECT user_name FROM user_info WHERE user_name like'" + type + "%' and ui_flag_id=0";
            }
            ResultSet rs = DBConnection.getStatement().executeQuery(query);
            while (rs.next()) {
                userList.add(rs.getString("user_name"));
            }


        } catch (Exception e) {
            log.debug("Class : CommonDAO Method:getUserName() Error = " + e.getMessage());
        }
        return userList;

    }

     @Override
    public HashMap getModules(String str1, String str2, String str3) {
        HashMap moduleMap = new HashMap();
        try {
            String query = "SELECT submodule," + str1 + " FROM version_formlookup where object='" + str2 + "' and module='" + str3 + "'";
            ResultSet rs = DBConnection.getStatement().executeQuery(query);
            while (rs.next()) {
                moduleMap.put(rs.getString("submodule"), rs.getString(str1));
            }
        } catch (Exception e) {
            String ss = "Class : CommonDAO  Method  : getModules():StringException:" + e.getMessage();
            log.debug(ss);
        }

        return moduleMap;
    }

}
