/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vanuston.medeilreport.controller;

import com.vanuston.medeilreport.dao.LoadReportDAO;
import com.vanuston.medeilreport.implementation.LoadReport;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.HashMap;
import javax.swing.JComponent;
import net.sf.jasperreports.engine.JasperPrint;

/**
 *
 * @author muralikrishnan
 */
public class LoadReportController extends UnicastRemoteObject implements LoadReport {
    public LoadReportController() throws RemoteException {
        super();
    }

@Override
public JasperPrint loadReportView(String fName,HashMap param) {
 LoadReportDAO loadReportdao = new LoadReportDAO();
 return loadReportdao.loadReportView(fName, param);
}

}
