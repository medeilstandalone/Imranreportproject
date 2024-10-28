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
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportDoctorCommission
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var seperatorW=bind CommonDeclare.seperatorW;
var Type2TextboxW=bind CommonDeclare.Type2TextboxW;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var panelCalenderLX:Number;
var panelCalenderLY:Number;
var ImageCalenderLX=bind C1LX+125+Type3TextboxW+2 on replace{
    panelCalenderLX = ImageCalenderLX + 30.0;
    };
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var listH=0.0;

var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var sd:String;
var ed:String;

var sdf = new SimpleDateFormat("dd-MM-yyyy");
var sdf1 = new SimpleDateFormat("yyyy-MM-dd");
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
var log:Logger=Logger.getLogger(ReportDoctorCommission.class,"Reports");
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        blocksMouse: true
    }
    
    def __layoutInfo_listDoctorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
        height: bind listH
    }
    public-read def listDoctorName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 280.0
        layoutInfo: __layoutInfo_listDoctorName
        onKeyPressed: listDoctorNameOnKeyPressed
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
        name: "Arial "
        size: 14.0
    }
    
    def __layoutInfo_DoctorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 133.0
    }
    public-read def DoctorName: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 255.0
        layoutInfo: __layoutInfo_DoctorName
        text: "Enter Doctor Name"
        font: Arial_14
    }
    
    def __layoutInfo_txtDoctorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
    }
    public-read def txtDoctorName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 255.0
        layoutInfo: __layoutInfo_txtDoctorName
        onKeyPressed: txtDoctorNameOnKeyPressed
        onKeyReleased: txtDoctorNameOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 355.0
        layoutInfo: __layoutInfo_txtToDate
        onKeyPressed: txtToDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    def __layoutInfo_txtFromDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtFromDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        managed: true
        layoutX: bind C1LX+125
        layoutY: 305.0
        layoutInfo: __layoutInfo_txtFromDate
        onKeyPressed: txtFromDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    public-read def FromDate: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 305.0
        text: "From Date"
        font: Arial_14
    }
    
    public-read def ToDate: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 355.0
        text: "To Date"
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
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdoSalesProfit: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 200.0
        onMouseClicked: rdoSalesProfitOnMouseClicked
        text: "Doctorwise Sales Profit"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def DoctorCharges: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 150.0
        onMouseClicked: DoctorChargesOnMouseClicked
        text: "Doctor Charges"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def TotalCharges: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 100.0
        onKeyPressed: TotalChargesOnKeyPressed
        onMouseClicked: TotalChargesOnMouseClicked
        text: "Total Charges"
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
        text: "Doctor Charges Summary"
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
        layoutX: bind C1LX+125+Type2TextboxW-2
        layoutY: 255.0
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
        onKeyReleased: buttonOnKeyReleased
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: buttonAction
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: bind ImageCalenderLX
        layoutY: 355.0
        onMouseClicked: imgToOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: bind ImageCalenderLX
        layoutY: 305.0
        onMouseClicked: imgFromOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def PanelCustomerLedger: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, ToDate, FromDate, txtFromDate, txtToDate, button, txtDoctorName, DoctorName, imgFrom, imgTo, FromPanel, listDoctorName, imageView, TotalCharges, DoctorCharges, rdoSalesProfit, panelAlert, panel, ]
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCustomerLedger, ]
    }
    // </editor-fold>//GEN-END:main

    function rdoSalesProfitOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        FromDate.visible=true;
        ToDate.visible=true;
        DoctorName.visible=true;
        txtFromDate.visible=true;
        txtToDate.visible=true;
        txtDoctorName.visible=true;
        imgTo.visible=true;
        imgFrom.visible=true;
        FromPanel.visible=true;
        imageView.visible=true;
         }

    function buttonOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
        if(event.code==KeyCode.VK_ENTER)

        {
        buttonAction();
        }
        else
        {
            shortcut(event.code);
        }
         }

    function rectangle2OnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        FromPanel.visible=false;
        listDoctorName.visible=false;
    }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("MR6".trim())){
            shortcut(KyEvent.code);
            }
            }
    function TotalChargesOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function txtToDateOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function txtFromDateOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
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
    def CustomAlert = CustomAlert {};
    function FXinfo(msg: String): Void {
        CustomAlert.ShowInfo("Doctor Charges", msg);
        showAlertbox();
    }

    function showAlertbox(): Void {
        panelAlert.visible = true;
        delete  panelAlert.content;
        insert CustomAlert.getDesignRootNodes() into panelAlert.content;
        CustomAlert.show();
    }

    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        getDoctor(KeyCode.VK_DOWN,"");
    }

    function listDoctorNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        if(listDoctorName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listDoctorName.selectFirstRow();
    }
     function getDoctor(kcode: javafx.scene.input.KeyCode,dname:String) {
       var doctorName: String[] = [];
       listDoctorName.visible = true;                
       doctorName =  commonController.DoctorName(dname);
       listDoctorName.clearSelection();
       listDoctorName.items = doctorName;
       var size = listDoctorName.items.size();
       listDoctorName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtDoctorName.text = "{listDoctorName.selectedItem}";
                       listDoctorName.visible = false;
                        txtFromDate.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listDoctorName.selectedIndex == 0) {
                           listDoctorName.selectFirstRow();

                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                       listDoctorName.visible = false;
                        txtDoctorName.requestFocus();
                    }
                };
       listDoctorName.onMouseClicked = function(e) {
                   txtDoctorName.text = "{listDoctorName.selectedItem}";
                   listDoctorName.visible = false;
                    txtFromDate.requestFocus();
                }
        if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size==0)
                listDoctorName.visible=false;
         }else{
             listH = 295;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
           listDoctorName.visible = false;
       txtDoctorName.requestFocus();
    }

    
   function txtDoctorNameOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
         if (event.code != KeyCode.VK_F10)
         {
         getDoctor(event.code,txtDoctorName.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)              
                listDoctorName.requestFocus();
                listDoctorName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listDoctorName.visible = false;
           }
    }

    function txtDoctorNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtFromDate.requestFocus();
    }shortcut(event.code);
    }

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
            panelCalenderLY =imgFrom.layoutY - 20.0;

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

    function TotalChargesOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        FromDate.visible=false;
        ToDate.visible=false;
        DoctorName.visible=false;
        txtFromDate.visible=false;
        txtToDate.visible=false;
        txtDoctorName.visible=false;
        imgTo.visible=false;
        imgFrom.visible=false;
        FromPanel.visible=false;
        imageView.visible=false;
        listDoctorName.visible=false;
                 }

    function DoctorChargesOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        FromDate.visible=true;
        ToDate.visible=true;
        DoctorName.visible=true;
        txtFromDate.visible=true;
        txtToDate.visible=true;
        txtDoctorName.visible=true;
        imgTo.visible=true;
        imgFrom.visible=true;
        FromPanel.visible=true;
        imageView.visible=true;
         }
         function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
        }
     function buttonAction(): Void {        
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();        
        try
        {
        if(TotalCharges.selected == true)
        {
        params.put("doctor",'entire_commission');
        params.put("specialist",'');
        params.put("fromdate",'0000-00-00');
        params.put("todate",'0000-00-00');
        params.put("REPORTS_DIR",image);
        insRep();
        panel.visible = true;
        RepViewer.showReport("/reportfiles/doctorcommissionrpt.jasper",params);
        }
        else if(DoctorCharges.selected == true)
        {
        params.put("doctor",'doctors_commission');
        params.put("specialist",txtDoctorName.text);
        params.put("fromdate",'0000-00-00');
        params.put("todate",'0000-00-00');
        params.put("REPORTS_DIR",image);
         if (txtFromDate.text == null or txtFromDate.text.trim().length() == 0) {
            FXinfo("Please Enter the From Date");
        } else if (txtToDate.text == null or txtToDate.text.trim().length() == 0) {
            FXinfo("Please Enter the To Date");
        } else if (txtDoctorName.text == null or txtDoctorName.text.trim().length() == 0) {
            FXinfo("Please Enter the doctor name");
        }
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        params.put("doctor",'doctors_commission_date');
        params.put("specialist",txtDoctorName.text);
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("REPORTS_DIR",image);
        insRep();
        panel.visible = true;
        RepViewer.showReport("/reportfiles/doctorcommissionrpt.jasper",params);
        }
        }
        else if (rdoSalesProfit.selected == true){
         if (txtFromDate.text == null or txtFromDate.text.trim().length() == 0) {
            FXinfo("Please Enter the From Date");
        } else if (txtToDate.text == null or txtToDate.text.trim().length() == 0) {
            FXinfo("Please Enter the To Date");
        } else if (txtDoctorName.text == null or txtDoctorName.text.trim().length() == 0) {
            FXinfo("Please Enter the doctor name");
        }
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        params.put("startdate",sd);
        params.put("enddate",ed);
        params.put("REPORTS_DIR",image);
        params.put("doctorname",txtDoctorName.text);
        insRep();
        panel.visible = true;
        RepViewer.showReport("/reportfiles/doctorwise_salesprofit.jasper",params);
        }
        }                                
       commonController.queryExecution("CALL pro_userlog('Doctor Charges','{button.text}')");
        }

   catch (e:Exception)
    {
        var msg:String="Class : ReportDoctorCharges method : buttonAction()   = {e.getMessage()}";
        log.debug(msg);        
    }    
    }
    

public function Startup() : Void {
     fxCalendar.visible=false;
     FromPanel.content=[fxCalendar,];
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
                toFlag=false;
                frmFlag=false;
                txtFromDate.requestFocus();
    }
    else if(i==1)
    {
                txtToDate.text=fxCalendar.getSelectedDate();
                frmFlag=false;
                toFlag=false;
                txtToDate.requestFocus();
    }
  }
}

