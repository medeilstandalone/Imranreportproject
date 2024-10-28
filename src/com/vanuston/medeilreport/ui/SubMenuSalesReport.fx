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

public class SubMenuSalesReport {

    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
    def rectSubmenu = for (i in [0..9]) Rectangle {
                    height: rectMenuH;
                    width: rectMenuW;
                    strokeWidth: 2;
                    arcHeight: 5;
                    arcWidth: 5;
                    layoutY: 0;
                    layoutX: 4.00;
                    styleClass: "LeftmenuHighlight"; };
    var user = bind CommonDeclare.user on replace {
          setPrivillages(user);
    }
    var currRep: String = "" on replace {
        CommonDeclare.currRep = currRep;
    }
    var getProductInfo: GetProductInfo =new GetProductInfo();
    var productType:String=getProductInfo.getStatus();

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
    
    def __layoutInfo_lblMenuSR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuSR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuSR5
        onMouseClicked: lblMenuSR5OnMouseClickedAtSubMenu
        text: "Label"
    }
    
    def __layoutInfo_lblMenuSR6: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuSR6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuSR6
        text: "Label"
    }
    
    def __layoutInfo_lblMenuSR7: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuSR7: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuSR7
        text: "Label"
    }
    
    def __layoutInfo_lblMenuSR8: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuSR8: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuSR8
        text: "Label"
    }
    
    public-read def imgMenuSR8: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group8: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[7]!=true
        disable: bind DisableMenu[7]
        layoutY: bind group7.layoutY+rectMenuLY[7]
        content: [ lblMenuSR8, imgMenuSR8, ]
    }
    
    def __layoutInfo_lblMenuSR9: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuSR9: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuSR9
        text: "Label"
    }
    
    public-read def imgMenuSR9: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group9: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[8]!=true
        disable: bind DisableMenu[8]
        layoutY: bind group8.layoutY+rectMenuLY[8]
        content: [ lblMenuSR9, imgMenuSR9, ]
    }
    
    def __layoutInfo_lblMenuSR10: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuSR10: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuSR10
        text: "Label"
    }
    
    public-read def imgMenuSR10: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group10: javafx.scene.Group = javafx.scene.Group {
        layoutY: bind group9.layoutY+rectMenuLY[9]
        content: [ lblMenuSR10, imgMenuSR10, ]
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
    
    public-read def rectSalesReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: true
        layoutY: 43.0
        styleClass: "leftmenuBar"
        fill: linearGradient
        stroke: Violet
        strokeWidth: 4.0
        width: 230.0
        height: 200.0
        arcWidth: 5.0
        arcHeight: 5.0
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
    
    def __layoutInfo_lblMenuSR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuSR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 196.0
        layoutInfo: __layoutInfo_lblMenuSR4
        onMouseClicked: lblMenuSR4OnMouseClicked
        text: "            Sales Return "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    def __layoutInfo_lblMenuSR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuSR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 148.0
        layoutInfo: __layoutInfo_lblMenuSR3
        onMouseClicked: lblMenuSR3OnMouseClicked
        text: "            Sales Register "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    def __layoutInfo_lblMenuSR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuSR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 100.0
        layoutInfo: __layoutInfo_lblMenuSR2
        onMouseClicked: lblMenuSR2OnMouseClicked
        text: "            Customer Sales "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    def __layoutInfo_lblMenuSR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuSR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 52.0
        layoutInfo: __layoutInfo_lblMenuSR1
        onMouseClicked: lblMenuSR1OnMouseClicked
        text: "            Customer Receipts "
        font: Leftmenu1
        textFill: DarkGray
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
    
    public-read def imgMenuSR7: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageSales
    }
    
    public-read def group7: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[6]!=true
        disable: bind DisableMenu[6]
        layoutY: bind group6.layoutY+rectMenuLY[6]
        content: [ lblMenuSR7, imgMenuSR7, ]
    }
    
    public-read def imgMenuSR6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageSales
    }
    
    public-read def group6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[5]!=true
        disable: bind DisableMenu[5]
        layoutY: bind group5.layoutY+rectMenuLY[5]
        content: [ lblMenuSR6, imgMenuSR6, ]
    }
    
    public-read def imgMenuSR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        image: imageSales
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[4]!=true
        disable: bind DisableMenu[4]
        layoutY: bind group4.layoutY+rectMenuLY[4]
        content: [ lblMenuSR5, imgMenuSR5, ]
    }
    
    public-read def imgMenuSR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 207.0
        image: imageSales
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[3]!=true
        disable: bind DisableMenu[3]
        layoutY: bind group3.layoutY+rectMenuLY[3]
        content: [ lblMenuSR4, imgMenuSR4, ]
    }
    
    public-read def imgMenuSR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 157.0
        image: imageSales
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuSR3, imgMenuSR3, ]
    }
    
    public-read def imgMenuSR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 109.0
        image: imageSales
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuSR2, imgMenuSR2, ]
    }
    
    public-read def imgMenuSR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 60.0
        image: imageSales
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuSR1, imgMenuSR1, ]
    }
    
    public-read def panelSalesReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        content: [ rectSalesReportBg, group1, group2, group3, group4, group5, group6, group7, group8, group9, group10, ]
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
        content: [ rectSubMenuBg, panelReport, panelSalesReport, ]
    }
    
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        content: [ paneReportsSubMenu, panelMsgBox, ]
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
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
                            rectSalesReportBg.visible = false;
                            rectSalesReportBg.width = 226.0;
                            rectSalesReportBg.height = 345.0;
                            lblMenuSR1.layoutY = 0.0;
                            __layoutInfo_lblMenuSR1.width = 224.0;
                            lblMenuSR1.text = "              Sales by Product ";
                            imgMenuSR1.layoutX = 16.0;
                            imgMenuSR1.layoutY = 8.5;
                            imgMenuSR1.fitWidth = 28.0;
                            imgMenuSR1.fitHeight = 28.0;
                            lblMenuSR2.layoutY = 0.0;
                            __layoutInfo_lblMenuSR2.width = 224.0;
                            lblMenuSR2.text = "              Sales Register ";
                            imgMenuSR2.layoutX = 16.0;
                            imgMenuSR2.layoutY = 8.5;
                            imgMenuSR2.fitWidth = 28.0;
                            imgMenuSR2.fitHeight = 28.0;
                            lblMenuSR3.layoutY = 0.0;
                            __layoutInfo_lblMenuSR3.width = 224.0;
                            lblMenuSR3.onMouseClicked = lblMenuSR3OnMouseClicked;
                            lblMenuSR3.text = "              Sales Return ";
                            imgMenuSR3.layoutX = 16.0;
                            imgMenuSR3.layoutY = 8.5;
                            imgMenuSR3.fitWidth = 28.0;
                            imgMenuSR3.fitHeight = 28.0;
                            lblMenuSR4.layoutY = 0.0;
                            __layoutInfo_lblMenuSR4.width = 224.0;
                            lblMenuSR4.text = "              Sales by Customers";
                            imgMenuSR4.layoutX = 16.0;
                            imgMenuSR4.layoutY = 8.5;
                            imgMenuSR4.fitWidth = 28.0;
                            imgMenuSR4.fitHeight = 28.0;
                            lblMenuSR5.visible = true;
                            lblMenuSR5.layoutY = 0.0;
                            __layoutInfo_lblMenuSR5.width = 224.0;
                            __layoutInfo_lblMenuSR5.height = 45.0;
                            lblMenuSR5.text = "              Customer Receipts ";
                            lblMenuSR5.font = Leftmenu1;
                            lblMenuSR5.textFill = DarkGray;
                            imgMenuSR5.visible = true;
                            imgMenuSR5.layoutX = 16.0;
                            imgMenuSR5.layoutY = 8.5;
                            imgMenuSR5.fitWidth = 28.0;
                            imgMenuSR5.fitHeight = 28.0;
                            lblMenuSR6.visible = true;
                            lblMenuSR6.layoutY = 0.0;
                            __layoutInfo_lblMenuSR6.width = 224.0;
                            __layoutInfo_lblMenuSR6.height = 45.0;
                            lblMenuSR6.onMouseClicked = lblMenuSR6OnMouseClickedAtSubMenu;
                            lblMenuSR6.text = "              Cancelled Bill";
                            lblMenuSR6.font = Leftmenu1;
                            lblMenuSR6.textFill = DarkGray;
                            imgMenuSR6.visible = true;
                            imgMenuSR6.layoutX = 16.0;
                            imgMenuSR6.layoutY = 8.5;
                            imgMenuSR6.fitWidth = 28.0;
                            imgMenuSR6.fitHeight = 28.0;
                            lblMenuSR7.visible = true;
                            lblMenuSR7.layoutY = 0.0;
                            __layoutInfo_lblMenuSR7.width = 224.0;
                            __layoutInfo_lblMenuSR7.height = 45.0;
                            lblMenuSR7.onMouseClicked = lblMenuSR7OnMouseClickedAtSubMenu;
                            lblMenuSR7.text = "              Dummy Bill";
                            lblMenuSR7.font = Leftmenu1;
                            lblMenuSR7.textFill = DarkGray;
                            imgMenuSR7.visible = true;
                            imgMenuSR7.layoutX = 16.0;
                            imgMenuSR7.layoutY = 8.5;
                            imgMenuSR7.fitWidth = 28.0;
                            imgMenuSR7.fitHeight = 28.0;
                            lblMenuSR8.visible = true;
                            __layoutInfo_lblMenuSR8.width = 224.0;
                            __layoutInfo_lblMenuSR8.height = 45.0;
                            lblMenuSR8.onMouseClicked = lblMenuSR8OnMouseClickedAtSubMenu;
                            lblMenuSR8.text = "              Sales By Location";
                            lblMenuSR8.font = Leftmenu1;
                            lblMenuSR8.textFill = DarkGray;
                            imgMenuSR8.visible = true;
                            imgMenuSR8.layoutX = 16.0;
                            imgMenuSR8.layoutY = 8.5;
                            imgMenuSR8.image = imageSales;
                            imgMenuSR8.fitWidth = 28.0;
                            imgMenuSR8.fitHeight = 28.0;
                            lblMenuSR9.visible = true;
                            __layoutInfo_lblMenuSR9.width = 224.0;
                            __layoutInfo_lblMenuSR9.height = 45.0;
                            lblMenuSR9.onMouseClicked = lblMenuSR9OnMouseClickedAtSubMenu;
                            lblMenuSR9.text = "              Prescription Search";
                            lblMenuSR9.font = Leftmenu1;
                            lblMenuSR9.textFill = DarkGray;
                            imgMenuSR9.visible = true;
                            imgMenuSR9.layoutX = 16.0;
                            imgMenuSR9.layoutY = 8.5;
                            imgMenuSR9.image = imageSales;
                            imgMenuSR9.fitWidth = 28.0;
                            imgMenuSR9.fitHeight = 28.0;
                            lblMenuSR10.visible = false;
                            __layoutInfo_lblMenuSR10.width = 224.0;
                            __layoutInfo_lblMenuSR10.height = 45.0;
                            lblMenuSR10.onMouseClicked = lblMenuSR10OnMouseClickedAtSubMenu;
                            lblMenuSR10.text = "           Sales Summary Report";
                            lblMenuSR10.font = Leftmenu1;
                            lblMenuSR10.textFill = DarkGray;
                            imgMenuSR10.visible = false;
                            imgMenuSR10.layoutX = 16.0;
                            imgMenuSR10.layoutY = 8.5;
                            imgMenuSR10.image = imageSales;
                            imgMenuSR10.fitWidth = 28.0;
                            imgMenuSR10.fitHeight = 28.0;
                            group10.visible = false;
                            panelSalesReport.visible = true;
                            panelSalesReport.layoutX = 4.0;
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

    function lblMenuSR10OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
          if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("SR10");
        def ReportSalesInsuranceDetails = ReportSalesInsuranceDetails {};
        ReportSalesInsuranceDetails.Startup();
        insert ReportSalesInsuranceDetails.getDesignRootNodes() into panelReportsForm.content;
         }
      }

    function lblMenuSR9OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
            editionAlert();
         }
         else {
            deleteForm(" SR9");
            def ReportPrescription = ReportPrescription {};
            ReportPrescription.Startup();
            insert ReportPrescription.getDesignRootNodes() into panelReportsForm.content;
            }
         }



    var rectMenuLY:Number[];
    var DisableMenu:Boolean[];
    var imgCancelLX=bind CommonDeclare.panelFormW+208;
    var panelMsgBoxLX= bind ((CommonDeclare.panelFormW-500)/2)+207;
    var panelMsgBoxLY= bind ((CommonDeclare.panelFormH-150)/2)-100;
    def MessageBox=MessageBox{};
    var CloseForm:Boolean;

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
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==1){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }

  
    public function LoadSubMenu(curr_panel: Panel): Void {
        panelReportsForm.disable = true;
        panelSalesReport.visible = false;
        curr_panel  .visible = true;
        }
     function panelReportsFormOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = false;
    }


    function lblMenuSR8OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm(" SR8");
        def ReportSalesRegisterAreawise = ReportSalesRegisterAreawise {};
        ReportSalesRegisterAreawise.Startup();
        insert ReportSalesRegisterAreawise.getDesignRootNodes() into panelReportsForm.content;
         }
         }


    //              Sales Report
    function lblMenuSR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("SR1");
        def ReportSalesDetail = ReportSalesDetail {};
        ReportSalesDetail.Startup();
        insert ReportSalesDetail.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuSR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
       deleteForm("SR2");
        def ReportSalesRegister = ReportSalesRegister {};
        ReportSalesRegister.Startup();
        insert ReportSalesRegister.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuSR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("SR3");
        def ReportSalesReturn = ReportSalesReturn {};
        ReportSalesReturn.Startup();
        insert ReportSalesReturn.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuSR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("SR4");
        def ReportCustomerSales = ReportCustomerSales {};
        ReportCustomerSales.Startup();
        insert ReportCustomerSales.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuSR5OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm(" SR5");
        def ReportCustomerReceipts = ReportCustomerReceipts {};
        ReportCustomerReceipts.Startup();
        insert ReportCustomerReceipts.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuSR6OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm(" SR6");
        def ReportCancelBill = ReportCancelBill {};
        ReportCancelBill.Startup();
        insert ReportCancelBill.getDesignRootNodes() into panelReportsForm.content;
        }
    }

    function lblMenuSR7OnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm(" SR7");
        def ReportDummyBill = ReportDummyBill {};
        ReportDummyBill.Startup();
        insert ReportDummyBill.getDesignRootNodes() into panelReportsForm.content;
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
            var access = versionLookup.Sales_Report();
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
        for (i in [0..9]) {
                rectMenuLY[i]=48.0;
                DisableMenu[i]=false;
            }
        }
    }

    init {
        group1.content=[ rectSubmenu[0],lblMenuSR1, imgMenuSR1, ];
        group2.content=[ rectSubmenu[1],lblMenuSR2, imgMenuSR2, ];
        group3.content=[ rectSubmenu[2],lblMenuSR3, imgMenuSR3, ];
        group4.content=[ rectSubmenu[3],lblMenuSR4, imgMenuSR4, ];
        group5.content=[ rectSubmenu[4],lblMenuSR5, imgMenuSR5, ];
        group6.content=[ rectSubmenu[5],lblMenuSR6, imgMenuSR6, ];
        group7.content=[ rectSubmenu[6],lblMenuSR7, imgMenuSR7, ];
        group8.content=[ rectSubmenu[7],lblMenuSR8, imgMenuSR8, ];
        group9.content=[ rectSubmenu[8],lblMenuSR9, imgMenuSR9, ];
        group10.content=[ rectSubmenu[9],lblMenuSR10, imgMenuSR10, ];
    }

}
