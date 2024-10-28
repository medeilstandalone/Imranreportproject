/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vanuston.medeilreport.controller;

import com.vanuston.medeilreport.dao.CommonDAO;
import com.vanuston.medeilreport.implementation.CommonImplements;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author muralikrishnan
 */
public class CommonController extends UnicastRemoteObject implements CommonImplements{
    CommonDAO commonDAO = new CommonDAO();

    public CommonController() throws RemoteException {
        super();
    }
    
    @Override
    public String[] DistributorName(String name) throws RemoteException {
        return commonDAO.DistributorName(name);
    }

    @Override
    public String[] ProductName(String name) throws RemoteException {
        return commonDAO.ProductName(name);
    }

    @Override
    public String[] CustomerName(String name) throws RemoteException {
        return commonDAO.CustomerName(name);
    }

    @Override
    public String[] DoctorName(String name) throws RemoteException {
       return commonDAO.DoctorName(name);
    }

    @Override
    public String[] prescriptionList(String name) throws RemoteException {
       return commonDAO.prescriptionList(name);
    }

    @Override
    public String[] ItemName(String name) throws RemoteException {
        return commonDAO.ItemName(name);
    }

    @Override
    public String[] Specialist(String name) throws RemoteException {
        return commonDAO.Specialist(name);
    }

    @Override
    public String[] AccountNumber() throws RemoteException {
        return commonDAO.AccountNumber();
    }

    @Override
    public String[] mfrName(String name) throws RemoteException {
        return commonDAO.mfrName(name);
    }

    @Override
    public String[] EmployeeID(String name) throws RemoteException {
        return commonDAO.EmployeeID(name);
    }

    @Override
    public List invoiceNumber(String name) throws RemoteException {
        return commonDAO.invoiceNumber(name);
    }

    @Override
    public List batchNumber(String name) throws RemoteException {
       return commonDAO.batchNumber(name);
    }

    @Override
    public List rackNumber(String name) throws RemoteException {
        return commonDAO.rackNumber(name);
    }

    @Override
    public List shelfNumber(String name) throws RemoteException {
        return commonDAO.shelfNumber(name);
    }

    @Override
    public List getFormulation(String formulation) throws RemoteException {
        return commonDAO.getFormulation(formulation);
    }

    @Override
    public String[] customerAddress(String name) throws RemoteException {
        return commonDAO.customerAddress(name);
    }

    @Override
    public void querySelection(String q) throws RemoteException {
        commonDAO.querySelection(q);
    }

    @Override
    public int queryExecution(String q) throws RemoteException {
        return commonDAO.queryExecution(q);
    }

    @Override
    public List vatValues() throws RemoteException {
        return commonDAO.vatValues();
    }

    @Override
    public String getSessionID()  throws RemoteException  {
        return commonDAO.getSessionID();
    }

    @Override
    public String getQueryValue(String que) throws RemoteException {
        return commonDAO.getQueryValue(que);
    }

    @Override
    public int getQueryWitCol(String query, String col) throws RemoteException {
        return commonDAO.getQueryWitCol(query, col);
    }

    @Override
    public int selectCountQuryExe(String query) throws RemoteException {
        return commonDAO.selectCountQuryExe(query);
    }

    @Override
    public List<String> getUserName(String type) throws RemoteException {
        return commonDAO.getUserName(type);
    }

    @Override
    public HashMap getModules(String str1, String str2, String str3) throws RemoteException {
        return commonDAO.getModules(str1, str2, str3);
    }

    @Override
    public List getTherapeutic(String therapeutic) throws RemoteException {
        return commonDAO.getTherapeutic(therapeutic);
    }

    @Override
    public List<String> getQueryValue(String query, int count) throws RemoteException {
        return commonDAO.getQueryValue(query, count);
    }
}
