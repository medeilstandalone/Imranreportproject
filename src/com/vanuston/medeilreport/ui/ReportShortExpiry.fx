package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.io.File;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportShortExpiry
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var seperatorW=bind CommonDeclare.seperatorW;
var Type1TextboxW=bind CommonDeclare.Type1TextboxW;
var Type2TextboxW=bind CommonDeclare.Type2TextboxW;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;

var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;

var month:String[]=["Months","1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
var days:String[]=["Days","1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"];
var weeks:String[]=["Weeks","1","2","3", "4", "5", "6", "7", "8", "9", "10", "11", "12","13","14","15","16","17","18","19","20"];
var log:Logger=Logger.getLogger(ReportShortExpiry.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var listH=0.0;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def chMonth: javafx.scene.control.ChoiceBox = javafx.scene.control.ChoiceBox {
        layoutX: bind C1LX+60
        layoutY: 230.0
        onKeyPressed: chMonthOnKeyPressed
        items: bind month
    }
    
    public-read def chDay: javafx.scene.control.ChoiceBox = javafx.scene.control.ChoiceBox {
        layoutX: bind C1LX+60
        layoutY: 280.0
        onKeyPressed: chDayOnKeyPressed
        items: bind days
    }
    
    public-read def chWeek: javafx.scene.control.ChoiceBox = javafx.scene.control.ChoiceBox {
        layoutX: bind C1LX+60
        layoutY: 330.0
        onKeyPressed: chWeekOnKeyPressed
        items: bind weeks
    }
    
    def __layoutInfo_listDistributorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: bind listH
    }
    public-read def listDistributorName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+100
        layoutY: 190.0
        layoutInfo: __layoutInfo_listDistributorName
        onKeyPressed: listDistributorNameOnKeyPressed
        items: [ "Item 1", "Item 2", "Item 3", ]
    }
    
    public-read def panelAlert: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelAlertLX
        layoutY: bind panelAlertLY
    }
    
    def __layoutInfo_panel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
        height: bind panelH
    }
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_panel
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 14.0
        oblique: false
        embolden: false
    }
    
    public-read def Arial_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 18.0
    }
    
    public-read def Arial_Bold_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 18.0
    }
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdoWeek: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+10
        layoutY: 330.0
        onMouseClicked: rdoWeekOnMouseClicked
        text: ""
        toggleGroup: toggleGroup
    }
    
    public-read def rdoDay: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+10
        layoutY: 280.0
        onMouseClicked: rdoDayOnMouseClicked
        text: ""
        toggleGroup: toggleGroup
    }
    
    public-read def rdoMonth: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+10
        layoutY: 230.0
        onMouseClicked: rdoMonthOnMouseClicked
        text: ""
        font: null
        toggleGroup: toggleGroup
        selected: true
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
        text: "Short Expiry stock Summary"
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
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def button1: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button1
        effect: reflectionEffect
        graphic: imageView
        text: "Report [F10]"
        font: Arial_14
        textAlignment: javafx.scene.text.TextAlignment.LEFT
        action: button1Action
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def toggleGroup2: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: bind C1LX+100+txtDistributorName.width
        layoutY: 170.0
        onMouseClicked: imageView2OnMouseClicked
        image: image2
        fitWidth: 21.0
        fitHeight: 23.0
    }
    
    public-read def Arial_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
    }
    
    def __layoutInfo_txtDistributorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: 25.0
    }
    public-read def txtDistributorName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+100
        layoutY: 170.0
        layoutInfo: __layoutInfo_txtDistributorName
        onKeyPressed: txtDistributorNameOnKeyPressed
        onKeyReleased: txtDistributorNameOnKeyReleased
        font: Arial_12
    }
    
    public-read def Arial_142: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 14.0
    }
    
    public-read def lblDistributor: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-100
        layoutY: 170.0
        text: "Enter Distributor Name"
        font: Arial_142
        textFill: javafx.scene.paint.Color.BLACK
    }
    
    public-read def rdoCompleteList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX-70
        layoutY: 110.0
        onMouseClicked: rdoCompleteListOnMouseClicked
        text: "Complete List"
        font: Arial_142
        toggleGroup: toggleGroup2
        selected: true
    }
    
    public-read def rdoDistributorList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+120
        layoutY: 110.0
        onMouseClicked: rdoDistributorListOnMouseClicked
        text: "Distributorwise List"
        font: Arial_142
        toggleGroup: toggleGroup2
    }
    
    public-read def PanelBannedDrug: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button1, rdoMonth, rdoDay, rdoWeek, chMonth, chDay, chWeek, rdoDistributorList, rdoCompleteList, lblDistributor, txtDistributorName, imageView2, listDistributorName, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelBannedDrug, ]
    }
    // </editor-fold>//GEN-END:main

    function rdoCompleteListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtDistributorName.visible = false;
        lblDistributor.visible = false;
        imageView2.visible = false;
         }

    function rdoDistributorListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtDistributorName.visible = true;
        lblDistributor.visible = true;
        imageView2.visible = true;
         }

    function txtDistributorNameOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
         if (event.code != KeyCode.VK_F10 or event.code != KeyCode.VK_ENTER)
         {
            getDistributor(event.code,txtDistributorName.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)  {
                listDistributorName.requestFocus();
                listDistributorName.selectFirstRow();
            }
        }
        else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listDistributorName.visible = false;
            chMonth.requestFocus();
           }
    }

    function txtDistributorNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
            if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtDistributorName.requestFocus();
            }
            shortcut(event.code);
    }

    function listDistributorNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if(listDistributorName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listDistributorName.selectFirstRow();
         }

    function imageView2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        getDistributor(KeyCode.VK_DOWN,"");
         }
         
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("StkR5".trim())){
            shortcut(KyEvent.code);
            }
            }
    def CustomAlert=CustomAlert{};
        function showAlertbox():Void{
        panelAlert.visible=true;
        delete panelAlert.content;
        insert CustomAlert.getDesignRootNodes() into panelAlert.content;
        CustomAlert.show();
        }
        function FXinfo(msg:String):Void{
        CustomAlert.ShowInfo("Short Expiry List",msg);
        showAlertbox();
        }
    function chWeekOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function chDayOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function chMonthOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }
    def RepViewer = ReportViewer{
        heading: bind label.text;
        };
    function rdoWeekOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        chDay.select(0);
        chMonth.select(0);
         }

    function rdoDayOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        chWeek.select(0);
        chMonth.select(0);
         }

    function rdoMonthOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        chDay.select(0);
        chWeek.select(0);
         }
    function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
         }
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            button1Action();
        }
        }

    function getDistributor(kcode: javafx.scene.input.KeyCode,dname:String) {
        var distName: String[] = [];
        listDistributorName.visible = true;
        distName =  commonController.DistributorName(dname);
        listDistributorName.clearSelection();
        listDistributorName.items = distName;
        var size =  listDistributorName.items.size();
        listDistributorName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtDistributorName.text = "{listDistributorName.selectedItem}";
                        listDistributorName.visible = false;
                        chMonth.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listDistributorName.selectedIndex == 0) {
                            listDistributorName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listDistributorName.visible = false;
                        txtDistributorName.requestFocus();
                    }
                };
        listDistributorName.onMouseClicked = function(e) {
                    txtDistributorName.text = "{listDistributorName.selectedItem}";
                    listDistributorName.visible = false;
                    chMonth.requestFocus();
                }
        if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listDistributorName.visible=false;
         }else{
             listH = 295;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listDistributorName.visible = false;
            txtDistributorName.requestFocus();
    }
        function button1Action(): Void {
        {
        if(chMonth.selectedIndex == 0 and chDay.selectedIndex == 0 and chWeek.selectedIndex == 0)
        {
        FXinfo("Please select an option from the choice box");
        }
        else if(rdoDistributorList.selected==true and txtDistributorName.text.equals("")) {
        FXinfo("Please enter the distributor Name");
        }
        else
        {
        try
        {
        insRep();
        panel.visible = true;
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        params.put("REPORTS_DIR",image);
        if(rdoCompleteList.selected==true) {
        params.put("selecttype","");
        params.put("distname","");
        }
        else {
        params.put("selecttype","distributor");
        params.put("distname",txtDistributorName.rawText.trim());    
        }
        if(rdoMonth.selected == true)
        {
        params.put("type1",'months');
        params.put("number",chMonth.selectedItem);        
        }
        else if(rdoDay.selected == true)
        {
        chMonth.select(0);
        chWeek.select(0);
        params.put("type1", 'days');
        params.put("number",chDay.selectedItem);        
        }
        else if(rdoWeek.selected == true)
        {
        chDay.select(0);
        chMonth.select(0);
        params.put("type1", 'weeks');
        params.put("number",chWeek.selectedItem);        
        }        
        RepViewer.showReport("/reportfiles/short_expiry.jasper",params);
        commonController.queryExecution("CALL pro_userlog('Short Expiry','{button1.text}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportShortExpiry method : button1Action()   = {e.getMessage()}";
        log.debug(msg);        
        }
        }        
        }
        }
 }
