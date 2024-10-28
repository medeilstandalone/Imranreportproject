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

public class ReportCustomerSales
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
var botton3LX=bind CommonDeclare.botton33LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var listH=0.0;

var sdf = new SimpleDateFormat("dd-MM-yyyy");
var sdf1 = new SimpleDateFormat("yyyy-MM-dd");
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
var log:Logger=Logger.getLogger(ReportCustomerSales.class,"Reports");
var sd:String;
var ed:String;
var s:String;
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var size=0;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        blocksMouse: true
    }
    
    def __layoutInfo_listCustomerName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
        height: bind listH
    }
    public-read def listCustomerName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 173.0
        layoutInfo: __layoutInfo_listCustomerName
        onKeyPressed: listCustomerNameOnKeyPressed
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
    
    def __layoutInfo_CustomerName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 168.0
        height: 21.0
    }
    public-read def CustomerName: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 150.0
        layoutInfo: __layoutInfo_CustomerName
        text: "Enter Customer Name"
        font: Arial_14
    }
    
    def __layoutInfo_CustName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
    }
    public-read def CustName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 150.0
        layoutInfo: __layoutInfo_CustName
        onKeyPressed: CustNameOnKeyPressed
        onKeyReleased: CustNameOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+125
        layoutY: 246.0
        layoutInfo: __layoutInfo_txtToDate
        onKeyPressed: txtToDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    def __layoutInfo_txtFromDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtFromDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        managed: true
        layoutX: bind C1LX+125
        layoutY: 197.0
        layoutInfo: __layoutInfo_txtFromDate
        onKeyPressed: txtFromDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    public-read def FromDate: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX-50
        layoutY: 197.0
        text: "From Date"
        font: Arial_14
    }
    
    public-read def ToDate: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX-50
        layoutY: 246.0
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
        text: "Sales by Customer Details"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def color: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 1.0
        green: 0.4
    }
    
    public-read def image5: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    def __layoutInfo_imageView: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 0.0
    }
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind C1LX+125+Type2TextboxW-2
        layoutY: 150.0
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
    
    def __layoutInfo_button2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def button2: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+25
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button2
        onKeyReleased: button2OnKeyReleased
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: button2Action
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationNext.png"
    }
    
    public-read def imageView3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image
    }
    
    public-read def hyperlink: javafx.scene.control.Hyperlink = javafx.scene.control.Hyperlink {
        layoutX: bind botton3LX+50
        layoutY: bind bottonLY
        graphic: imageView3
        text: "Detailed Report"
        font: Arial_Bold_16
        graphicHPos: javafx.geometry.HPos.RIGHT
        action: hyperlinkAction
    }
    
    public-read def image3: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 246.0
        onMouseClicked: imgToOnMouseClicked
        blocksMouse: true
        image: image3
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 197.0
        onMouseClicked: imgFromOnMouseClicked
        blocksMouse: true
        image: image3
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def PanelCustomerSales: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, ToDate, FromDate, txtFromDate, txtToDate, button2, CustName, CustomerName, imgFrom, imgTo, FromPanel, listCustomerName, imageView, hyperlink, panelAlert, panel, ]
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCustomerSales, ]
    }
    // </editor-fold>//GEN-END:main

    function button2OnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
        if(event.code==KeyCode.VK_ENTER)
        {
        button2Action();
        }
        else
        {
            shortcut(event.code);
        }
        }

    function rectangle2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        FromPanel.visible=false;
        listCustomerName.visible=false;
         }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("SR4".trim())){
            shortcut(KyEvent.code);
            }
            }
    function hyperlinkAction (): Void {
        if(CustName.text==null or CustName.text.trim().length()==0)
        {
        FXinfo("Please Enter the Customer Name");
        }
        else if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the From Date");
        }else    if (txtToDate.text==null or txtToDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the To Date");
        }
        else
        {
        insRep();
        panel.visible = true;
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("custname",CustName.text);
        params.put("type1",'custsales');
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/sales_detailreport.jasper",params);
       commonController.queryExecution("CALL pro_userlog('Customer Sales Report','{hyperlink.text}')");
        }
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
        def CustomAlert=CustomAlert{};
        function showAlertbox():Void{
        panelAlert.visible=true;
        delete panelAlert.content;
        insert CustomAlert.getDesignRootNodes() into panelAlert.content;
        CustomAlert.show();
        }
        function FXinfo(msg:String):Void{
        CustomAlert.ShowInfo("Customer Sales",msg);
        showAlertbox();
        }
    function imageViewOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        getCustomer(KeyCode.VK_DOWN,"");
        }
    function listCustomerNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        
        if(listCustomerName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listCustomerName.selectFirstRow();
         }
    function CustNameOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {          
           if (event.code != KeyCode.VK_F10)
          {
            getCustomer(event.code,CustName.rawText.trim());
            if(listCustomerName.items!= CustName.text)
            {
                CustName.text=" ";
            }

            if (event.code == KeyCode.VK_DOWN)
                listCustomerName.requestFocus();
                listCustomerName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listCustomerName.visible = false;
           }
    }
    function CustNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
       if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtFromDate.requestFocus();
    }
    shortcut(event.code);
}
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            button2Action();
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
    function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
        }
    function button2Action(): Void {
        if(CustName.text==null or CustName.text.trim().length()==0)
        {
        FXinfo("Please Enter the Customer Name");
        }        
        else if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the From Date");
        }else    if (txtToDate.text==null or txtToDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the To Date");
        }
        else
        {
      
        try
        {
        insRep();
        panel.visible = true;
        s=CustName.text;
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
        params1.put("custname",s);
        params1.put("startdate",sd);
        params1.put("enddate",ed);
        params1.put("REPORTS_DIR",image);        
        RepViewer.showReport("/reportfiles/cust_sales.jasper",params1);
       commonController.queryExecution("CALL pro_userlog('Customer Sales','{button2.text}')");
        }
        
    catch (e:Exception)
    {   var msg:String="Class : ReportCustomerSales method : button2Action()   = {e.getMessage()}";
        log.debug(msg);
        
    }
    }
   }

    function getCustomer(kcode: javafx.scene.input.KeyCode,cname:String) {
        var custName: String[] = [];
        listCustomerName.visible = true;       
        custName =  commonController.CustomerName(cname);
        listCustomerName.clearSelection();
        listCustomerName.items = custName;
        size =  listCustomerName.items.size();
        listCustomerName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {                       
                        CustName.text = "{listCustomerName.selectedItem}";
                        listCustomerName.visible = false;
                        txtFromDate.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listCustomerName.selectedIndex == 0) {
                            listCustomerName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listCustomerName.visible = false;
                        CustName.requestFocus();
                    }
                };
        listCustomerName.onMouseClicked = function(e) {
                    CustName.text = "{listCustomerName.selectedItem}";
                    listCustomerName.visible = false;
                    txtFromDate.requestFocus();
                }
         if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listCustomerName.visible=false;                
         }else{
             listH = 295;
         }

        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listCustomerName.visible = false;
        CustName.requestFocus();
    }
       
 
public function Startup()
{
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
}


