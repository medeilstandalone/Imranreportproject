/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vanuston.medeilreport.dao;

import com.vanuston.medeilreport.implementation.LoadReport;
import java.io.File;
import java.util.HashMap;
import com.vanuston.medeilreport.util.DBConnection;
import com.vanuston.medeilreport.util.Logger;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 *
 * @author muralikrishnan
 */
public class LoadReportDAO implements LoadReport {

static Logger log = Logger.getLogger(LoadReportDAO.class, "Utilities");
@Override
public JasperPrint loadReportView(String fName,HashMap param){    
    JasperPrint jasperPrint=null;
    try {
        String path = new File(".").getCanonicalFile().toString();
        String reportSource = path + fName;
        String imagePath = path+"/reportfiles/Medil Logo.png";
        param.put("REPORTS_DIR",imagePath);
        JasperReport report = (JasperReport) JRLoader.loadObject(reportSource);
        jasperPrint = JasperFillManager.fillReport(report, param, DBConnection.getStatement().getConnection());
     }
        catch (Exception ex) {
            String ss = "Class : LoadReportDAO  Method  : loadReportView():StringException:" + ex.getMessage();
            log.debug(ss);
        }
    return jasperPrint;
}

}

