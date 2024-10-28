package com.vanuston.medeilreport.client;

import com.vanuston.medeilreport.implementation.CommonImplements;
import com.vanuston.medeilreport.implementation.LoadReport;
import java.rmi.ConnectException;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.net.InetAddress;
import java.net.UnknownHostException;
import javax.swing.JOptionPane;
import com.vanuston.medeilreport.util.Logger;


public class RegistryFactory {

    public static String serverHostIP;
    public static Integer serverPort = 20302;
    public static Logger log = Logger.getLogger(RegistryFactory.class, "RegistryFactory");
    private RegistryFactory() {
        super();
    }
    public static Object getClientStub(String moduleTypeString) throws RemoteException, NotBoundException {
        Registry clientRegistry = null;
        try {
        if (serverHostIP == null || serverPort == null || serverHostIP.equals("")) {            
            serverHostIP = (InetAddress.getLocalHost()).getHostAddress();
            serverPort = 20302;
        }
        if(! serverHostIP.equals((InetAddress.getLocalHost()).getHostAddress())) {
		serverHostIP = (InetAddress.getLocalHost()).getHostAddress();
                log.debug("system host sddress has been changed restart clients with this IP :"+serverHostIP +" and Port:"+serverPort);
		JOptionPane.showMessageDialog(null, "system host sddress has been changed restart clients with this IP :"+serverHostIP +" and Port:"+serverPort);
	}
        } catch (UnknownHostException ex) {
                Logger.getLogger(RegistryFactory.class,"RegistryFactory").debug("Method:getClientStub UnknownHostException_1:"+ex.getMessage());
        }
        clientRegistry = LocateRegistry.getRegistry(serverHostIP, serverPort);        
        try {
            if(moduleTypeString.equals("LoadReportStub")) {
            LoadReport LoadReportStub;
                    LoadReportStub = (com.vanuston.medeilreport.implementation.LoadReport) clientRegistry.lookup(moduleTypeString);
                    return LoadReportStub;   
            }
            else if(moduleTypeString.equals("CommonImplementStub")) {
            CommonImplements CommonImplementsStub;
                    CommonImplementsStub = (com.vanuston.medeilreport.implementation.CommonImplements) clientRegistry.lookup(moduleTypeString);
                    return CommonImplementsStub;  
            }                                
        } catch (ConnectException e) {       
            try {
                 serverHostIP = (InetAddress.getLocalHost()).getHostAddress();         
                
            } catch (UnknownHostException ex) {
                Logger.getLogger(RegistryFactory.class,"RegistryFactory").debug("Method:getClientStub UnknownHostException_2:"+ex.getMessage());
                
            }
        }
        return null;
    }
}
