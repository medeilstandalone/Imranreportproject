package com.vanuston.medeilreport.ui;
import java.lang.*;
import java.util.*;
import java.io.File;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportDistributorList
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var textW=bind panelW-200;
var LX=bind (panelW-textW)/2;

var log:Logger=Logger.getLogger(ReportDistributorList.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_panel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
        height: bind panelH
    }
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_panel
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
    }
    
    public-read def Arial_Bold_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 14.0
    }
    
    public-read def Arial_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 16.0
    }
    
    def __layoutInfo_label2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind textW
        height: 61.0
    }
    public-read def label2: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind LX
        layoutY: 178.0
        layoutInfo: __layoutInfo_label2
        text: "This report displays the list of the distributors to whom purchase has been done along with their details such as Address,Phone number, Email ID and Credit Days."
        font: Arial_16
        textWrap: true
    }
    
    public-read def Arial_Bold_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
    }
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
    }
    
    public-read def Arial_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 25.0
    }
    
    def __layoutInfo_label: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
    }
    public-read def label: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 0.0
        layoutY: 1.0
        layoutInfo: __layoutInfo_label
        effect: null
        text: "Distributor List"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Balance sheet.png"
    }
    
    public-read def imagebalance: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Doctor.png"
        backgroundLoading: false
    }
    
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutY: 0.0
        image: imagebalance
        fitWidth: bind bottonImageW
        fitHeight: bind bottonImageH
    }
    
    def __layoutInfo_button1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW
        height: bind bottonH
    }
    public-read def button1: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+20
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button1
        onKeyPressed: button1OnKeyPressed
        effect: reflectionEffect
        graphic: imageView
        text: "Report [F10]"
        font: Arial_Bold_14
        textAlignment: javafx.scene.text.TextAlignment.LEFT
        action: button1Action
    }
    
    public-read def PanelDistributorList: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button1, label2, panel, ]
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelDistributorList, ]
    }
    // </editor-fold>//GEN-END:main

        def RepViewer = ReportViewer{
        heading: bind label.text;
        };
        var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("MR2".trim())){
            shortcut(KyEvent.code);
            }
            }
        function button1OnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
            shortcut(event.code);
            }
            public function shortcut(kcode:KeyCode): Void {
            if (kcode == CommonDeclare.repKey) {
            button1Action();
            }
            }
        function button1Action(): Void {
        {
        try
        {
        insRep();
        panel.visible = true;
        var image : String   = "{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
        params1.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/dist_info.jasper",params1);
       commonController.queryExecution("CALL pro_userlog('Distributor List','{button1.text}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportDistributorList method : button1Action()   = {e.getMessage()}";
        log.debug(msg);
        
        }
        }
        }
function insRep():Void{
       delete panel.content;
       insert RepViewer.getDesignRootNodes() into panel.content;
}
}


