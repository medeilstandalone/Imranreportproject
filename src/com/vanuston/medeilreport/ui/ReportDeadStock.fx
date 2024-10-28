
package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.io.File;
import javafx.scene.image.Image;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;
import com.vanuston.medeilreport.ui.calendar.view.FXCalendar;
import com.vanuston.medeilreport.ui.calendar.theme.GrayTheme;
import com.vanuston.medeilreport.util.DateUtils;
import java.text.SimpleDateFormat;

public class ReportDeadStock
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var Type1TextboxW=bind CommonDeclare.Type1TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var log:Logger=Logger.getLogger(ReportDeadStock.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var listH=0.0;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var panelCalenderLX:Number;
var panelCalenderLY:Number;
var ImageCalenderLX=bind C1LX+125+Type3TextboxW+2 on replace{
    panelCalenderLX = ImageCalenderLX + 30.0;
    };
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_listDistributorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: bind listH
    }
    public-read def listDistributorName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 249.0
        layoutInfo: __layoutInfo_listDistributorName
        onKeyPressed: listDistributorNameOnKeyPressed
        items: [ "Item 1", "Item 2", "Item 3", ]
    }
    
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
    }
    
    def __layoutInfo_panel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
        height: bind panelH
    }
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_panel
    }
    
    public-read def panelAlert: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelAlertLX
        layoutY: bind panelAlertLY
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+125
        layoutY: 325.0
        layoutInfo: __layoutInfo_txtToDate
        editable: false
        font: Arial_14
    }
    
    def __layoutInfo_txtFromDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtFromDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+125
        layoutY: 275.0
        layoutInfo: __layoutInfo_txtFromDate
        editable: false
        font: Arial_14
    }
    
    public-read def lblToDate: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX
        layoutY: 325.0
        text: "To Date"
        font: Arial_14
    }
    
    public-read def lblFromDate: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX
        layoutY: 275.0
        text: "From Date"
        font: Arial_14
    }
    
    def __layoutInfo_Distributor: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 150.0
    }
    public-read def Distributor: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-70
        layoutY: 225.0
        layoutInfo: __layoutInfo_Distributor
        text: "Enter Distributor Name"
        font: Arial_14
    }
    
    def __layoutInfo_txtDistributor: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
    }
    public-read def txtDistributor: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 225.0
        layoutInfo: __layoutInfo_txtDistributor
        onKeyPressed: txtDistributorOnKeyPressed
        onKeyReleased: txtDistributorOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    public-read def Arial_Bold_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 14.0
    }
    
    public-read def Arial_Bold_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
    }
    
    public-read def Arial_20: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 20.0
    }
    
    public-read def Arial_Bold_20: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 20.0
    }
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def DistributorList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 175.0
        onKeyPressed: DistributorListOnKeyPressed
        onMouseClicked: DistributorListOnMouseClicked
        text: "DistributorwiseList"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def Complete_List: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 125.0
        onKeyPressed: Complete_ListOnKeyPressed
        onMouseClicked: Complete_ListOnMouseClicked
        text: "Complete List"
        font: Arial_14
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
        opacity: 1.0
        layoutX: 0.0
        layoutY: 1.0
        layoutInfo: __layoutInfo_label
        effect: null
        text: "Immovable Stock Report"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def image5: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    def __layoutInfo_imageView: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 0.0
    }
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: bind C1LX+125+Type1TextboxW-2
        layoutY: 225.0
        layoutInfo: __layoutInfo_imageView
        onMouseClicked: imageViewOnMouseClicked
        blocksMouse: true
        image: image5
        fitWidth: 24.0
        fitHeight: 25.0
    }
    
    public-read def image6: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Doctor.png"
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image6
        fitWidth: bind bottonImageW
        fitHeight: bind bottonImageH
    }
    
    def __layoutInfo_button: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def button: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+25
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button
        onKeyPressed: buttonOnKeyPressed
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: buttonAction
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 275.0
        onMouseClicked: imgFromOnMouseClicked
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 325.0
        onMouseClicked: imgToOnMouseClicked
        image: image2
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def PanelCustomerLedger: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button, txtDistributor, Distributor, imageView, Complete_List, DistributorList, lblFromDate, lblToDate, txtFromDate, txtToDate, imgFrom, imgTo, listDistributorName, FromPanel, panel, panelAlert, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCustomerLedger, ]
    }
    // </editor-fold>//GEN-END:main

    function imgToOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        FromPanel.visible=true;
        frmFlag=false;
         if(not toFlag)
        {
           panelCalenderLX = imgTo.layoutX + 30.0;
           panelCalenderLY = imgTo.layoutY-30.0;
            if(txtToDate.rawText.trim()!=null)
            {
                var dat = txtToDate.rawText.trim().split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);
            }
            else{
                var dat = DateUtils.now("dd-MM-yyyy").split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);

            }
            fxCalendar.visible=true;
            toFlag=true;
        }else
        {
            fxCalendar.visible=false;

         }
         }

    function imgFromOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
       FromPanel.visible=true;
       toFlag=false;
       if(not frmFlag)
        {
            panelCalenderLX =imgFrom.layoutX + 30.0;
            panelCalenderLY = imgFrom.layoutY-30.0;
            if(txtFromDate.rawText.trim()!=null)
            {
                var dat = txtFromDate.rawText.trim().split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);
            }
            else{
                var dat = DateUtils.now("dd-MM-yyyy").split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);

            }
            fxCalendar.visible=true;
            frmFlag=true;
        }else
        {
            fxCalendar.visible=false;

         }
         }

    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("MR7".trim())){
            shortcut(KyEvent.code);
            }
            }
    function buttonOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function DistributorListOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function Complete_ListOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }
    def RepViewer = ReportViewer{
        heading: bind label.text;
        };
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            buttonAction();
        }
        }
    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        
        getDistributor(KeyCode.VK_DOWN,"");
    }

    function listDistributorNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if(listDistributorName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listDistributorName.selectFirstRow();
    }

    function txtDistributorOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code != KeyCode.VK_F10 or event.code != KeyCode.VK_ENTER)
         {
        getDistributor(event.code,txtDistributor.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)
                listDistributorName.requestFocus();
                listDistributorName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listDistributorName.visible = false;
           }
}
    function txtDistributorOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtDistributor.requestFocus();
    }
        shortcut(event.code);
    }
