package com.vanuston.medeilreport.ui;

import javafx.scene.image.ImageView;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import javafx.scene.image.Image;
import javafx.scene.shape.Rectangle;
import javafx.scene.layout.Panel;
import javafx.animation.Timeline;
import javafx.animation.Interpolator;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.util.GetUserInfo;
import com.vanuston.medeilreport.util.VersionLookup;
import com.vanuston.medeilreport.util.GetProductInfo;


public class SubMenuStockReport {

    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
    def rectSubmenu = for (i in [0..6]) Rectangle {
                    height: rectMenuH;
                    width: rectMenuW;
                    strokeWidth: 2;
                    arcHeight: 5;
                    arcWidth: 5;
                    layoutY: 0.0;
                    layoutX: 4.00;
                    styleClass: "LeftmenuHighlight"; };
    var user = bind CommonDeclare.user on replace {
        setPrivillages(user);
    }
    var currRep: String = "" on replace {
        CommonDeclare.currRep = currRep;
    }
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def rectSubMenuBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 0.0
        layoutY: 0.0
        width: 100.0
        height: 50.0
    }
    
    public-read def rectangle: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: bind imgClose.visible
        width: bind panelW
        height: bind panelH
    }
    
    public-read def rectangle2: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: bind imgClose.visible
        styleClass: "rectFormHeader"
        width: bind panelW
        height: 50.0
    }
    
    public-read def panelReportsForm: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 232.0
        layoutY: -2.0
    }
    
    public-read def rectStkReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: 50.0
    }
    
    def __layoutInfo_lblMenuStkR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR2
        onMouseClicked: lblMenuStkR2OnMouseClicked
        text: "Label"
    }
    
    def __layoutInfo_lblMenuStkR7: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR7: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR7
        text: "Label"
    }
    
    public-read def panelMsgBox: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: bind panelMsgBoxLX
        layoutY: bind panelMsgBoxLY
    }
    
    public-read def imageReport: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report1.png"
    }
    
    public-read def DarkGray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.2
        blue: 0.2
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#ffffff") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#e2eef4") }, ]
    }
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.01
        green: 0.5
        blue: 0.76
    }
    
    public-read def Sandal: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 1.0
        green: 0.8
        blue: 0.4
    }
    
    public-read def Left_Menu: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 18.0
    }
    
    public-read def Leftmenu1: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial bold"
        size: 16.0
    }
    
    def __layoutInfo_lblMenuStkR6: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR6
        onMouseClicked: lblMenuStkR5OnMouseClicked
        text: "               Stock List "
        font: Leftmenu1
    }
    
    def __layoutInfo_lblMenuStkR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR5
        onMouseClicked: lblMenuStkR4OnMouseClicked
        text: "               Short Expiry List "
        font: Leftmenu1
    }
    
    def __layoutInfo_lblMenuStkR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR4
        onMouseClicked: lblMenuStkR3OnMouseClicked
        text: "               Expiry Stock "
        font: Leftmenu1
    }
    
    def __layoutInfo_lblMenuStkR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR3
        onMouseClicked: lblMenuStkR2OnMouseClicked
        text: "             Pharma Register"
        font: Leftmenu1
    }
    
    def __layoutInfo_lblMenuStkR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkR1
        onMouseClicked: lblMenuStkR1OnMouseClicked
        text: "               Current Stock "
        font: Leftmenu1
    }
    
    public-read def Gray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.9098039
        green: 0.87058824
        blue: 0.87058824
    }
    
    public-read def color: javafx.scene.paint.Color = javafx.scene.paint.Color {
        blue: 0.2
    }
    
    public-read def Green: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.6
    }
    
    public-read def SubmenuInvBG: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.9607843
        green: 0.9764706
        blue: 0.91764706
    }
    
    public-read def imageNavigationDown: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationDown.png"
    }
    
    public-read def imageNavigationUp: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationUp.png"
    }
    
    public-read def imageFinancial: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportFinancial.png"
    }
    
    public-read def imageCRM: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportsCustomer.png"
    }
    
    public-read def imageSales: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportSales.png"
    }
    
    public-read def imageStock: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Stock.png"
    }
    
    public-read def imgMenuStkR7: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group7: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[6]!=true
        disable: bind DisableMenu[6]
        layoutY: bind group6.layoutY+rectMenuLY[6]
        content: [ lblMenuStkR7, imgMenuStkR7, ]
    }
    
    public-read def imgMenuStkR6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[5]!=true
        disable: bind DisableMenu[5]
        layoutY: bind group5.layoutY+rectMenuLY[5]
        content: [ lblMenuStkR6, imgMenuStkR6, ]
    }
    
    public-read def imgMenuStkR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[4]!=true
        disable: bind DisableMenu[4]
        layoutY: bind group4.layoutY+rectMenuLY[4]
        content: [ lblMenuStkR5, imgMenuStkR5, ]
    }
    
    public-read def imgMenuStkR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[3]!=true
        disable: bind DisableMenu[3]
        layoutY: bind group3.layoutY+rectMenuLY[3]
        content: [ lblMenuStkR4, imgMenuStkR4, ]
    }
    
    public-read def imgMenuStkR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuStkR3, imgMenuStkR3, ]
    }
    
    public-read def imgMenuStkR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuStkR2, imgMenuStkR2, ]
    }
    
    public-read def imgMenuStkR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageStock
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuStkR1, imgMenuStkR1, ]
    }
    
    public-read def panelStockReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        content: [ rectStkReportBg, group1, group2, group3, group4, group5, group6, group7, ]
    }
    
    public-read def imageStockAnalysis: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportAnalysis.png"
    }
    
    public-read def imagePurchase: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Purchase.png"
    }
    
    public-read def imageInventory: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Inventory.png"
    }
    
    public-read def imageProduct: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Product.png"
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Close.png"
    }
    
    public-read def imgClose: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        opacity: bind opacClose
        layoutX: bind imgCancelLX
        image: image
    }
    
    public-read def panelReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        content: [ rectangle, rectangle2, imgClose, panelReportsForm, ]
    }
    
    public-read def paneReportsSubMenu: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        disable: bind CloseForm
        layoutX: 0.0
        layoutY: 0.0
        content: [ rectSubMenuBg, panelReport, panelStockReport, ]
    }
    
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        content: [ paneReportsSubMenu, panelMsgBox, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
        names: [ "SubMenu", ]
        actual: 0
        timelines: [
            javafx.animation.Timeline {
                keyFrames: [
                    javafx.animation.KeyFrame {
                        time: 0ms
                        action: function() {
                            rectSubMenuBg.visible = false;
                            rectSubMenuBg.fill = linearGradient;
                            rectSubMenuBg.stroke = DarkGray;
                            rectSubMenuBg.strokeWidth = 3.0;
                            rectSubMenuBg.width = 226.0;
                            rectSubMenuBg.height = 545.0;
                            rectSubMenuBg.arcWidth = 5.0;
                            rectSubMenuBg.arcHeight = 5.0;
                            rectangle.layoutX = 232.0;
                            rectangle.layoutY = -2.0;
                            rectangle.styleClass = "form-background";
                            rectangle.fill = linearGradient;
                            rectangle.arcWidth = 5.0;
                            rectangle.arcHeight = 5.0;
                            rectangle2.opacity = 0.25;
                            rectangle2.layoutX = 232.0;
                            rectangle2.height = 32.0;
                            rectangle2.arcWidth = 5.0;
                            rectangle2.arcHeight = 5.0;
                            imgClose.visible = false;
                            imgClose.layoutY = -1.0;
                            imgClose.onMouseClicked = imgCloseOnMouseClicked;
                            imgClose.onMouseEntered = imgCloseOnMouseEntered;
                            imgClose.onMouseExited = imgCloseOnMouseExited;
                            imgClose.blocksMouse = true;
                            panelReportsForm.visible = true;
                            panelReport.visible = true;
                            rectStkReportBg.visible = false;
                            rectStkReportBg.layoutY = 43.0;
                            rectStkReportBg.fill = linearGradient;
                            rectStkReportBg.stroke = Violet;
                            rectStkReportBg.strokeWidth = 4.0;
                            rectStkReportBg.width = 226.0;
                            rectStkReportBg.height = 345.0;
                            rectStkReportBg.arcWidth = 5.0;
                            rectStkReportBg.arcHeight = 5.0;
                            lblMenuStkR1.visible = true;
                            lblMenuStkR1.layoutX = 0.0;
                            lblMenuStkR1.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR1.width = 224.0;
                            __layoutInfo_lblMenuStkR1.height = 45.0;
                            lblMenuStkR1.text = "              Consolidated Stock ";
                            lblMenuStkR1.textFill = DarkGray;
                            imgMenuStkR1.visible = true;
                            imgMenuStkR1.layoutX = 16.0;
                            imgMenuStkR1.layoutY = 8.5;
                            imgMenuStkR1.fitWidth = 28.0;
                            imgMenuStkR1.fitHeight = 28.0;
                            lblMenuStkR2.visible = true;
                            lblMenuStkR2.layoutX = 0.0;
                            lblMenuStkR2.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR2.width = 224.0;
                            __layoutInfo_lblMenuStkR2.height = 45.0;
                            lblMenuStkR2.text = "              Current Stock";
                            lblMenuStkR2.font = Leftmenu1;
                            lblMenuStkR2.textFill = DarkGray;
                            imgMenuStkR2.visible = true;
                            imgMenuStkR2.layoutX = 16.0;
                            imgMenuStkR2.layoutY = 8.5;
                            imgMenuStkR2.fitWidth = 28.0;
                            imgMenuStkR2.fitHeight = 28.0;
                            lblMenuStkR3.visible = true;
                            lblMenuStkR3.layoutX = 0.0;
                            lblMenuStkR3.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR3.width = 224.0;
                            __layoutInfo_lblMenuStkR3.height = 45.0;
                            lblMenuStkR3.onMouseClicked = lblMenuStkR3OnMouseClicked;
                            lblMenuStkR3.text = "             Pharma Register";
                            lblMenuStkR3.textFill = DarkGray;
                            imgMenuStkR3.visible = true;
                            imgMenuStkR3.layoutX = 16.0;
                            imgMenuStkR3.layoutY = 8.5;
                            imgMenuStkR3.fitWidth = 28.0;
                            imgMenuStkR3.fitHeight = 28.0;
                            lblMenuStkR4.visible = true;
                            lblMenuStkR4.layoutX = 0.0;
                            lblMenuStkR4.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR4.width = 224.0;
                            __layoutInfo_lblMenuStkR4.height = 45.0;
                            lblMenuStkR4.onMouseClicked = lblMenuStkR4OnMouseClicked;
                            lblMenuStkR4.text = "              Expiry Stock ";
                            lblMenuStkR4.textFill = DarkGray;
                            imgMenuStkR4.visible = true;
                            imgMenuStkR4.layoutX = 16.0;
                            imgMenuStkR4.layoutY = 8.5;
                            imgMenuStkR4.fitWidth = 28.0;
                            imgMenuStkR4.fitHeight = 28.0;
                            lblMenuStkR5.visible = true;
                            lblMenuStkR5.layoutX = 0.0;
                            lblMenuStkR5.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR5.width = 224.0;
                            __layoutInfo_lblMenuStkR5.height = 45.0;
                            lblMenuStkR5.onMouseClicked = lblMenuStkR5OnMouseClicked;
                            lblMenuStkR5.text = "              Short Expiry";
                            lblMenuStkR5.textFill = DarkGray;
                            imgMenuStkR5.visible = true;
                            imgMenuStkR5.layoutX = 16.0;
                            imgMenuStkR5.layoutY = 8.5;
                            imgMenuStkR5.fitWidth = 28.0;
                            imgMenuStkR5.fitHeight = 28.0;
                            lblMenuStkR6.visible = true;
                            lblMenuStkR6.layoutX = 0.0;
                            lblMenuStkR6.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR6.width = 224.0;
                            __layoutInfo_lblMenuStkR6.height = 45.0;
                            lblMenuStkR6.onMouseClicked = lblMenuStkR6OnMouseClicked;
                            lblMenuStkR6.text = "              Rackwise Stock ";
                            lblMenuStkR6.textFill = DarkGray;
                            imgMenuStkR6.visible = true;
                            imgMenuStkR6.layoutX = 16.0;
                            imgMenuStkR6.layoutY = 8.5;
                            imgMenuStkR6.fitWidth = 28.0;
                            imgMenuStkR6.fitHeight = 28.0;
                            lblMenuStkR7.visible = true;
                            lblMenuStkR7.layoutX = 0.0;
                            lblMenuStkR7.layoutY = 0.0;
                            __layoutInfo_lblMenuStkR7.width = 224.0;
                            __layoutInfo_lblMenuStkR7.height = 45.0;
                            lblMenuStkR7.onMouseClicked = lblMenuStkR7OnMouseClicked;
                            lblMenuStkR7.text = "              Expiry Return";
                            lblMenuStkR7.font = Leftmenu1;
                            lblMenuStkR7.textFill = DarkGray;
                            imgMenuStkR7.visible = true;
                            imgMenuStkR7.layoutX = 16.0;
                            imgMenuStkR7.layoutY = 8.5;
                            imgMenuStkR7.fitWidth = 28.0;
                            imgMenuStkR7.fitHeight = 28.0;
                            panelStockReport.visible = true;
                            panelStockReport.layoutX = 4.0;
                            paneReportsSubMenu.visible = true;
                            paneReportsSubMenu.styleClass = "";
                            panelMsgBox.visible = true;
                            panel.visible = true;
                        }
                    }
                ]
            }
        ]
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ panel, ]
    }
    // </editor-fold>//GEN-END:main
    var rectMenuLY:Number[];
    var DisableMenu:Boolean[];
    var imgCancelLX=bind CommonDeclare.panelFormW+208;
    var panelMsgBoxLX= bind ((CommonDeclare.panelFormW-500)/2)+207;
    var panelMsgBoxLY= bind ((CommonDeclare.panelFormH-150)/2)-100;
    def MessageBox=MessageBox{};
    var CloseForm:Boolean;
    var getProductInfo: GetProductInfo = new GetProductInfo();
    var productType:String=getProductInfo.getStatus();

     public function editionAlert(): Void {
            MessageBox.MsgBox("Medeil","Information",CommonDeclare.edition_msg);
            delete panelMsgBox.content;
            insert MessageBox.getDesignRootNodes() into panelMsgBox.content;
    }

function imgCloseOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        CloseForm=true;
        MessageBox.MsgBox("Medeil","Confirm","Are you sure you want to close current form?");
        delete panelMsgBox.content;
        insert MessageBox.getDesignRootNodes() into panelMsgBox.content;
         }
    function imgCloseOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        fadeClose.rate = -1.0;
        fadeClose.play();
         }
    function imgCloseOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeClose.rate = 1.0;
        fadeClose.play();
         }
var opacClose=0.5;
var fadeClose = Timeline {
    keyFrames: [
                at(0s) { opacClose => 0.5 tween Interpolator.LINEAR },
                at(0.1s) { opacClose => 1.0 tween Interpolator.LINEAR },
                ]
};
 var msgOutput:Integer=bind MessageBox.msgboxOutput  on replace{
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==4){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }

    public function LoadSubMenu(curr_panel: Panel): Void {
        panelReportsForm.disable = true;
        curr_panel  .visible = true;
        }
//                            Stock Reports

    function lblMenuStkR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        deleteForm("StkR1");
        def ReportConsolidatedStock = ReportConsolidatedStock {};
        insert ReportConsolidatedStock.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuStkR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkR2");
        def ReportCurrentStock = ReportCurrentStock {};
        ReportCurrentStock.Startup();
        insert ReportCurrentStock.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkR3");
        def ReportDamagedStock = ReportPharmaRegister {};
        ReportDamagedStock.Startup();
        insert ReportDamagedStock.getDesignRootNodes() into panelReportsForm.content;

