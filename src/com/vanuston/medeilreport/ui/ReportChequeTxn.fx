
package com.vanuston.medeilreport.ui;

import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.text.SimpleDateFormat;
import java.io.File;
import javafx.scene.image.Image;
import com.vanuston.medeilreport.ui.calendar.view.FXCalendar;
import com.vanuston.medeilreport.ui.calendar.theme.GrayTheme;
import com.vanuston.medeilreport.util.DateUtils;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;




public class ReportChequeTxn {
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var panelW=bind CommonDeclare.panelFormW ;

var panelH=bind CommonDeclare.panelFormH ;
var C1LX=bind(38.88182973*panelW)/100;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var panelCalenderLX:Number;
var panelCalenderLY:Number;
var ImageCalenderLX=bind C1LX+200+Type3TextboxW+2 ;
var log:Logger=Logger.getLogger(ReportChequeTxn.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var sd:String;
var ed:String;
var sdf = new SimpleDateFormat("dd-MM-yyyy");
var sdf1 = new SimpleDateFormat("yyyy-MM-dd");

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_cboAccNo: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: 22.0
    }
    public-read def cboAccNo: javafx.scene.control.ChoiceBox = javafx.scene.control.ChoiceBox {
        visible: bind chkAcNo.selected
        layoutX: 150.0
        layoutY: 0.0
        layoutInfo: __layoutInfo_cboAccNo
        items: bind AccountNo
    }
    