function getDistributor(kcode: javafx.scene.input.KeyCode,sname:String) {

var distName: String[] = [];
       listDistributorName.visible = true;
       distName =  commonController.DistributorName(sname);
       listDistributorName.clearSelection();
       listDistributorName.items = distName;
       var size = listDistributorName.items.size();
       listDistributorName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtDistributor.text = "{listDistributorName.selectedItem}";
                        button.requestFocus();
                       listDistributorName.visible = false;
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listDistributorName.selectedIndex == 0) {
                           listDistributorName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                       listDistributorName.visible = false;
                        txtDistributor.requestFocus();
                    }
                };
       listDistributorName.onMouseClicked = function(e) {
                   txtDistributor.text = "{listDistributorName.selectedItem}";
                   button.requestFocus();
                   listDistributorName.visible = false;
                }
        if(size<10)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size==0)
                listDistributorName.visible=false;
         }else{
             listH = 245;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
           listDistributorName.visible = false;
           txtDistributor.requestFocus();
    }
    function DistributorListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {        
        Distributor.visible=true;
        txtDistributor.visible=true;
        imageView.visible=true;
          }

    function Complete_ListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtDistributor.text="";
        Distributor.visible=false;
        txtDistributor.visible=false;
        imageView.visible=false;
        listDistributorName.visible=false;
        }
     function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
        }
        def CustomAlert=CustomAlert{};

        function showAlertbox():Void{
        panelAlert.visible=true;
        delete panelAlert.content;
        insert CustomAlert.getDesignRootNodes() into panelAlert.content;
        CustomAlert.show();
        }
        
     function FXinfo(msg:String):Void{
        CustomAlert.ShowInfo("Debit Note List",msg);
        showAlertbox();
        }
        
     function buttonAction(): Void {        
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        var sdf = new SimpleDateFormat("dd-MM-yyyy");
        var sdf1 = new SimpleDateFormat("yyyy-MM-dd");      
       
        try
        {
        if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
        {
            FXinfo("Please Enter the From Date");
        }else if (txtToDate.text==null or txtToDate.text.trim().length()==0)
        {
            FXinfo("Please Enter the To Date");
        }        
        else 
        {
            var sd=sdf1.format(sdf.parse(txtFromDate.text));
            var ed=sdf1.format(sdf.parse(txtToDate.text));
            params.put("fromdate",sd);
            params.put("todate",ed);
            if(Complete_List.selected == true) {
            insRep();
            panel.visible = true;
            params.put("type1",'complete_list');
            params.put("distname",'');
            params.put("REPORTS_DIR",image);
            RepViewer.showReport("/reportfiles/dead_stock.jasper",params);
            }
            else if(DistributorList.selected == true)
            {
                if (txtDistributor.rawText.trim() == ""){
                    FXinfo("Please enter the Distributor Name");
                }
                else {
                    insRep();
                    panel.visible = true;
                    params.put("type1",'distributor_list');
                    params.put("distname",txtDistributor.rawText.trim());
                    params.put("REPORTS_DIR",image);
                    RepViewer.showReport("/reportfiles/dead_stock.jasper",params);
                }
            }            
        }        
        commonController.queryExecution("CALL pro_userlog('Dead Stock','{button.text}')");
        }
   catch (e:Exception)
    {
        var msg:String="Class : ReportComplete_List method : buttonAction()   = {e.getMessage()}";
        log.debug(msg);        
    }
    }

    var visit = bind fxCalendar.visible on replace{
    if(frmFlag and not visit)
    {
        getDate(0);
    }else if(toFlag and not visit)
    {
        getDate(1);
    }
 };
function getDate(i : Integer)
{
    if(i==0)
    {
                txtFromDate.text=fxCalendar.getSelectedDate();
                frmFlag=false;
                toFlag=false;
                txtFromDate.requestFocus();
    }
    else if(i==1)
    {
                txtToDate.text=fxCalendar.getSelectedDate();
                toFlag=false;
                frmFlag=false;
                txtToDate.requestFocus();
    }
  }
 public function Startup() : Void {
     fxCalendar.visible=false;
     FromPanel.content=[fxCalendar,];
}
}