//        def ReportDamagedStock = ReportDamagedStock {};
//        ReportDamagedStock.Startup();
//        insert ReportDamagedStock.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkR4");
        def ReportExpiryStock = ReportExpiryStock {};
        insert ReportExpiryStock.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkR5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkR5");
        def ReportShortExpiry = ReportShortExpiry {};
        insert ReportShortExpiry.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkR6OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkR6");
        def ReportrackwiseStock = ReportrackwiseStock{};
        ReportrackwiseStock.Startup();
        insert ReportrackwiseStock.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkR7OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
        editionAlert();
        }
        else {
        deleteForm("StkR7");
        def ReportExpiryReturn = ReportExpiryReturn {};
        ReportExpiryReturn.Startup();
        insert ReportExpiryReturn.getDesignRootNodes() into panelReportsForm.content;
    }
    }
//Remove contents from Form Panel

    public function deleteForm(frm: String): Void {
        panelReport.visible=true;
        imgClose.visible=true;
        delete  panelReportsForm.content;
        currRep = frm.trim();

    }
    function setPrivillages(u: String): Void {
        var uname = u;
        var getUserInfo:GetUserInfo = new GetUserInfo();
        var versionLookup:VersionLookup = new VersionLookup();
        var userType = getUserInfo.getUserType(uname);
        if (userType.equals("User") or userType.equals("Admin") or userType.equals("SuperAdmin") ) {
            var access = versionLookup.Stock_Report();
            for (i in [0..<access.size()]) {
            if (access.get(i) == 0) {
                    DisableMenu[i]=true;
                    rectMenuLY[i]=0.0;
                } else {
                    DisableMenu[i]=false;
                    rectMenuLY[i]=48.0;
                }
            }
        } else {
        for (i in [0..<6]) {
                rectMenuLY[i]=48.0;
                DisableMenu[i]=false;
            }
        }
    }

    init {
        group1.content=[ rectSubmenu[0],lblMenuStkR1, imgMenuStkR1, ];
        group2.content=[ rectSubmenu[1],lblMenuStkR2, imgMenuStkR2, ];
        group3.content=[ rectSubmenu[2],lblMenuStkR3, imgMenuStkR3, ];
        group4.content=[ rectSubmenu[3],lblMenuStkR4, imgMenuStkR4, ];
        group5.content=[ rectSubmenu[4],lblMenuStkR5, imgMenuStkR5, ];
        group6.content=[ rectSubmenu[5],lblMenuStkR6, imgMenuStkR6, ];
        group7.content=[ rectSubmenu[6],lblMenuStkR7, imgMenuStkR7, ];
    }


}
