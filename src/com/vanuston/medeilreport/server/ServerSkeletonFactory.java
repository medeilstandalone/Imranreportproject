package com.vanuston.medeilreport.server;

import java.io.Serializable;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;
import com.vanuston.medeilreport.controller.*;
import com.vanuston.medeilreport.implementation.*;
import com.vanuston.medeilreport.util.Logger;

public class ServerSkeletonFactory extends UnicastRemoteObject implements Serializable {

    /**
     *
     */

    private static final long serialVersionUID = 1L;

    public ServerSkeletonFactory() throws RemoteException {
        super();
    }

    public static void run(Integer serverPort) throws RemoteException, NotBoundException {
       try {
	    Logger.getLogger(ServerSkeletonFactory.class, "ServerSkeletonFactory").debug("IP:" + (InetAddress.getLocalHost()).getHostAddress() + ", port:"+serverPort);
	} catch (UnknownHostException ex) {
	    Logger.getLogger(ServerSkeletonFactory.class, "ServerSkeletonFactory").debug("Method:run UnknownHostException:"+ex.getMessage());
	}
        Registry serverRegistry = LocateRegistry.createRegistry(serverPort);

        LoadReport LoadReportSkeleton = new LoadReportController();
        serverRegistry.rebind("LoadReportStub", LoadReportSkeleton);

        CommonImplements CommonImplementSkeleton = new CommonController();
        serverRegistry.rebind("CommonImplementStub", CommonImplementSkeleton);
    }

    public String getIPAddress() {
        String serverHostIP = "";
        try {
            serverHostIP = (InetAddress.getLocalHost()).getHostAddress();
        } catch (UnknownHostException e) {
            Logger.getLogger(ServerSkeletonFactory.class, "ServerSkeletonFactory").debug("Method:getIPAddress Exception:"+e.getMessage());
        }
        return serverHostIP;
    }
}
