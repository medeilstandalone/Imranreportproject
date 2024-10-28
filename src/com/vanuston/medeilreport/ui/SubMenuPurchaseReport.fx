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


public class SubMenuPurchaseReport {

    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
    def rectSubmenu = for (i in [0..7]) Rectangle {
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
        onMouseEntered: panelReportsFormOnMouseEntered
    }
    
    public-read def rectPurReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: 50.0
    }
    
    public-read def imgMenuPurR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def imgMenuPurR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def imgMenuPurR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    def __layoutInfo_lblMenuPurR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPurR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPurR4
        onMouseClicked: lblMenuPurR4OnMouseClickedAtSubMenu
        text: "Label"
    }
    
    public-read def imgMenuPurR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[3]!=true
        disable: bind DisableMenu[3]
        layoutY: bind group3.layoutY+rectMenuLY[3]
        content: [ lblMenuPurR4, imgMenuPurR4, ]
    }
    
    def __layoutInfo_lblMenuPurR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPurR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPurR5
        text: "Label"
    }
    
    public-read def imgMenuPurR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[4]!=true
        disable: bind DisableMenu[4]
        layoutY: bind group4.layoutY+rectMenuLY[4]
        content: [ lblMenuPurR5, imgMenuPurR5, ]
    }
    
    def __layoutInfo_labelPurchaseMargin: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def labelPurchaseMargin: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_labelPurchaseMargin
        text: "Label"
    }
    
    public-read def imageMenuPurchaseMargin: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[5]!=true
        disable: bind DisableMenu[5]
        layoutY: bind group5.layoutY+rectMenuLY[5]
        content: [ labelPurchaseMargin, imageMenuPurchaseMargin, ]
    }
    
    def __layoutInfo_labelPurchaseSearch: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def labelPurchaseSearch: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_labelPurchaseSearch
        text: "Label"
    }
    
    public-read def imageMenuPurchaseSearch: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group7: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[6]!=true
        disable: bind DisableMenu[6]
        layoutY: bind group6.layoutY+rectMenuLY[6]
        content: [ labelPurchaseSearch, imageMenuPurchaseSearch, ]
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
    
    def __layoutInfo_lblMenuPurR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPurR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPurR3
        onMouseClicked: lblMenuPurR3OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuPurR3, imgMenuPurR3, ]
    }
    
    def __layoutInfo_lblMenuPurR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPurR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPurR2
        onMouseClicked: lblMenuPurR2OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuPurR2, imgMenuPurR2, ]
    }
    
    def __layoutInfo_lblMenuPurR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPurR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPurR1
        onMouseClicked: lblMenuPurR1OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuPurR1, imgMenuPurR1, ]
    }
    
    public-read def panelPurchaseReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 231.0
        content: [ rectPurReportBg, group1, group2, group3, group4, group5, group6, group7, ]
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
        content: [ rectSubMenuBg, panelReport, panelPurchaseReport, ]
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
                            rectPurReportBg.visible = false;
                            rectPurReportBg.layoutY = 43.0;
                            rectPurReportBg.fill = linearGradient;
                            rectPurReportBg.stroke = Violet;
                            rectPurReportBg.strokeWidth = 4.0;
                            rectPurReportBg.width = 226.0;
                            rectPurReportBg.height = 250.0;
                            rectPurReportBg.arcWidth = 5.0;
                            rectPurReportBg.arcHeight = 5.0;
                            lblMenuPurR1.visible = true;
                            lblMenuPurR1.layoutX = 2.0;
                            lblMenuPurR1.layoutY = 0.0;
                            __layoutInfo_lblMenuPurR1.width = 224.0;
                            __layoutInfo_lblMenuPurR1.height = 45.0;
                            lblMenuPurR1.text = "              Purchase by Product";
                            lblMenuPurR1.textFill = DarkGray;
                            imgMenuPurR1.visible = true;
                            imgMenuPurR1.layoutX = 16.0;
                            imgMenuPurR1.layoutY = 8.5;
                            imgMenuPurR1.image = imagePurchase;
                            imgMenuPurR1.fitWidth = 28.0;
                            imgMenuPurR1.fitHeight = 28.0;
                            lblMenuPurR2.visible = true;
                            lblMenuPurR2.layoutX = 2.0;
                            lblMenuPurR2.layoutY = 0.0;
                            __layoutInfo_lblMenuPurR2.width = 224.0;
                            __layoutInfo_lblMenuPurR2.height = 45.0;
                            lblMenuPurR2.text = "              Purchase Register ";
                            lblMenuPurR2.textFill = DarkGray;
                            imgMenuPurR2.visible = true;
                            imgMenuPurR2.layoutX = 16.0;
                            imgMenuPurR2.layoutY = 8.5;
                            imgMenuPurR2.image = imagePurchase;
                            imgMenuPurR2.fitWidth = 28.0;
                            imgMenuPurR2.fitHeight = 28.0;
                            lblMenuPurR3.visible = true;
                            lblMenuPurR3.layoutX = 2.0;
                            lblMenuPurR3.layoutY = 0.0;
                            __layoutInfo_lblMenuPurR3.width = 224.0;
                            __layoutInfo_lblMenuPurR3.height = 45.0;
                            lblMenuPurR3.text = "              Purchase Order";
                            lblMenuPurR3.textFill = DarkGray;
                            imgMenuPurR3.visible = true;
                            imgMenuPurR3.layoutX = 16.0;
                            imgMenuPurR3.layoutY = 8.5;
                            imgMenuPurR3.image = imagePurchase;
                            imgMenuPurR3.fitWidth = 28.0;
                            imgMenuPurR3.fitHeight = 28.0;
                            lblMenuPurR4.visible = true;
                            lblMenuPurR4.layoutY = 0.0;
                            __layoutInfo_lblMenuPurR4.width = 224.0;
                            __layoutInfo_lblMenuPurR4.height = 45.0;
                            lblMenuPurR4.onMouseClicked = lblMenuPurR4OnMouseClickedAtSubMenu;
                            lblMenuPurR4.text = "              Purchase Return ";
                            lblMenuPurR4.font = Leftmenu1;
                            lblMenuPurR4.textFill = DarkGray;
                            imgMenuPurR4.visible = true;
                            imgMenuPurR4.layoutX = 16.0;
                            imgMenuPurR4.layoutY = 8.5;
                            imgMenuPurR4.image = imagePurchase;
                            imgMenuPurR4.fitWidth = 28.0;
                            imgMenuPurR4.fitHeight = 28.0;
                            lblMenuPurR5.visible = true;
                            lblMenuPurR5.layoutY = 0.0;
                            __layoutInfo_lblMenuPurR5.width = 224.0;
                            __layoutInfo_lblMenuPurR5.height = 45.0;
                            lblMenuPurR5.onMouseClicked = lblMenuPurR5OnMouseClickedAtSubMenu;
                            lblMenuPurR5.text = "              Sent PO\'s";
                            lblMenuPurR5.font = Leftmenu1;
                            lblMenuPurR5.textFill = DarkGray;
                            imgMenuPurR5.visible = true;
                            imgMenuPurR5.layoutX = 16.0;
                            imgMenuPurR5.layoutY = 8.5;
                            imgMenuPurR5.image = imagePurchase;
                            imgMenuPurR5.fitWidth = 28.0;
                            imgMenuPurR5.fitHeight = 28.0;
                            labelPurchaseMargin.visible = true;
                            labelPurchaseMargin.layoutX = 0.0;
                            __layoutInfo_labelPurchaseMargin.width = 224.0;
                            __layoutInfo_labelPurchaseMargin.height = 45.0;
                            labelPurchaseMargin.onMouseClicked = labelPurchaseMarginOnMouseClickedAtSubMenu;
                            labelPurchaseMargin.text = "              Purchase Margin";
                            labelPurchaseMargin.font = Leftmenu1;
                            labelPurchaseMargin.textFill = DarkGray;
                            imageMenuPurchaseMargin.visible = true;
                            imageMenuPurchaseMargin.layoutX = 16.0;
                            imageMenuPurchaseMargin.layoutY = 8.5;
                            imageMenuPurchaseMargin.image = imagePurchase;
                            imageMenuPurchaseMargin.fitWidth = 28.0;
                            imageMenuPurchaseMargin.fitHeight = 28.0;
                            labelPurchaseSearch.visible = true;
                            __layoutInfo_labelPurchaseSearch.width = 224.0;
                            __layoutInfo_labelPurchaseSearch.height = 45.0;
                            labelPurchaseSearch.onMouseClicked = labelPurchaseSearchOnMouseClickedAtSubMenu;
                            labelPurchaseSearch.text = "              Purchase Search";
                            labelPurchaseSearch.font = Leftmenu1;
                            labelPurchaseSearch.textFill = DarkGray;
                            imageMenuPurchaseSearch.visible = true;
                            imageMenuPurchaseSearch.layoutX = 16.0;
                            imageMenuPurchaseSearch.layoutY = 8.5;
                            imageMenuPurchaseSearch.image = imagePurchase;
                            imageMenuPurchaseSearch.fitWidth = 28.0;
                            imageMenuPurchaseSearch.fitHeight = 28.0;
                            panelPurchaseReport.visible = true;
                            panelPurchaseReport.layoutX = 4.0;
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
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==2){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }

    public function LoadSubMenu(curr_panel: Panel): Void {
        panelReportsForm.disable = true;
        panelPurchaseReport.visible = false;
        curr_panel  .visible = true;
        }

    function panelReportsFormOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = false;
    }
 
    //          Purchase Reports

    function lblMenuPurR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm(" PurR1");
        def ReportPurchaseDetail = ReportPurchaseDetail {};
        ReportPurchaseDetail.Startup();
        insert ReportPurchaseDetail.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuPurR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        deleteForm("PurR2 ");
        def ReportPurchaseregister = ReportPurchaseregister {};
        ReportPurchaseregister.Startup();
        insert ReportPurchaseregister.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuPurR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm(" PurR3");
        def ReportPurchaseOrderList = ReportPurchaseOrderList {};
        ReportPurchaseOrderList.Startup();
        insert ReportPurchaseOrderList.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuPurR4OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PurR4 ");
        def ReportPurchasereturn = ReportPurchasereturn {};
        ReportPurchasereturn.Startup();
        insert ReportPurchasereturn.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuPurR5OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PurR5 ");
        def ReportSendPurchaseOrder = ReportSendPurchaseOrder {};
        ReportSendPurchaseOrder.Startup();
        insert ReportSendPurchaseOrder.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function labelPurchaseMarginOnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PurR6 ");
        def ReportPurchaseMargin = ReportPurchaseMargin {};
        ReportPurchaseMargin.Startup();
        insert ReportPurchaseMargin.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function labelPurchaseSearchOnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PurR7 ");
        def ReportPurchaseSearch = ReportPurchaseSearch {};
        ReportPurchaseSearch.Startup();
        insert ReportPurchaseSearch.getDesignRootNodes() into panelReportsForm.content;
    }
    }
//Remove contents from Form Panel
    public function editionAlert(): Void {
            MessageBox.MsgBox("Medeil","Information",CommonDeclare.edition_msg);
            delete panelMsgBox.content;
            insert MessageBox.getDesignRootNodes() into panelMsgBox.content;
        }

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
            var access = versionLookup.Purchase_Report();
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
        for (i in [0..<7]) {
                rectMenuLY[i]=48.0;
                DisableMenu[i]=false;
            }
        }
    }

    init {
        group1.content=[ rectSubmenu[0],lblMenuPurR1, imgMenuPurR1, ];
        group2.content=[ rectSubmenu[1],lblMenuPurR2, imgMenuPurR2, ];
        group3.content=[ rectSubmenu[2],lblMenuPurR3, imgMenuPurR3, ];
        group4.content=[ rectSubmenu[3],lblMenuPurR4, imgMenuPurR4, ];
        group5.content=[ rectSubmenu[4],lblMenuPurR5, imgMenuPurR5, ];
        group6.content=[ rectSubmenu[5],labelPurchaseMargin, imageMenuPurchaseMargin, ];
        group7.content=[ rectSubmenu[6],labelPurchaseSearch, imageMenuPurchaseSearch, ];
    }

}
