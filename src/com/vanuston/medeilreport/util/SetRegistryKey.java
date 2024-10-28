package com.vanuston.medeilreport.util;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.prefs.Preferences;

public class SetRegistryKey {

    public static final String DATE_FORMAT_NOW = "yyyyMMdd";
    static SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
    static Calendar cal = Calendar.getInstance();
    private static Preferences userRoot = Preferences.userRoot();
    private static Preferences systemRoot = Preferences.systemRoot();
    static String convHex = "";
    static Logger log = Logger.getLogger(SetRegistryKey.class, "utilities");

    public static String setValue() {
        try {
            userRoot.put("Installed", toHex(sdf.format(cal.getTime()).toString()));
            systemRoot.put("Installed", toHex(sdf.format(cal.getTime()).toString()));
            userRoot.put("Version", "1.0");
            systemRoot.put("Version", "1.0");
        } catch (Exception ex) {
            String msg = "Class : SetRegistryKey  Method :setValue Exception:" + ex.getMessage();
            log.debug(msg);
        }
        return toHex(sdf.format(cal.getTime()).toString());
    }

    public static void setValue(String actKey, String licHolder, String appPath) {
        try {
            userRoot.put("Installed", toHex(sdf.format(cal.getTime()).toString()));
            systemRoot.put("Installed", toHex(sdf.format(cal.getTime()).toString()));
            userRoot.put("Version", "1.0");
            systemRoot.put("Version", "1.0");
            userRoot.put("KeyA", toHex(actKey.toString()));
            systemRoot.put("KeyA", toHex(actKey.toString()));
            userRoot.put("LicHold", toHex(licHolder.toString()));
            systemRoot.put("LicHold", toHex(licHolder.toString()));
            userRoot.put("AppPath", toHex(appPath.toString()));
            systemRoot.put("AppPath", toHex(appPath.toString()));
        } catch (Exception ex) {
            String msg = "Class : SetRegistryKey  Method :setValue Exception: " + ex.getMessage();
            log.debug(msg);
        }
    }

    public static String toHex(String arg) {
        try {
            convHex = String.format("%x", new BigInteger(arg.getBytes()));
        } catch (Exception ex) {
            String msg = "Class : SetRegistryKey  Method :toHex Exception: " + ex.getMessage();
            log.debug(msg);
        }
        return convHex.toString();
    }
}
