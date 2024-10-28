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


public class ReportPurchaseMargin
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var seperatorW=bind CommonDeclare.seperatorW;
var Type1TextboxW=bind CommonDeclare.Type1TextboxW;
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
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var listH=0.0;

var sdf = new SimpleDateFormat("dd-MM-yyyy");
var sdf1 = new SimpleDateFormat("yyyy-MM-dd");
var log:Logger=Logger.getLogger(ReportPurchaseMargin.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var number:String;
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        blocksMouse: true
    }
    
    def __layoutInfo_listInvoiceNumber: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: bind listH
    }
    public-read def listInvoiceNumber: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 224.0
        layoutInfo: __layoutInfo_listInvoiceNumber
        onKeyPressed: listInvoiceNumberOnKeyPressed
        onMouseClicked: listInvoiceNumberOnMouseClicked
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
    
    def __layoutInfo_productName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 162.0
    }
    public-read def productName: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 199.0
        layoutInfo: __layoutInfo_productName
        text: "Enter Product Name"
        font: Arial_14
    }
    
    def __layoutInfo_txtProductName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
    }
    public-read def txtProductName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 199.0
        layoutInfo: __layoutInfo_txtProductName
        onKeyPressed: txtProductNameOnKeyPressed
        onKeyReleased: txtProductNameOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        layoutX: bind C1LX+125
        layoutY: 296.0
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
        layoutY: 247.0
        layoutInfo: __layoutInfo_txtFromDate
        onKeyPressed: txtFromDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    public-read def FromDate: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX-50
        layoutY: 247.0
        text: "From Date"
        font: Arial_14
    }
    
    public-read def ToDate: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind C1LX-50
        layoutY: 296.0
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
        text: "Purchase Margin"
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
        layoutX: bind C1LX+125+Type1TextboxW-2
        layoutY: 199.0
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
    
    def __layoutInfo_button1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def button1: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+25
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button1
        onKeyReleased: button1OnKeyReleased
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: button1Action
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 296.0
        onMouseClicked: imgToOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ImageCalenderLX
        layoutY: 247.0
        onMouseClicked: imgFromOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdopurmargin: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        opacity: 0.9
        layoutX: bind C1LX
        layoutY: 111.0
        onMouseClicked: rdopurmarginOnMouseClicked
        text: "Purchase Margin"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: false
    }
    
    public-read def rdopropurmargin: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX
        layoutY: 67.0
        onMouseClicked: rdopropurmarginOnMouseClicked
        text: "Product\'s Purchase Margin Comparison"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def PanelCustomerLedger: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, ToDate, FromDate, txtFromDate, txtToDate, button1, txtProductName, productName, rdopropurmargin, rdopurmargin, imgFrom, imgTo, imageView, FromPanel, listInvoiceNumber, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCustomerLedger, ]
    }
    // </editor-fold>//GEN-END:main

    function rdopropurmarginOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtProductName.visible = true;
        productName.visible = true;
        imageView.visible = true;
        txtProductName.text = "";
        txtFromDate.text = "";
        txtToDate.text = "";
         }

    function rdopurmarginOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtProductName.visible = false;
        productName.visible = false;
        imageView.visible = false;
        txtProductName.text = "";
        txtFromDate.text = "";
        txtToDate.text = "";
         }

    function listInvoiceNumberOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
                txtProductName.text = listInvoiceNumber.selectedItem.toString();
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
        listInvoiceNumber.visible=false;
    }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("FR4".trim())){
            shortcut(KyEvent.code);
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
    CustomAlert.ShowInfo("Purchase Margin",msg);
    showAlertbox();
    }
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            button1Action();
        }
        }
    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        getInvoice(KeyCode.VK_DOWN,"");
        }
        

    function listInvoiceNumberOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
                
        if(listInvoiceNumber.focused)
            if (event.code == KeyCode.VK_DOWN) {
        listInvoiceNumber.selectFirstRow(); }
            if (event.code == KeyCode.VK_ENTER) {
                txtProductName.text = listInvoiceNumber.selectedItem.toString();
            }
    }

    function txtProductNameOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
         if (event.code != KeyCode.VK_F10)
          {
          getInvoice(event.code,txtProductName.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)
                listInvoiceNumber.requestFocus();
                listInvoiceNumber.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listInvoiceNumber.visible = false;
           }
                }

    function txtProductNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
       if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtFromDate.requestFocus();
    }
    shortcut(event.code);
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
    function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
        }
    function button1Action(): Void {
      try {
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
      if(rdopropurmargin.selected == true) {
        if(txtProductName.text==null or txtProductName.text.trim().length()==0)
        {
        FXinfo("Please Enter the product Name");
        }
        else if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the From Date");
        }else if (txtToDate.text==null or txtToDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the To Date");
        }
        else
        {
        insRep();
        panel.visible = true;
        number=txtProductName.text;
        params1.put("productname",txtProductName.text.trim());        
        params1.put("fromdate",sdf1.format(sdf.parse(txtFromDate.text)));
        params1.put("todate",sdf1.format(sdf.parse(txtToDate.text)));
        RepViewer.showReport("/reportfiles/purchaseprice_comparison.jasper",params1);
        }
      }

       else if(rdopurmargin.selected == true) {
        if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the From Date");
        }else if (txtToDate.text==null or txtToDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the To Date");
        }
        else
        {
        insRep();
        panel.visible = true;
        number=txtProductName.text;
        params1.put("fromdate",sdf1.format(sdf.parse(txtFromDate.text)));
        params1.put("todate",sdf1.format(sdf.parse(txtToDate.text)));
        RepViewer.showReport("/reportfiles/purchase_margin.jasper",params1);
        }
      }
       commonController.queryExecution("CALL pro_userlog('Purchase Margin','{button1.text}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportPurchaseSearch method : button1Action()   = {e.getMessage()}";
        log.debug(msg);        
        }
   }

     function getInvoice(kcode: javafx.scene.input.KeyCode,pname:String) {
        var invoiceNumber;
        listInvoiceNumber.visible = true;                
        invoiceNumber =  commonController.ProductName(pname);
        listInvoiceNumber.clearSelection();
        listInvoiceNumber.items = invoiceNumber;
        var size =  listInvoiceNumber.items.size();
        listInvoiceNumber.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtProductName.text = "{listInvoiceNumber.selectedItem}";
                        listInvoiceNumber.visible = false;
                        txtFromDate.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listInvoiceNumber.selectedIndex == 0) {
                            listInvoiceNumber.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listInvoiceNumber.visible = false;
                        txtProductName.requestFocus();
                    }
                };
        listInvoiceNumber.onMouseClicked = function(e) {
                    txtProductName.text = "{listInvoiceNumber.selectedItem}";
                    listInvoiceNumber.visible = false;
                    txtFromDate.requestFocus();
                }
        if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listInvoiceNumber.visible=false;
         }else{
             listH = 295;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listInvoiceNumber.visible = false;
            txtProductName.requestFocus();
    }

public function Startup() : Void {
     fxCalendar.visible=false;
     FromPanel.content=[fxCalendar,];
     rdopropurmargin.selected = true;
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
