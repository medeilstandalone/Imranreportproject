package com.vanuston.medeilreport.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class Theme {

    static Logger log = Logger.getLogger(Theme.class, "Utilities");
//            log.debug("Method: copyfile    Exception : " + ex.getMessage());

    public static String getStyle(){
        String style="DefaultTheme";
           try {
           String path = new File(".").getCanonicalPath().toString();
           Properties prop = new Properties();
           prop.load(new FileInputStream(path+"/config/config.properties"));
           style=prop.getProperty("Medeil_Style");
           } catch (IOException iOException) {
        log.debug("Class : Theme  Method : getStyle() Exception :"+iOException.getMessage());
       }
   return style;
    }
}
