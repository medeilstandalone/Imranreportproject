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


public class SubMenuMastersReport {

    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
        def rectSubmenu = for (i in [0..11]) Rectangle {
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
    
    public-read def rectMastersReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: 50.0
    }
    
    def __layoutInfo_lblMenuMR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR1
        onMouseClicked: lblMenuMR1OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuMR1, imgMenuMR1, ]
    }
    
    def __layoutInfo_lblMenuMR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR2
        onMouseClicked: lblMenuMR2OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuMR2, imgMenuMR2, ]
    }
    
    def __layoutInfo_lblMenuMR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR3
        onMouseClicked: lblMenuMR3OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuMR3, imgMenuMR3, ]
    }
    
    def __layoutInfo_lblMenuMR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR4
        onMouseClicked: lblMenuMR4OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[3]!=true
        disable: bind DisableMenu[3]
        layoutY: bind group3.layoutY+rectMenuLY[3]
        content: [ lblMenuMR4, imgMenuMR4, ]
    }
    
    def __layoutInfo_lblMenuMR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR5
        onMouseClicked: lblMenuMR5OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[4]!=true
        disable: bind DisableMenu[4]
        layoutY: bind group4.layoutY+rectMenuLY[4]
        content: [ lblMenuMR5, imgMenuMR5, ]
    }
    
    def __layoutInfo_lblMenuMR6: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR6
        onMouseClicked: lblMenuMR6OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[5]!=true
        disable: bind DisableMenu[5]
        layoutY: bind group5.layoutY+rectMenuLY[5]
        content: [ lblMenuMR6, imgMenuMR6, ]
    }
    
    def __layoutInfo_lblMenuMR7: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR7: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR7
        onMouseClicked: lblMenuMR7OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR7: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group7: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[6]!=true
        disable: bind DisableMenu[6]
        layoutY: bind group6.layoutY+rectMenuLY[6]
        content: [ lblMenuMR7, imgMenuMR7, ]
    }
    
    def __layoutInfo_lblMenuMR8: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR8: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR8
        onMouseClicked: lblMenuMR8OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR8: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group8: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[7]!=true
        disable: bind DisableMenu[7]
        layoutY: bind group7.layoutY+rectMenuLY[7]
        content: [ lblMenuMR8, imgMenuMR8, ]
    }
    
    def __layoutInfo_lblMenuMR9: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR9: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR9
        onMouseClicked: lblMenuMR9OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR9: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group9: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[8]!=true
        disable: bind DisableMenu[8]
        layoutY: bind group8.layoutY+rectMenuLY[8]
        content: [ lblMenuMR9, imgMenuMR9, ]
    }
    
    def __layoutInfo_lblMenuMR10: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR10: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR10
        onMouseClicked: lblMenuMR10OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR10: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group10: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[9]!=true
        disable: bind DisableMenu[9]
        layoutY: bind group9.layoutY+rectMenuLY[9]
        content: [ lblMenuMR10, imgMenuMR10, ]
    }
    
    def __layoutInfo_lblMenuMR11: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR11: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR11
        onMouseClicked: lblMenuMR11OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuMR11: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group11: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[10]!=true
        disable: bind DisableMenu[10]
        layoutY: bind group10.layoutY+rectMenuLY[10]
        content: [ lblMenuMR11, imgMenuMR11, ]
    }
    
    def __layoutInfo_lblMenuMR12: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuMR12: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuMR12
        text: "Label"
    }
    
    public-read def imgMenuMR12: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group12: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[11]!=true
        disable: bind DisableMenu[11]
        layoutY: bind group11.layoutY+rectMenuLY[11]
        content: [ lblMenuMR12, imgMenuMR12, ]
    }
    
    public-read def panelMastersReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        content: [ rectMastersReportBg, group1, group2, group3, group4, group5, group6, group7, group8, group9, group10, group11, group12, ]
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
        content: [ rectSubMenuBg, panelReport, panelMastersReport, ]
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
                            rectMastersReportBg.visible = false;
                            rectMastersReportBg.layoutY = 43.0;
                            rectMastersReportBg.fill = linearGradient;
                            rectMastersReportBg.stroke = Violet;
                            rectMastersReportBg.strokeWidth = 4.0;
                            rectMastersReportBg.width = 226.0;
                            rectMastersReportBg.height = 535.0;
                            rectMastersReportBg.arcWidth = 5.0;
                            rectMastersReportBg.arcHeight = 5.0;
                            lblMenuMR1.visible = true;
                            lblMenuMR1.layoutY = 0.0;
                            __layoutInfo_lblMenuMR1.width = 224.0;
                            __layoutInfo_lblMenuMR1.height = 45.0;
                            lblMenuMR1.text = "            Distributor by Mfr.";
                            lblMenuMR1.font = Leftmenu1;
                            lblMenuMR1.textFill = DarkGray;
                            imgMenuMR1.visible = true;
                            imgMenuMR1.layoutX = 16.0;
                            imgMenuMR1.layoutY = 8.5;
                            imgMenuMR1.image = imageReport;
                            imgMenuMR1.fitWidth = 28.0;
                            imgMenuMR1.fitHeight = 28.0;
                            lblMenuMR2.visible = true;
                            lblMenuMR2.layoutY = 0.0;
                            __layoutInfo_lblMenuMR2.width = 224.0;
                            __layoutInfo_lblMenuMR2.height = 45.0;
                            lblMenuMR2.text = "            Distributor List ";
                            lblMenuMR2.font = Leftmenu1;
                            lblMenuMR2.textFill = DarkGray;
                            imgMenuMR2.visible = true;
                            imgMenuMR2.disable = false;
                            imgMenuMR2.layoutX = 16.0;
                            imgMenuMR2.layoutY = 8.5;
                            imgMenuMR2.image = imageReport;
                            imgMenuMR2.fitWidth = 28.0;
                            imgMenuMR2.fitHeight = 28.0;
                            lblMenuMR3.visible = true;
                            lblMenuMR3.layoutY = 0.0;
                            __layoutInfo_lblMenuMR3.width = 224.0;
                            __layoutInfo_lblMenuMR3.height = 45.0;
                            lblMenuMR3.text = "            PI by Distributors";
                            lblMenuMR3.font = Leftmenu1;
                            lblMenuMR3.textFill = DarkGray;
                            imgMenuMR3.visible = true;
                            imgMenuMR3.layoutX = 16.0;
                            imgMenuMR3.layoutY = 8.5;
                            imgMenuMR3.image = imageReport;
                            imgMenuMR3.fitWidth = 28.0;
                            imgMenuMR3.fitHeight = 28.0;
                            lblMenuMR4.visible = true;
                            lblMenuMR4.opacity = 1.0;
                            lblMenuMR4.layoutY = 0.0;
                            __layoutInfo_lblMenuMR4.width = 224.0;
                            __layoutInfo_lblMenuMR4.height = 45.0;
                            lblMenuMR4.text = "            Payment by Distributor";
                            lblMenuMR4.font = Leftmenu1;
                            lblMenuMR4.textFill = DarkGray;
                            imgMenuMR4.visible = true;
                            imgMenuMR4.layoutX = 16.0;
                            imgMenuMR4.layoutY = 8.5;
                            imgMenuMR4.image = imageReport;
                            imgMenuMR4.fitWidth = 28.0;
                            imgMenuMR4.fitHeight = 28.0;
                            group4.layoutX = 0.0;
                            lblMenuMR5.visible = true;
                            lblMenuMR5.layoutY = 0.0;
                            __layoutInfo_lblMenuMR5.width = 224.0;
                            __layoutInfo_lblMenuMR5.height = 45.0;
                            lblMenuMR5.text = "            Payment Outstanding";
                            lblMenuMR5.font = Leftmenu1;
                            lblMenuMR5.textFill = DarkGray;
                            imgMenuMR5.visible = true;
                            imgMenuMR5.layoutX = 16.0;
                            imgMenuMR5.layoutY = 8.5;
                            imgMenuMR5.image = imageReport;
                            imgMenuMR5.fitWidth = 28.0;
                            imgMenuMR5.fitHeight = 28.0;
                            lblMenuMR6.visible = true;
                            lblMenuMR6.layoutY = 0.0;
                            __layoutInfo_lblMenuMR6.width = 224.0;
                            __layoutInfo_lblMenuMR6.height = 45.0;
                            lblMenuMR6.text = "            Doctor Charges";
                            lblMenuMR6.font = Leftmenu1;
                            lblMenuMR6.textFill = DarkGray;
                            imgMenuMR6.visible = true;
                            imgMenuMR6.layoutX = 16.0;
                            imgMenuMR6.layoutY = 8.5;
                            imgMenuMR6.image = imageReport;
                            imgMenuMR6.fitWidth = 28.0;
                            imgMenuMR6.fitHeight = 28.0;
                            lblMenuMR7.visible = true;
                            lblMenuMR7.layoutY = 0.0;
                            __layoutInfo_lblMenuMR7.width = 224.0;
                            __layoutInfo_lblMenuMR7.height = 45.0;
                            lblMenuMR7.text = "            Doctor List ";
                            lblMenuMR7.font = Leftmenu1;
                            lblMenuMR7.textFill = DarkGray;
                            imgMenuMR7.visible = true;
                            imgMenuMR7.layoutX = 16.0;
                            imgMenuMR7.layoutY = 8.5;
                            imgMenuMR7.image = imageReport;
                            imgMenuMR7.fitWidth = 28.0;
                            imgMenuMR7.fitHeight = 28.0;
                            lblMenuMR8.visible = true;
                            lblMenuMR8.layoutY = 0.0;
                            __layoutInfo_lblMenuMR8.width = 224.0;
                            __layoutInfo_lblMenuMR8.height = 45.0;
                            lblMenuMR8.text = "            Employee List ";
                            lblMenuMR8.font = Leftmenu1;
                            lblMenuMR8.textFill = DarkGray;
                            imgMenuMR8.visible = true;
                            imgMenuMR8.layoutX = 16.0;
                            imgMenuMR8.layoutY = 8.5;
                            imgMenuMR8.image = imageReport;
                            imgMenuMR8.fitWidth = 28.0;
                            imgMenuMR8.fitHeight = 28.0;
                            lblMenuMR9.visible = true;
                            lblMenuMR9.layoutY = 0.0;
                            __layoutInfo_lblMenuMR9.width = 224.0;
                            __layoutInfo_lblMenuMR9.height = 45.0;
                            lblMenuMR9.text = "            Employee Salary ";
                            lblMenuMR9.font = Leftmenu1;
                            lblMenuMR9.textFill = DarkGray;
                            imgMenuMR9.visible = true;
                            imgMenuMR9.layoutX = 16.0;
                            imgMenuMR9.layoutY = 8.5;
                            imgMenuMR9.image = imageReport;
                            imgMenuMR9.fitWidth = 28.0;
                            imgMenuMR9.fitHeight = 28.0;
                            lblMenuMR10.visible = true;
                            lblMenuMR10.layoutY = 0.0;
                            __layoutInfo_lblMenuMR10.width = 224.0;
                            __layoutInfo_lblMenuMR10.height = 45.0;
                            lblMenuMR10.text = "            Hospital List ";
                            lblMenuMR10.font = Leftmenu1;
                            lblMenuMR10.textFill = DarkGray;
                            imgMenuMR10.visible = true;
                            imgMenuMR10.layoutX = 16.0;
                            imgMenuMR10.layoutY = 8.5;
                            imgMenuMR10.image = imageReport;
                            imgMenuMR10.fitWidth = 28.0;
                            imgMenuMR10.fitHeight = 28.0;
                            lblMenuMR11.visible = true;
                            lblMenuMR11.layoutY = 0.0;
                            __layoutInfo_lblMenuMR11.width = 224.0;
                            __layoutInfo_lblMenuMR11.height = 45.0;
                            lblMenuMR11.text = "            User\'s Login";
                            lblMenuMR11.font = Leftmenu1;
                            lblMenuMR11.textFill = DarkGray;
                            imgMenuMR11.visible = true;
                            imgMenuMR11.layoutX = 16.0;
                            imgMenuMR11.layoutY = 8.5;
                            imgMenuMR11.image = imageReport;
                            imgMenuMR11.fitWidth = 28.0;
                            imgMenuMR11.fitHeight = 28.0;
                            lblMenuMR12.visible = true;
                            __layoutInfo_lblMenuMR12.width = 224.0;
                            __layoutInfo_lblMenuMR12.height = 45.0;
                            lblMenuMR12.onMouseClicked = labelOnMouseClickedAtSubMenu;
                            lblMenuMR12.text = "            Emp Performance";
                            lblMenuMR12.font = Leftmenu1;
                            lblMenuMR12.textFill = DarkGray;
                            imgMenuMR12.visible = true;
                            imgMenuMR12.layoutX = 16.0;
                            imgMenuMR12.layoutY = 8.5;
                            imgMenuMR12.image = imageReport;
                            imgMenuMR12.fitWidth = 28.0;
                            imgMenuMR12.fitHeight = 28.0;
                            panelMastersReport.visible = true;
                            panelMastersReport.layoutX = 4.0;
                            panelMastersReport.layoutY = 0.0;
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
    var getProductInfo: GetProductInfo = new GetProductInfo();
    var productType:String=getProductInfo.getStatus();
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
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==6){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }

  function labelOnMouseClickedAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
          if(productType.equals("Free")){
         editionAlert();
         }
         else {
         deleteForm("MR12");
        def ReportEmployeePerformance = ReportEmployeePerformance {};
        insert ReportEmployeePerformance.getDesignRootNodes() into panelReportsForm.content;
        ReportEmployeePerformance.Startup();
         }
         }
