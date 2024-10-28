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


public class SubMenuStockAnalysisReport {

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
    
    public-read def rectStockAnalyReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: 50.0
    }
    
    public-read def imgMenuStkAR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    def __layoutInfo_lblMenuStkAR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR2
        onMouseClicked: lblMenuStkAR2OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStkAR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuStkAR2, imgMenuStkAR2, ]
    }
    
    def __layoutInfo_lblMenuStkAR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR3
        onMouseClicked: lblMenuStkAR3OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStkAR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuStkAR3, imgMenuStkAR3, ]
    }
    
    def __layoutInfo_lblMenuStkAR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR4
        onMouseClicked: lblMenuStkAR4OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStkAR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[3]!=true
        disable: bind DisableMenu[3]
        layoutY: bind group3.layoutY+rectMenuLY[3]
        content: [ lblMenuStkAR4, imgMenuStkAR4, ]
    }
    
    def __layoutInfo_lblMenuStkAR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR5
        onMouseClicked: lblMenuStkAR5OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStkAR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[4]!=true
        disable: bind DisableMenu[4]
        layoutY: bind group4.layoutY+rectMenuLY[4]
        content: [ lblMenuStkAR5, imgMenuStkAR5, ]
    }
    
    def __layoutInfo_lblMenuStkAR6: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR6
        onMouseClicked: lblMenuStkAR6OnMouseClickedAtSubMenu
        text: "Label"
    }
    
    public-read def imgMenuStkAR6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[5]!=true
        disable: bind DisableMenu[5]
        layoutY: bind group5.layoutY+rectMenuLY[5]
        content: [ lblMenuStkAR6, imgMenuStkAR6, ]
    }
    
    def __layoutInfo_lblMenuStkAR7: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR7: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR7
        text: "Label"
    }
    
    public-read def imgMenuStkAR7: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group7: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[6]!=true
        disable: bind DisableMenu[6]
        layoutY: bind group6.layoutY+rectMenuLY[6]
        content: [ lblMenuStkAR7, imgMenuStkAR7, ]
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
    
    def __layoutInfo_lblMenuStkAR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStkAR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStkAR1
        onMouseClicked: lblMenuStkAR1OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuStkAR1, imgMenuStkAR1, ]
    }
    
    public-read def panelStockAReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        content: [ rectStockAnalyReportBg, group1, group2, group3, group4, group5, group6, group7, ]
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
        content: [ rectSubMenuBg, panelReport, panelStockAReport, ]
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
                            rectStockAnalyReportBg.visible = false;
                            rectStockAnalyReportBg.layoutY = 43.0;
                            rectStockAnalyReportBg.fill = linearGradient;
                            rectStockAnalyReportBg.stroke = Violet;
                            rectStockAnalyReportBg.strokeWidth = 4.0;
                            rectStockAnalyReportBg.width = 226.0;
                            rectStockAnalyReportBg.height = 296.0;
                            rectStockAnalyReportBg.arcWidth = 5.0;
                            rectStockAnalyReportBg.arcHeight = 5.0;
                            lblMenuStkAR1.visible = true;
                            lblMenuStkAR1.layoutX = 0.0;
                            lblMenuStkAR1.layoutY = 0.0;
                            __layoutInfo_lblMenuStkAR1.width = 224.0;
                            __layoutInfo_lblMenuStkAR1.height = 45.0;
                            lblMenuStkAR1.text = "             Fast Moving Products";
                            lblMenuStkAR1.textFill = DarkGray;
                            imgMenuStkAR1.visible = true;
                            imgMenuStkAR1.layoutX = 16.0;
                            imgMenuStkAR1.layoutY = 8.5;
                            imgMenuStkAR1.image = imageStockAnalysis;
                            imgMenuStkAR1.fitWidth = 28.0;
                            imgMenuStkAR1.fitHeight = 28.0;
                            lblMenuStkAR2.visible = true;
                            lblMenuStkAR2.layoutX = 0.0;
                            lblMenuStkAR2.layoutY = 0.0;
                            __layoutInfo_lblMenuStkAR2.width = 224.0;
                            __layoutInfo_lblMenuStkAR2.height = 45.0;
                            lblMenuStkAR2.text = "             Slow Moving Products";
                            lblMenuStkAR2.font = Leftmenu1;
                            lblMenuStkAR2.textFill = DarkGray;
                            imgMenuStkAR2.visible = true;
                            imgMenuStkAR2.layoutX = 16.0;
                            imgMenuStkAR2.layoutY = 8.5;
                            imgMenuStkAR2.image = imageStockAnalysis;
                            imgMenuStkAR2.fitWidth = 28.0;
                            imgMenuStkAR2.fitHeight = 28.0;
                            lblMenuStkAR3.visible = true;
                            lblMenuStkAR3.layoutX = 0.0;
                            lblMenuStkAR3.layoutY = 0.0;
                            __layoutInfo_lblMenuStkAR3.width = 224.0;
                            __layoutInfo_lblMenuStkAR3.height = 45.0;
                            lblMenuStkAR3.text = "             Minimum Stock  ";
                            lblMenuStkAR3.font = Leftmenu1;
                            lblMenuStkAR3.textFill = DarkGray;
                            imgMenuStkAR3.visible = true;
                            imgMenuStkAR3.layoutX = 16.0;
                            imgMenuStkAR3.layoutY = 8.5;
                            imgMenuStkAR3.image = imageStockAnalysis;
                            imgMenuStkAR3.fitWidth = 28.0;
                            imgMenuStkAR3.fitHeight = 28.0;
                            lblMenuStkAR4.visible = true;
                            lblMenuStkAR4.layoutX = 0.0;
                            lblMenuStkAR4.layoutY = 0.0;
                            __layoutInfo_lblMenuStkAR4.width = 224.0;
                            __layoutInfo_lblMenuStkAR4.height = 45.0;
                            lblMenuStkAR4.text = "             Out of Stock  ";
                            lblMenuStkAR4.font = Leftmenu1;
                            lblMenuStkAR4.textFill = DarkGray;
                            imgMenuStkAR4.visible = true;
                            imgMenuStkAR4.layoutX = 16.0;
                            imgMenuStkAR4.layoutY = 8.5;
                            imgMenuStkAR4.image = imageStockAnalysis;
                            imgMenuStkAR4.fitWidth = 28.0;
                            imgMenuStkAR4.fitHeight = 28.0;
                            lblMenuStkAR5.visible = true;
                            lblMenuStkAR5.layoutX = 0.0;
                            lblMenuStkAR5.layoutY = 0.0;
                            __layoutInfo_lblMenuStkAR5.width = 224.0;
                            __layoutInfo_lblMenuStkAR5.height = 45.0;
                            lblMenuStkAR5.text = "             Excess Stock ";
                            lblMenuStkAR5.font = Leftmenu1;
                            lblMenuStkAR5.textFill = DarkGray;
                            imgMenuStkAR5.visible = true;
                            imgMenuStkAR5.layoutX = 16.0;
                            imgMenuStkAR5.layoutY = 8.5;
                            imgMenuStkAR5.image = imageStockAnalysis;
                            imgMenuStkAR5.fitWidth = 28.0;
                            imgMenuStkAR5.fitHeight = 28.0;
                            lblMenuStkAR6.visible = true;
                            lblMenuStkAR6.layoutX = 0.0;
                            lblMenuStkAR6.layoutY = 0.0;
                            __layoutInfo_lblMenuStkAR6.width = 224.0;
                            __layoutInfo_lblMenuStkAR6.height = 45.0;
                            lblMenuStkAR6.text = "             Immovable Stock ";
                            lblMenuStkAR6.font = Leftmenu1;
                            lblMenuStkAR6.textFill = DarkGray;
                            imgMenuStkAR6.visible = true;
                            imgMenuStkAR6.layoutX = 16.0;
                            imgMenuStkAR6.layoutY = 8.5;
                            imgMenuStkAR6.image = imageStockAnalysis;
                            imgMenuStkAR6.fitWidth = 28.0;
                            imgMenuStkAR6.fitHeight = 28.0;
                            lblMenuStkAR7.visible = true;
                            __layoutInfo_lblMenuStkAR7.width = 224.0;
                            __layoutInfo_lblMenuStkAR7.height = 45.0;
                            lblMenuStkAR7.onMouseClicked = lblMenuStkAR7OnMouseClickedAtSubMenu;
                            lblMenuStkAR7.text = "             Stock Register";
                            lblMenuStkAR7.font = Leftmenu1;
                            lblMenuStkAR7.textFill = DarkGray;
                            imgMenuStkAR7.visible = true;
                            imgMenuStkAR7.layoutX = 16.0;
                            imgMenuStkAR7.layoutY = 8.5;
                            imgMenuStkAR7.image = imageStockAnalysis;
                            imgMenuStkAR7.fitWidth = 28.0;
                            imgMenuStkAR7.fitHeight = 28.0;
                            panelStockAReport.visible = true;
                            panelStockAReport.layoutX = 4.0;
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
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==5){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }

 
//                    Stock Analysis Report
    function lblMenuStkAR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
          editionAlert();
         }
         else {
        deleteForm("StkAR1");
        def ReportFastMovingDrug = ReportFastMovingDrugs {};
        ReportFastMovingDrug.Startup();
        insert ReportFastMovingDrug.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkAR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkAR2");
        def ReportSlowMovingDrug = ReportSlowMovingDrugs {};
        insert ReportSlowMovingDrug.getDesignRootNodes() into panelReportsForm.content;
        ReportSlowMovingDrug.Startup();
    }
    }

    function lblMenuStkAR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkAR3");
        def ReportMinStock = ReportMinStock {};
        insert ReportMinStock.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkAR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        deleteForm("StkAR4");
        def ReportOutOfStock = ReportOutOfStock {};
        insert ReportOutOfStock.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuStkAR5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkAR5");
        def ReportExcessiveStock = ReportExcessiveStock {};
        insert ReportExcessiveStock.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStkAR6OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StkAR6");
        def ReportDeadStock = ReportDeadStock {};
        insert ReportDeadStock.getDesignRootNodes() into panelReportsForm.content;
        ReportDeadStock.Startup();
    }
    }

     function lblMenuStkAR7OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
             editionAlert();
         }
         else {
            deleteForm("StkAR7");
            def ReportStkActivity = ReportStockActivity {};
            insert ReportStkActivity.getDesignRootNodes() into panelReportsForm.content;
            ReportStkActivity.Startup();
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
            var access = versionLookup.StockAnalysis_Report();
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
        group1.content=[ rectSubmenu[0],lblMenuStkAR1, imgMenuStkAR1, ];
        group2.content=[ rectSubmenu[1],lblMenuStkAR2, imgMenuStkAR2, ];
        group3.content=[ rectSubmenu[2],lblMenuStkAR3, imgMenuStkAR3, ];
        group4.content=[ rectSubmenu[3],lblMenuStkAR4, imgMenuStkAR4, ];
        group5.content=[ rectSubmenu[4],lblMenuStkAR5, imgMenuStkAR5, ];
        group6.content=[ rectSubmenu[5],lblMenuStkAR6, imgMenuStkAR6, ];
        group7.content=[ rectSubmenu[6],lblMenuStkAR7, imgMenuStkAR7, ];
    }

}
