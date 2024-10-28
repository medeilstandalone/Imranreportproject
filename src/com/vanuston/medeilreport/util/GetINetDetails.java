package com.vanuston.medeilreport.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;

public class GetINetDetails {
    public static String getLocalIP() {
        String localIP = "";
        try {
            InetAddress thisIp = InetAddress.getLocalHost();
            localIP = thisIp.getHostAddress().toString();
        } catch (UnknownHostException uhe) {
            return "not connected";
        }
        return localIP;
    }
}
