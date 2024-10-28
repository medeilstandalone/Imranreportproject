package com.vanuston.medeilreport.activate;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ConnectException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import com.vanuston.medeilreport.util.Logger;


public class SendSystemInfo {
	 static Logger log = Logger.getLogger(SendSystemInfo.class, "Utilities");
//	final static String domainURL = "http://192.168.1.4:8080/medeil_manager/";
	 final static String domainURL = "http://www.medeil.com/";
	
	private SendSystemInfo() {}	
	
	public static List<String> sendProductInformation(ProductActivationBean productActivationBean) {
		SendSystemInfo systemInfo = new SendSystemInfo();
		List<String> itemsFromServer = new ArrayList<String>();
		// String domainURL = "http://192.168.0.13:8080/medilReg/";
		String servletURL = "servlet/ClientActivationInfo";
		boolean flag;
		URLConnection connection = systemInfo.requestServletURL(domainURL, servletURL);
		List<ProductActivationBean> list = new ArrayList<ProductActivationBean>();
		list.add(productActivationBean);
		
		flag = systemInfo.sendOutputStream(connection, list);
		if (flag) {
			itemsFromServer = systemInfo.getInputStream(connection);
		} else {
			itemsFromServer.add("server_error");
		}
                log.debug("Class :SendSystemInfo  Method:sendProductInformation() FromServer= "+itemsFromServer);
		return itemsFromServer;
	}
	
	@SuppressWarnings("unchecked")
	private boolean sendOutputStream(URLConnection connection, List list) {
		boolean flag = false;
		if(connection != null) {
			try {
				ObjectOutputStream output = new ObjectOutputStream(connection.getOutputStream());
				output.writeObject(list);
				output.flush();
				output.close();
				flag = true;
			} catch (ConnectException e) {
                            log.debug("Class : Class :SendSystemInfo  Method :sendOutputStream ()"+e.getMessage());
				flag = false;
			} catch (IOException e) {
				log.debug("Class : Class :SendSystemInfo  Method :sendOutputStream ()"+e.getMessage());
			}
		}
                log.debug("Class : Class :SendSystemInfo  Method :sendOutputStream() flag= "+flag);
		return flag;
	}
	
	@SuppressWarnings("unchecked")
	private List<String> getInputStream(URLConnection connection) {
		List<String> itemsFromServer = new ArrayList<String>();
		try {
		ObjectInputStream input = new ObjectInputStream(connection.getInputStream());
		itemsFromServer = (ArrayList) input.readObject();
		} catch (ClassNotFoundException e) {
			log.debug("Class : Class :SendSystemInfo  Method :getInputStream()"+e.getMessage());
		} catch (ConnectException e) {
			log.debug("Class : Class :SendSystemInfo  Method :getInputStream()"+e.getMessage());
		} catch (IOException e) {
                    log.debug("Class : Class :SendSystemInfo  Method :getInputStream()"+e.getMessage());
		}
                log.debug("Class : Class :SendSystemInfo  Method :getInputStream() FromServer= "+itemsFromServer);
		return itemsFromServer;
	}
	
	private URLConnection requestServletURL(String domainURL, String servletURL) {
		URLConnection conn = null;
		try {
			URL url;
			url = new URL(""+domainURL+""+servletURL+"");
			//URLConnection connection = url.openConnection();
			conn = url.openConnection();
			conn.setDoInput(true);
			conn.setDoOutput(true);
			conn.setUseCaches(false);
			conn.setDefaultUseCaches(false);
			conn.setRequestProperty("Content-type", "application/octet-stream");
		} catch (ConnectException e) {
			log.debug("Class : Class :SendSystemInfo  Method :requestServletURL()"+e.getMessage());
		} catch (IOException e) {
			log.debug("Class : Class :SendSystemInfo  Method :requestServletURL()"+e.getMessage());
		}
                log.debug("Class : Class :SendSystemInfo  Method :requestServletURL() conn= "+conn);
		return conn;
	}

