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


public class ReportProductMargin
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var seperatorW=bind CommonDeclare.seperatorW;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var Type2TextboxW=bind CommonDeclare.Type2TextboxW;
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
var frmFlag: Boolean=false;
var toFlag: Boolean=false;

var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
var log:Logger=Logger.getLogger(ReportProductMargin.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var sd:String;
var ed:String;
var C4LX = bind CommonDeclare.Column4LX;

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        blocksMouse: true
    }
    
    def __layoutInfo_listProductName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
        height: bind listH
    }
    public-read def listProductName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 273.0
        layoutInfo: __layoutInfo_listProductName
        onKeyPressed: listProductNameOnKeyPressed
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
    
    def __layoutInfo_ProductName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 133.0
    }
    public-read def ProductName: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 250.0
        layoutInfo: __layoutInfo_ProductName
        text: "Enter Product Name"
        font: Arial_14
    }
    
    def __layoutInfo_textItem: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
    }
    public-read def textItem: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 250.0
        layoutInfo: __layoutInfo_textItem
        onKeyPressed: textItemOnKeyPressed
        onKeyReleased: textItemOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 350.0
        layoutInfo: __layoutInfo_txtToDate
        onKeyPressed: txtToDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    def __layoutInfo_txtFromDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtFromDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        managed: true
        layoutX: bind C1LX+125
        layoutY: 300.0
        layoutInfo: __layoutInfo_txtFromDate
        onKeyPressed: txtFromDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    public-read def FromDate: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 300.0
        text: "From Date"
        font: Arial_14
    }
    
    public-read def ToDate: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 350.0
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
    
    public-read def rdoBillWise: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        onMouseClicked: rdoBillWiseOnMouseClicked
        text: "SalesBill Wise Margin"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def totRadio: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutY: 0.0
        onMouseClicked: totRadioOnMouseClicked
        text: "Total Product Margin"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def saleRadio: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutY: 0.0
        onMouseClicked: saleRadioOnMouseClicked
        text: "Saleswise Margin"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def indRadio: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutY: 0.0
        onMouseClicked: indRadioOnMouseClicked
        text: "Individual Product Margin"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def vboxControls: javafx.scene.layout.VBox = javafx.scene.layout.VBox {
        layoutX: bind C1LX+50
        layoutY: 100.0
        content: [ indRadio, saleRadio, totRadio, rdoBillWise, ]
        spacing: 6.0
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
        text: "Sales Margin Summary"
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
        visible: true
        layoutX: bind C1LX+125+Type2TextboxW-2
        layoutY: 250.0
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
        visible: true
        layoutX: bind ImageCalenderLX
        layoutY: 350.0
        onMouseClicked: imgToOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: bind ImageCalenderLX
        layoutY: 300.0
        onMouseClicked: imgFromOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationNext.png"
    }
    
    public-read def imageView3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image2
    }
    
    public-read def hyperlink: javafx.scene.control.Hyperlink = javafx.scene.control.Hyperlink {
        layoutX: bind C4LX
        layoutY: bind bottonLY-40
        graphic: imageView3
        text: "Stock Transfer Margin"
        font: Arial_Bold_16
        action: hyperlinkAction
    }
    
    public-read def PanelProductMargin: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, ToDate, FromDate, txtFromDate, txtToDate, button, textItem, ProductName, imgFrom, imgTo, hyperlink, imageView, FromPanel, listProductName, vboxControls, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelProductMargin, ]
    }
    // </editor-fold>//GEN-END:main

    function rdoBillWiseOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        textItem.visible=false;
        ProductName.visible=false;
        imageView.visible=false;
    }

    function hyperlinkAction(): Void {
        try {
        if (txtFromDate.text==null or txtFromDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the From Date");
        }else if (txtToDate.text==null or txtToDate.text.trim().length()==0)
        {
        FXinfo("Please Enter the To Date");
        }
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        insRep();
        panel.visible=true;
        var image : String   = "{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
        params1.put("startdate",sd);
        params1.put("enddate",ed);
        params1.put("type1",'transfer_margin');
        params1.put("itemname",'');
        params1.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/product_margin.jasper",params1);
        commonController.queryExecution("CALL pro_userlog('Product Margin','{hyperlinkAction}')");
        }
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportProductMargin  method : hyperlinkAction()   = {e.getMessage()}";
        log.debug(msg);
        }
        }

    function totRadioOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        textItem.visible=false;
        ProductName.visible=false;
        imageView.visible=false;
         }

 function imageViewOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         getProduct(KeyCode.VK_DOWN,"");
         }

    function indRadioOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        textItem.visible=true;
        ProductName.visible=true;
        imageView.visible=true;
         }

    function saleRadioOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        textItem.visible=false;
        ProductName.visible=false;
        imageView.visible=false;
         }

    function listProductNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if(listProductName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listProductName.selectFirstRow();
         }

    function textItemOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
          if (event.code != KeyCode.VK_F10)
          {
           getProduct(event.code,textItem.rawText.trim());
           if (event.code == KeyCode.VK_DOWN)
            {
                listProductName.requestFocus();
                listProductName.selectFirstRow();
           }
           else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
           {
            listProductName.visible = false;
            }
      }
         }

    function textItemOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
     if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtFromDate.requestFocus();
    }shortcut(event.code);
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

    function rectangle2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
       FromPanel.visible=false;
         }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("CR3".trim())){
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
    CustomAlert.ShowInfo("Product Margin Report",msg);
    showAlertbox();
    }
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            buttonAction();
        }
        }
    function imgFromOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
       FromPanel.visible=true;
       frmFlag=false;
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
        toFlag=false;
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
        function buttonAction(): Void {
            if (txtFromDate.text==null or txtFromDate.text.trim().length()==0) {
                FXinfo("Please Enter the From Date");
            }else if (txtToDate.text==null or txtToDate.text.trim().length()==0){
                FXinfo("Please Enter the To Date");
            }else{
                try{
                    sd=sdf1.format(sdf.parse(txtFromDate.text));
                    ed=sdf1.format(sdf.parse(txtToDate.text));
                    var image:String="{path}""/reportfiles/Medil Logo.png";
                    var params1  = new HashMap();
                    params1.put("startdate",sd);
                    params1.put("enddate",ed);
                    params1.put("itemname",'');
                    params1.put("REPORTS_DIR",image);
                    if(indRadio.selected == true){
                        if(textItem.text==null or textItem.text.trim().length()==0){
                            FXinfo("Please Enter The Item Name");
                        }else{
                             params1.put("type1",'individual_margin');
                             params1.put("itemname",textItem.text);
                             insRep();
                             panel.visible = true;
                             RepViewer.showReport("/reportfiles/product_margin.jasper",params1);
                        }
                    }else if(saleRadio.selected == true){
                        params1.put("type1",'saleswise_margin');
                        insRep();
                        panel.visible = true;
                        RepViewer.showReport("/reportfiles/product_margin.jasper",params1);
                    }else if(totRadio.selected == true){
                        params1.put("type1",'totalproduct_margin');
                        insRep();
                        panel.visible = true;
                        RepViewer.showReport("/reportfiles/totalproduct_margin.jasper",params1);
                    }else if(rdoBillWise.selected == true){
                        params1.put("type1",'billwise_margin');
                        insRep();
                        panel.visible = true;
                        RepViewer.showReport("/reportfiles/sale_margin.jasper",params1);
                    }
                    commonController.queryExecution("CALL pro_userlog('Product Margin','{button.text}')");
                }catch (e:Exception){
                    var msg:String="ReportProductMargin buttonAction() Exception:{e.getMessage()}";
                    log.debug(msg);
                }
            }
   }
