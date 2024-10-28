
package com.vanuston.medeilreport.util;
import java.io.File;
import java.lang.Runtime;
import java.lang.Exception;
import javafx.util.Properties;
import java.io.FileInputStream;
import java.io.FileOutputStream;
    var log: Logger = Logger.getLogger(Tools.class, "Utilities");

 public function Help():Void{
        LoadFile("MedeilHelp.chm");
 }
 public function EnglishManual():Void{
        LoadFile("Medeil.pdf");
}
 public function Tips():Void{
        LoadFile("FAQs.pdf");
 }
   public function Reset_Reports_Launch():Void{
    try {
    var path: String = new File(".").getCanonicalPath().toString();
    var prop: Properties = new Properties();
    prop.load(new FileInputStream("{path}/config/config.properties"));
    prop.put("Medeil_Reports_Running", "0");
    prop.store(new FileOutputStream("{path}/config/config.properties"));
     } catch (e) {
        log.debug("Class : Tools Method : Reset_Reports_Launch() Exception : {e.getMessage()}");
     }
    } 
function LoadFile(path:String):Void{
        try
        {
           var  FilePath:String="{new File(".").getCanonicalFile()}\\{path}";
            if(new File(FilePath).exists())
            {
                Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler {FilePath}");

             }else{
                 log.debug("Class : Tools Method : LoadFile() Unable to load file.Check file path : {FilePath}");
             }
        }
        catch (e:Exception)
        {
        log.debug(e);
     }
}

 public function CheckUpdate():Void{
        try{
            java.awt.Desktop.getDesktop().browse(java.net.URI.create("http://www.medeil.com//knowledge_center.jsp"));
       }catch(e){
            log.debug("Class : Tools Method : CheckUpdate() Error Occured while launcing http://www.medeil.com//knowledge_center.jsp in Main = {e.getMessage()}");
        }
    }