//                    Masters Report
    function lblMenuMR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR1");
        def ReportDistCompList = ReportDistCompanyList {};
        insert ReportDistCompList.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        deleteForm("MR2");
        def ReportDistributorList = ReportDistributorList {};
        insert ReportDistributorList.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuMR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR3");
        def ReportDistributorPurchase = ReportDistributorPurchase {};
        ReportDistributorPurchase.Startup();
        insert ReportDistributorPurchase.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR4");
        def ReportDistributorPayments = ReportDistributorPayments {};
        ReportDistributorPayments.Startup();
        insert ReportDistributorPayments.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR5");
        def ReportDistributorOutstanding = ReportDistributorOutstanding {};
        insert ReportDistributorOutstanding.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR6OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR6");
        def ReportDoctorCommission = ReportDoctorCommission {};
        ReportDoctorCommission.Startup();
        insert ReportDoctorCommission.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR7OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR7");
        def ReportDoctorList = ReportDoctorList {};
        insert ReportDoctorList.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR8OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR8");
        def ReportEmployeeList = ReportEmployeeList {};
        insert ReportEmployeeList.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR9OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR9");
        def ReportEmployeeSalary = ReportEmployeeSalary {};
        ReportEmployeeSalary.Startup();
        insert ReportEmployeeSalary.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR10OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("MR10");
        def ReportHospitalList = ReportHospitalList {};
        insert ReportHospitalList.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuMR11OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
       deleteForm("MR11");
        def ReportUserLog = ReportUserLog {};
        ReportUserLog.Startup();
        insert ReportUserLog.getDesignRootNodes() into panelReportsForm.content;
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
            var access = versionLookup.Masters_Report();
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
        for (i in [0..<11]) {
                rectMenuLY[i]=48.0;
                DisableMenu[i]=false;
            }
        }
    }

    init {
        group1.content=[ rectSubmenu[0],lblMenuMR1, imgMenuMR1, ];
        group2.content=[ rectSubmenu[1],lblMenuMR2, imgMenuMR2, ];
        group3.content=[ rectSubmenu[2],lblMenuMR3, imgMenuMR3, ];
        group4.content=[ rectSubmenu[3],lblMenuMR4, imgMenuMR4, ];
        group5.content=[ rectSubmenu[4],lblMenuMR5, imgMenuMR5, ];
        group6.content=[ rectSubmenu[5],lblMenuMR6, imgMenuMR6, ];
        group7.content=[ rectSubmenu[6],lblMenuMR7, imgMenuMR7, ];
        group8.content=[ rectSubmenu[7],lblMenuMR8, imgMenuMR8, ];
        group9.content=[ rectSubmenu[8],lblMenuMR9, imgMenuMR9, ];
        group10.content=[ rectSubmenu[9],lblMenuMR10, imgMenuMR10, ];
        group11.content=[ rectSubmenu[10],lblMenuMR11, imgMenuMR11, ];
        group12.content=[ rectSubmenu[11],lblMenuMR12, imgMenuMR12, ];
    }

}