function getProduct(kcode: javafx.scene.input.KeyCode,iname:String) {
        var itemName: String[] = [];
        listProductName.visible = true;
        itemName =  commonController.ProductName(iname);
        listProductName.clearSelection();
        listProductName.items = itemName;
        var size =  listProductName.items.size();
        listProductName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        textItem.text = "{listProductName.selectedItem}";
                        listProductName.visible = false;
                        txtFromDate.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listProductName.selectedIndex == 0) {
                            listProductName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listProductName.visible = false;
                        textItem.requestFocus();
                    }
                };
        listProductName.onMouseClicked = function(e) {
                    textItem.text = "{listProductName.selectedItem}";
                    listProductName.visible = false;
                    txtFromDate.requestFocus();
                }

    if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size==0)
                listProductName.visible=false;
         }else{
             listH = 295;
         }
         if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listProductName.visible = false;
            textItem.requestFocus();
    }
public function Startup() : Void {
    fxCalendar.visible=false;
    FromPanel.content=[fxCalendar,];
    var showInTransfer:Integer = Integer.parseInt(commonController.getQueryValue("select count(*) from stock_statement where batch_no like '(ST)%'"));
    if(showInTransfer > 0) {
        hyperlink.visible = true;
    }
    else {
        hyperlink.visible = false;
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
                frmFlag=false;
                toFlag=false;
                txtToDate.requestFocus();
    }
  }
  }
