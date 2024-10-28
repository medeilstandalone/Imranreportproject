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
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportSalesDetail
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var seperatorW=bind CommonDeclare.seperatorW;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var panelCalenderLX:Number;
var panelCalenderLY:Number;
var ImageCalenderLX=bind C1LX+100+Type3TextboxW+2 on replace{
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
var sdf = new SimpleDateFormat("dd-MM-yyyy");
var sdf1 = new SimpleDateFormat("yyyy-MM-dd");
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
var log:Logger=Logger.getLogger(ReportSalesDetail.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var sd:String;
var ed:String;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        blocksMouse: true
    }
    
    def __layoutInfo_txtMfr: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
    }
    public-read def txtMfr: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+100
        layoutY: 265.0
        layoutInfo: __layoutInfo_txtMfr
        onKeyPressed: txtMfrOnKeyPressed
        onKeyReleased: txtMfrOnKeyReleased
    }
    
    def __layoutInfo_txtDist: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
    }
    public-read def txtDist: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+100.0
        layoutY: 300.0
        layoutInfo: __layoutInfo_txtDist
        onKeyPressed: txtDistOnKeyPressed
        onKeyReleased: txtDistOnKeyReleased
    }
    
    def __layoutInfo_listMfrName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: bind listH
    }
    public-read def listMfrName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+100
        layoutY: 284.0
        layoutInfo: __layoutInfo_listMfrName
        onKeyPressed: listMfrNameOnKeyPressed
        items: null
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
    
    public-read def distName: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX-75
        layoutY: 295.0
        text: "Enter Distributor Name"
        font: Arial_14
    }
    
    public-read def mfrName: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX-75
        layoutY: 265.0
        text: "Enter Manufacturer Name"
        font: Arial_14
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+100
        layoutY: 415.0
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
        layoutX: bind C1LX+100
        layoutY: 345.0
        layoutInfo: __layoutInfo_txtFromDate
        onKeyPressed: txtFromDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    public-read def label10: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX
        layoutY: 345.0
        text: "From Date"
        font: Arial_14
    }
    
    public-read def label5: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX
        layoutY: 415.0
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
        layoutX: 0.0
        layoutY: 1.0
        layoutInfo: __layoutInfo_label
        effect: null
        text: "Sales by Product Details"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
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
        layoutX: bind botton2LX+25
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button1
        onKeyReleased: button1OnKeyReleased
        effect: reflectionEffect
        graphic: imageView
        text: "Report [F10]"
        font: Arial_Bold_14
        textAlignment: javafx.scene.text.TextAlignment.LEFT
        action: button1Action
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationNext.png"
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image2
    }
    
    def __layoutInfo_hyperlink: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: 23.0
    }
    public-read def hyperlink: javafx.scene.control.Hyperlink = javafx.scene.control.Hyperlink {
        layoutX: bind C1LX-30
        layoutY: 80.0
        layoutInfo: __layoutInfo_hyperlink
        effect: null
        graphic: imageView2
        text: "Today Complete Sales"
        font: Arial_Bold_16
        hpos: javafx.geometry.HPos.RIGHT
        graphicHPos: javafx.geometry.HPos.RIGHT
        action: hyperlinkAction
    }
    
    public-read def image3: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 415.0
        onMouseClicked: imgToOnMouseClicked
        blocksMouse: true
        image: image3
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 345.0
        onMouseClicked: imgFromOnMouseClicked
        blocksMouse: true
        image: image3
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    public-read def imgMfr: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind C1LX+300
        layoutY: 264.0
        onMouseClicked: imgMfrOnMouseClicked
        image: image
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdocomSales: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX-30
        layoutY: 125.0
        onMouseClicked: rdocomSalesOnMouseClicked
        text: "Complete Sales"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def rdoDist: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX-30
        layoutY: 225.0
        onMouseClicked: rdoDistOnMouseClicked
        text: "Distributor wise Sales"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoMfr: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX-30
        layoutY: 175.0
        onMouseClicked: rdoMfrOnMouseClicked
        text: "Manufacturer Wise Sales"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def PanelSalesDetail: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, label5, label10, txtFromDate, txtToDate, button1, imgFrom, imgTo, hyperlink, rdoMfr, rdoDist, rdocomSales, mfrName, distName, imgMfr, FromPanel, txtMfr, txtDist, listMfrName, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelSalesDetail, ]
    }
    // </editor-fold>//GEN-END:main

    function listMfrNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if(listMfrName.focused)
            if (event.code == KeyCode.VK_DOWN)
        listMfrName.selectFirstRow();
         }

    function txtDistOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
         if (event.code != KeyCode.VK_F10)
          {
          listMfrName.layoutY=319.0;
          getDist(event.code,txtDist.rawText.trim());
                if (event.code == KeyCode.VK_DOWN)
                listMfrName.requestFocus();
                listMfrName.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listMfrName.visible = false;
           }
         }

    function txtDistOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
          if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtFromDate.requestFocus();
           }
           shortcut(event.code);
         }

    function txtMfrOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
         if (event.code != KeyCode.VK_F10)
          {
          listMfrName.layoutY=284.0;
          getMfr(event.code,txtMfr.rawText.trim());
                if (event.code == KeyCode.VK_DOWN)
                listMfrName.requestFocus();
                listMfrName.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listMfrName.visible = false;
           }
         }

    function txtMfrOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
         if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
           txtFromDate.requestFocus();
    }
    shortcut(event.code);
         }

    function imgMfrOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
       if(rdoMfr.selected==true)
       {
       txtDist.text="";
       listMfrName.visible = false;
       listMfrName.layoutY=284.0;
       getMfr(KeyCode.VK_DOWN,"");
       }
       if(rdoDist.selected==true)
       {
       txtMfr.text="";
       listMfrName.visible = false; 
       listMfrName.layoutY=319.0;
       getDist(KeyCode.VK_DOWN,"");
       }
         }
    function getMfr(kcode: javafx.scene.input.KeyCode,mfrname:String):Void {
        var mfrName: String[] = [];
        listMfrName.visible = true;
        mfrName =  commonController.mfrName(mfrname);
        listMfrName.clearSelection();
        listMfrName.items = mfrName;
        var size =  listMfrName.items.size();
        listMfrName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtMfr.text = "{listMfrName.selectedItem}";
                        listMfrName.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listMfrName.selectedIndex == 0) {
                            listMfrName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listMfrName.visible = false;
                        txtMfr.requestFocus();
                    }
                };
        listMfrName.onMouseClicked = function(e) {
                    txtMfr.text = "{listMfrName.selectedItem}";
                    listMfrName.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listMfrName.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listMfrName.visible = false;
            txtMfr.requestFocus();
    }
    function getDist(kcode: javafx.scene.input.KeyCode,distname:String):Void {
        var distName: String[] = [];
        listMfrName.visible = true;
        distName =  commonController.DistributorName(distname);
        listMfrName.clearSelection();
        listMfrName.items = distName;
        var size =  listMfrName.items.size();
        listMfrName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtDist.text = "{listMfrName.selectedItem}";
                        listMfrName.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listMfrName.selectedIndex == 0) {
                            listMfrName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listMfrName.visible = false;
                        txtDist.requestFocus();
                    }
                };
        listMfrName.onMouseClicked = function(e) {
                    txtDist.text = "{listMfrName.selectedItem}";
                    listMfrName.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listMfrName.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listMfrName.visible = false;
        txtDist.requestFocus();
    }
    function rdoDistOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        mfrName.visible=false;
        distName.visible=true;
        txtMfr.visible=false;
        txtDist.visible=true;
        imgMfr.visible=true;
        imgMfr.layoutY=300.0;
        listMfrName.visible=false;
        txtMfr.text="";
         }

    function rdoMfrOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        mfrName.visible=true;
        distName.visible=false;
        txtMfr.visible=true;
        txtDist.visible=false;
        imgMfr.visible=true;
        imgMfr.layoutY=265.0;
        listMfrName.visible=false;
        txtDist.text="";
         }

    function rdocomSalesOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        mfrName.visible=false;
        distName.visible=false;
        txtMfr.visible=false;
        txtDist.visible=false;
        imgMfr.visible=false;
        listMfrName.visible=false;
         }

    function button1OnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
        if(event.code==KeyCode.VK_ENTER)
        {
        button1Action();
        }
        else
        {
            shortcut(event.code);
        }
         }

    function rectangle2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        FromPanel.visible=false;
         }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("SR1".trim())){
            shortcut(KyEvent.code);
            }
            }
    function hyperlinkAction(): Void {
        insRep();
        panel.visible = true;
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        params.put("fromdate",'0000-00-00');
        params.put("todate",'0000-00-00');
        params.put("custname",'');
        params.put("type1",'todaysales');
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/sales_detailreport.jasper",params);
       commonController.queryExecution("CALL pro_userlog('Sales Detail Report','{hyperlink.text}')");
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
        CustomAlert.ShowInfo("Sales Detail Report",msg);
        showAlertbox();
        }
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            button1Action();
        }
        }
    function imgFromOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
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

    function imgToOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
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
        function button1Action(): Void {
        if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
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
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        if(rdocomSales.selected==true)
        {
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("type1",'salesbydate');
        params.put("custname",'');
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/sales_detailreport.jasper",params);
        }
        else if(rdoMfr.selected==true)
        {
        if (txtMfr.text==null or txtMfr.text.trim().length()==0)
        {
        FXinfo("Please select the Manufacturer Name");
        }
        else
        {
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("mfrname",txtMfr.rawText.trim());
        
        RepViewer.showReport("/reportfiles/mfr_sales.jasper",params);
        }
        }
        else if(rdoDist.selected==true)
        {
        if (txtDist.text==null or txtDist.text.trim().length()==0)
        {
        FXinfo("Please select the Distributor Name");
        }
        else
        {
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("distname",txtDist.rawText.trim());
        
        RepViewer.showReport("/reportfiles/dist_sales.jasper",params);
        }
        }
       commonController.queryExecution("CALL pro_userlog('Sales Detail Report','{button1.text}')");
        }
     catch (e:Exception)
    {
        var msg:String="Class : ReportSalesDetail method : button1Action()   = {e.getMessage()}";
        log.debug(msg);        
    }
     }
   } 
    
public function Startup() : Void {
      mfrName.visible=false;
      distName.visible=false;
      txtMfr.visible=false;
      txtDist.visible=false;
      imgMfr.visible=false;
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