        public static String getEthernetMacAddress() {
		// macAddress = "00-01-02-AF-BE-CD" If not get MAC Address return default MAC Address.
		String macAddress = null;
		try {
		String command = "ipconfig /all";
		Process pid = Runtime.getRuntime().exec(command);
		BufferedReader in =new BufferedReader(new InputStreamReader(pid.getInputStream()));
		String regEx = ".*Ethernet adapter Local Area Connection.*";
		while (true) {
			String line = in.readLine();
			if (line == null)
			break;
			boolean flag = false;
			flag = Pattern.matches(regEx, line);
			if (flag) {
				while (true) {
					String macLine = in.readLine();
					if (macLine == null)
					break;
					Pattern p = Pattern.compile(".*Physical Address.*: (.*)");
					Matcher m = p.matcher(macLine);
					if (m.matches()) {
						macAddress = m.group(1);
						break;
					}
				}
			}
			if (macAddress != null) {
				break;
			}
		}

	in.close();
		} catch (Exception e) {
			e.printStackTrace();
		} log.debug("System String = "+macAddress);

	
	if (macAddress == null || macAddress.length() < 1) {
		macAddress = "00-01-02-AF-BE-CD";
	}
                 log.debug("System Manual  String: = "+macAddress);
	return macAddress;
	}

//	public static String getMacAddress() throws IOException {
//		String macAddress = null;
//            try {
//                String command = "ipconfig /all";
//                Process pid = Runtime.getRuntime().exec(command);
//                BufferedReader in = new BufferedReader(new InputStreamReader(pid.getInputStream()));
//                while (true) {
//                    String line = in.readLine();
//                    if (line == null) {
//                        break;
//
//                    }
//                    Pattern p = Pattern.compile(".*Physical Address.*: (.*)");
//                    Matcher m = p.matcher(line);
//                    if (m.matches()) {
//                        macAddress = m.group(1);
//                        break;
//                    }
//                }
//                in.close();
//            } catch (IOException iOException) {
//                log.debug("Class : Class :SendSystemInfo  Method :getMacAddress() "+iOException.getMessage());
//            }
//	return macAddress;
//	}

public static String getMotherboardSN() {
//String result = "";
//try {
//File file = File.createTempFile("Board_Serial",".vbs");
//file.deleteOnExit();
//FileWriter fw = new java.io.FileWriter(file);
//
//String vbs =
//"Set objWMIService = GetObject(\"winmgmts:\\\\.\\root\\cimv2\")\n"
//+ "Set colItems = objWMIService.ExecQuery _ \n"
//+ " (\"Select * from Win32_BaseBoard\") \n"
//+ "For Each objItem in colItems \n"
//+ " Wscript.Echo objItem.SerialNumber \n"
//+ " exit for  \n"
//+ "Next \n";
//
//fw.write(vbs);
//fw.close();
//Process p = Runtime.getRuntime().exec("cscript //NoLogo " + file.getPath());
//BufferedReader input =
//new BufferedReader
//(new InputStreamReader(p.getInputStream()));
//String line;
//while ((line = input.readLine()) != null) {
//result += line;
//}
//input.close();
//}
//catch(Exception e){
//log.debug("Class : Class :SendSystemInfo  Method :getMotherboardSN() "+e.getMessage());
//}
//log.debug("Class : Class :SendSystemInfo  Method :MotherboardSN="+result);
return "AZRQ93000W2V";
}

  public static String HDD_DriveSN(String drive) {
//  String result = "";
//    try {
//      File file = File.createTempFile("HDD_Serial",".vbs");
//      file.deleteOnExit();
//      FileWriter fw = new java.io.FileWriter(file);
//
//      String vbs = "Set objFSO = CreateObject(\"Scripting.FileSystemObject\")\n"
//                  +"Set colDrives = objFSO.Drives\n"
//                  +"Set objDrive = colDrives.item(\"" + drive + "\")\n"
//                  +"Wscript.Echo objDrive.SerialNumber";
//      fw.write(vbs);
//      fw.close();
//      Process p = Runtime.getRuntime().exec("cscript //NoLogo " + file.getPath());
//      BufferedReader input =
//        new BufferedReader
//          (new InputStreamReader(p.getInputStream()));
//      String line;
//      while ((line = input.readLine()) != null) {
//         result += line;
//      }
//      input.close();
//    }
//    catch(Exception e){
//        log.debug("Class : Class :SendSystemInfo  Method :HDD_DriveSN(String drive) "+e.getMessage());
//    }
//  log.debug("Class : Class :SendSystemInfo  Method :HDD_DriveSN="+result);
   return "457401905";
  }
}
