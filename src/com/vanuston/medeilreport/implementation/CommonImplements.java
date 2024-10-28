/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vanuston.medeilreport.implementation;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author muralikrishnan
 */
public interface CommonImplements extends Remote{
String[] DistributorName(String name) throws RemoteException;
String[] ProductName(String name) throws RemoteException;
String[] CustomerName(String name) throws RemoteException;
String[] DoctorName(String name) throws RemoteException;
String[] prescriptionList(String name) throws RemoteException;
String[] ItemName(String name) throws RemoteException;
String[] Specialist(String name) throws RemoteException;
String[] AccountNumber() throws RemoteException;
String[] mfrName(String name) throws RemoteException;
String[] EmployeeID(String name) throws RemoteException;
List invoiceNumber(String name) throws RemoteException;
List batchNumber(String name) throws RemoteException;
List rackNumber(String name) throws RemoteException;
List shelfNumber(String name) throws RemoteException;
List getFormulation(String formulation) throws RemoteException;
String[] customerAddress(String name) throws RemoteException;
void querySelection(String q) throws RemoteException;
int queryExecution(String q) throws RemoteException;
List vatValues() throws RemoteException;
String getSessionID() throws RemoteException;
String getQueryValue(String que) throws RemoteException;
int getQueryWitCol(String query, String col) throws RemoteException;
int selectCountQuryExe(String query) throws RemoteException;
List<String> getUserName(String type) throws RemoteException;
HashMap getModules(String str1, String str2, String str3) throws RemoteException;
List getTherapeutic(String therapeutic) throws RemoteException;
List<String> getQueryValue(String query, int count) throws RemoteException;
}