    def __layoutInfo_cboTxnType: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 100.0
        height: 22.0
    }
    public-read def cboTxnType: javafx.scene.control.ChoiceBox = javafx.scene.control.ChoiceBox {
        visible: bind chkTxnType.selected
        layoutX: 150.0
        layoutY: 40.0
        layoutInfo: __layoutInfo_cboTxnType
        items: bind TxnType
    }
    
    def __layoutInfo_cboStatus: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 150.0
        height: 22.0
    }
    public-read def cboStatus: javafx.scene.control.ChoiceBox = javafx.scene.control.ChoiceBox {
        visible: bind chkChqueStatus.selected
        layoutX: 150.0
        layoutY: 80.0
        layoutInfo: __layoutInfo_cboStatus
        items: bind Status
    }
    
    def __layoutInfo_FromPanel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 0.0
    }
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        layoutInfo: __layoutInfo_FromPanel
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
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.011764706
        green: 0.5019608
        blue: 0.7607843
    }
    
    public-read def Arial_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
    }
    
    def __layoutInfo_txtTo: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 100.0
    }
    public-read def txtTo: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: 200.0
        layoutY: 0.0
        layoutInfo: __layoutInfo_txtTo
        styleClass: "text-box"
        text: ""
        editable: false
        font: Arial_12
    }
    
    def __layoutInfo_txtFrom: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 100.0
    }
    public-read def txtFrom: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: 40.0
        layoutY: 0.0
        layoutInfo: __layoutInfo_txtFrom
        text: ""
        editable: false
        font: Arial_12
    }
    
    public-read def Arial_Bold_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
    }
    
    public-read def chkAcNo: javafx.scene.control.CheckBox = javafx.scene.control.CheckBox {
        layoutX: 0.0
        layoutY: 0.0
        text: "Account Number"
        font: Arial_14
    }
    
    public-read def chkTxnType: javafx.scene.control.CheckBox = javafx.scene.control.CheckBox {
        layoutX: 0.0
        layoutY: 40.0
        text: "Transaction Type"
        font: Arial_14
    }
    
    public-read def chkChqueStatus: javafx.scene.control.CheckBox = javafx.scene.control.CheckBox {
        layoutY: 80.0
        text: "Cheque Status"
        font: Arial_14
    }
    
    public-read def Arial_Bold_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 14.0
    }
    
    public-read def Arial_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 16.0
    }
    
    public-read def Arial_Bold_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
    }
    
    public-read def Arial_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 18.0
    }
    
    public-read def Arial_Bold_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 18.0
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
    
    public-read def Arial_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 25.0
    }
    
    def __layoutInfo_label: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
    }
    public-read def label: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 0.0
        layoutY: 0.0
        layoutInfo: __layoutInfo_label
        text: "Cheque Transactions"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        endX: 0.0
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#ffffff") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#f5f0e9") }, ]
    }
    
    public-read def DarkGray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.2
        blue: 0.2
    }
    
    public-read def labelAddress: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 0.0
        layoutY: 2.0
        text: "From"
        font: Arial_12
        textFill: DarkGray
    }
    
    public-read def labelTo: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 180.0
        layoutY: 2.0
        text: "To"
        font: Arial_12
        textFill: DarkGray
    }
    
    public-read def rectHeader: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        opacity: 0.25
        layoutX: 0.0
        layoutY: 0.0
        styleClass: "rectFormHeader"
        fill: DarkGray
        stroke: null
        width: 787.0
        height: 32.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def panelheader: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ rectHeader, label, ]
    }
    
    public-read def rectBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        opacity: 1.0
        layoutX: 0.0
        layoutY: 0.0
        styleClass: "form-background"
        fill: linearGradient
        stroke: DarkGray
        width: 787.0
        height: 545.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def Green: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.4
    }
    
    public-read def Yellow: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.95
        green: 0.94
        blue: 0.86
    }
    
    public-read def imageCalendar: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: 300.0
        layoutY: 0.0
        onMouseClicked: imgToOnMouseClicked
        image: imageCalendar
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 145.0
        layoutY: 0.0
        onMouseClicked: imgFromOnMouseClicked
        image: imageCalendar
    }
    
    def __layoutInfo_groupDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 500.0
        height: 200.0
    }
    public-read def groupDate: javafx.scene.Group = javafx.scene.Group {
        visible: true
        layoutX: -6.0
        layoutY: 116.0
        layoutInfo: __layoutInfo_groupDate
        autoSizeChildren: true
        content: [ labelTo, labelAddress, txtFrom, imgFrom, imgTo, txtTo, FromPanel, ]
    }
    
    def __layoutInfo_panelpage: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 500.0
        height: 500.0
    }
    public-read def panelpage: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: bind C1LX-80
        layoutY: 150.0
        layoutInfo: __layoutInfo_panelpage
        content: [ chkChqueStatus, chkTxnType, chkAcNo, cboAccNo, cboTxnType, cboStatus, groupDate, ]
    }
    
    public-read def Arial_Bold_40: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 40.0
    }
    
    public-read def color: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.87058824
        green: 0.8392157
        blue: 0.8392157
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report1.png"
    }
    
    public-read def imageView5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image
        fitWidth: bind bottonImageW
        fitHeight: bind bottonImageH
    }
    
    def __layoutInfo_btnReport: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def btnReport: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+25
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_btnReport
        effect: reflectionEffect
        graphic: imageView5
        text: "Report [F10]"
        font: Arial_Bold_14
        action: btnReportAction
    }
    
    public-read def PanelChequeTxn: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ rectBg, panelheader, btnReport, panelpage, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelChequeTxn, ]
    }
    // </editor-fold>//GEN-END:main
   def RepViewer = ReportViewer{
        heading: bind label.text;
        };
        def CustomAlert=CustomAlert{};
        function showAlertbox():Void{
        panelAlert.visible=true;
        delete panelAlert.content;
        insert CustomAlert.getDesignRootNodes() into panelAlert.content;
        CustomAlert.show();
        }
   function FXinfo(msg:String):Void{
        CustomAlert.ShowInfo("Cheque Transaction",msg);
        showAlertbox();
        }
   function insRep():Void{
        delete panel.content;;
        insert RepViewer.getDesignRootNodes() into panel.content;;
        }
   function btnReportAction (): Void {
        if (txtFrom.text==null or txtFrom.text.trim().length()==0)
        {
        FXinfo("Please Enter the From Date");
        }else    if (txtTo.text==null or txtTo.text.trim().length()==0)
        {
        FXinfo("Please Enter the To Date");
        }
        else if(chkChqueStatus.selected==true and cboStatus.selectedItem==null)
        {
        FXinfo("Please select the Cheque Status");
        }
        else if(chkTxnType.selected==true and cboTxnType.selectedItem==null)
        {
        FXinfo("Please select the Transaction Type");
        }
        else if(chkAcNo.selected==true and cboAccNo.selectedItem==null)
        {
        FXinfo("Please select the Account Number");
        }
        else
        {
        try
        {
        insRep();
        panel.visible = true;
        if(chkAcNo.selected==true and chkTxnType.selected==false and chkChqueStatus.selected==false){
            LoadReport( 'accnumber','',cboAccNo.selectedItem.toString(),'');
            
        }
       else if(chkAcNo.selected==true and chkTxnType.selected==true and chkChqueStatus.selected==false){
           LoadReport( 'acctxn',cboTxnType.selectedItem.toString(),cboAccNo.selectedItem.toString(),'');
           
       }
       else if(chkAcNo.selected==true and chkTxnType.selected==true and chkChqueStatus.selected==true){
           LoadReport( 'accchequetxn',cboTxnType.selectedItem.toString(),cboAccNo.selectedItem.toString(),cboStatus.selectedItem.toString());
       }
       else if(chkAcNo.selected==true and chkTxnType.selected==false and chkChqueStatus.selected==true){
           LoadReport( 'acccheque','',cboAccNo.selectedItem.toString(),cboStatus.selectedItem.toString());
       }
       else if(chkAcNo.selected==false and chkTxnType.selected==true and chkChqueStatus.selected==false){
            LoadReport( 'txn',cboTxnType.selectedItem.toString(),'','');
        }
       else if(chkAcNo.selected==false and chkTxnType.selected==true and chkChqueStatus.selected==true){
           LoadReport( 'chqtxn',cboTxnType.selectedItem.toString(),'',cboStatus.selectedItem.toString());
       }
       else if(chkAcNo.selected==false and chkTxnType.selected==false and chkChqueStatus.selected==true){
           LoadReport( 'cheque','','',cboStatus.selectedItem.toString());
       }
       else {
           LoadReport( 'date','','','');
       }
      commonController.queryExecution("CALL pro_userlog('Cheque Transaction','{btnReport.text}')");
        }
     catch (e:Exception)
    {
        var msg:String="Class : ReportChequeTransaction method : button1Action()   = {e.getMessage()}";
        log.debug(msg);
    }
    }
    }

