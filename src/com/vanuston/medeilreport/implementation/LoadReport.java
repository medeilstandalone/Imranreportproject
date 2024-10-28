/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vanuston.medeilreport.implementation;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.HashMap;
import net.sf.jasperreports.engine.JasperPrint;

/**
 *
 * @author muralikrishnan
 */
public interface LoadReport extends Remote {
public JasperPrint loadReportView(String fName,HashMap param) throws RemoteException;
}