function LoadReport(type1:String,txnType:String,accNo:String,chqStatus:String){
        sd=sdf1.format(sdf.parse(txtFrom.text));
        ed=sdf1.format(sdf.parse(txtTo.text));
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("type1",'{type1}');
        params.put("txntype",'{txnType}');
        params.put("accnumber",'{accNo}');
        params.put("chqstatus",'{chqStatus}');
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/Cheque_txn.jasper",params);
}

    function imgToOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
    FromPanel.visible=true;
       frmFlag=false;
         if(not toFlag)
        {
           panelCalenderLX = imgTo.layoutX + 30.0;
           panelCalenderLY = imgTo.layoutY;
            if(txtTo.rawText.trim()!=null)
            {
                var dat = txtTo.rawText.trim().split("-");
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
            panelCalenderLY = imgFrom.layoutY;

            if(txtFrom.rawText.trim()!=null)
            {
                var dat = txtFrom.rawText.trim().split("-");
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
var Status: String[]=["Cleared",
                      "Returned",
                      "Cancelled ",
                      "Stopped Payment",
                      "Misused",
                      "Lost",
                      "In Progress"
                      ];
var TxnType: String[]=["Payable",
                       "Receivable",
                      ];
var AccountNo:String[]=commonController.AccountNumber();
public function Startup():Void
{
    FromPanel.content=[fxCalendar];
    fxCalendar.visible=false;
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
                txtFrom.text=fxCalendar.getSelectedDate();
                frmFlag=false;
                toFlag=false;
                txtFrom.requestFocus();
    }
    else if(i==1)
    {
                txtTo.text=fxCalendar.getSelectedDate();
                toFlag=false;
                frmFlag=false;
                txtTo.requestFocus();
    }
  }
}


