///////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////  MEDEIL-Reports  ////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
package com.vanuston.medeilreport.ui;

import java.lang.*;
import javafx.scene.Scene;
import javafx.scene.text.Font;
import javafx.scene.image.Image;
import javafx.scene.paint.Color;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.shape.Rectangle;
import javafx.scene.layout.LayoutInfo;
import javafx.stage.StageStyle;
import javafx.stage.*;
import javafx.scene.*;
import javafx.animation.Timeline;
import javafx.animation.Interpolator;
import javafx.geometry.HPos;
import com.vanuston.medeilreport.util.GetProductInfo;
import com.vanuston.medeilreport.util.CommonDeclare;
import java.awt.event.ActionListener;
import java.awt.PopupMenu;
import java.awt.SystemTray;
import java.awt.event.ActionEvent;
import java.awt.MenuItem;
import java.awt.Toolkit;
import java.awt.TrayIcon;
import javax.swing.UIManager;
import com.vanuston.medeilreport.util.LogReg;
import javafx.scene.control.TextBox;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.WinRegistry;
import javafx.scene.input.KeyCode;
import javafx.scene.input.MouseEvent;
import com.vanuston.medeilreport.util.GetUserInfo;
import com.vanuston.medeilreport.util.Tools;
import com.vanuston.medeilreport.util.Theme;
import com.vanuston.medeilreport.server.ServerSkeletonFactory;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;
import com.vanuston.medeilreport.util.KeyRegistry;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JMenu;
import javax.swing.KeyStroke;
import java.awt.event.KeyEvent;
import javafx.ext.swing.SwingComponent;

/*def MessageBox = MessageBox {};
def HomePage = HomePage {};
def LoginPage = Login {};

def SubMenuSalesReport = SubMenuSalesReport {};
def SubMenuPurchaseReport = SubMenuPurchaseReport {};
def SubMenuProductReport = SubMenuProductReport {};
def SubMenuStockReport = SubMenuStockReport {};
def SubMenuStockAnalysisReport = SubMenuStockAnalysisReport {};
def SubMenuMastersReport = SubMenuMastersReport {};
def SubMenuFinancialReport = SubMenuFinancialReport {};
def SubMenuCRMReport = SubMenuCRMReport {};*/
var MessageBox 	: MessageBox ;
var HomePage 	: HomePage ;
var LoginPage 	: Login ;
var SubMenuSalesReport 	: SubMenuSalesReport ;
var SubMenuPurchaseReport : SubMenuPurchaseReport ;
var SubMenuProductReport : SubMenuProductReport ;
var SubMenuStockReport : SubMenuStockReport ;
var SubMenuStockAnalysisReport : SubMenuStockAnalysisReport ;
var SubMenuMastersReport : SubMenuMastersReport ;
var SubMenuFinancialReport : SubMenuFinancialReport ;
var SubMenuCRMReport :	 SubMenuCRMReport ;
var ScreenWidth: Number = Toolkit.getDefaultToolkit().getScreenSize().width on replace {
    CommonDeclare.ScreenWidth = ScreenWidth;
}
var ScreenHeight: Number = Toolkit.getDefaultToolkit().getScreenSize().height on replace {
    CommonDeclare.ScreenHeight = ScreenHeight;
}
public var Sw = Toolkit.getDefaultToolkit().getScreenSize().width;
public var Sh = Toolkit.getDefaultToolkit().getScreenSize().height;
var ScreenX = Screen.primary.visualBounds.minX;
var ScreenY = Screen.primary.visualBounds.minY;
var minimizable: Boolean = false;
var style: String = "{__DIR__}MedilTheme/{Theme.getStyle()}.css";


public class Main {


 function createInstances() : Void{
 MessageBox 	= new	MessageBox ();
 HomePage 	= new	HomePage ();
 LoginPage 	= new	Login ();
 SubMenuSalesReport 	= new	 SubMenuSalesReport ();
 SubMenuPurchaseReport 	= new	 SubMenuPurchaseReport ();
 SubMenuProductReport 	= new	 SubMenuProductReport ();
 SubMenuStockReport 	= new	 SubMenuStockReport ();
 SubMenuStockAnalysisReport 	= new	 SubMenuStockAnalysisReport ();
 SubMenuMastersReport 	= new	 SubMenuMastersReport ();
 SubMenuFinancialReport 	= new	 SubMenuFinancialReport ();
 SubMenuCRMReport 	= new	 SubMenuCRMReport ();
 }

var getProductInfo:GetProductInfo=new GetProductInfo();
var winRegistry:WinRegistry = new WinRegistry();
var productType:String=getProductInfo.getStatus();
    var log: Logger = Logger.getLogger(Main.class, "Main");
    var getUserInfo:GetUserInfo = new GetUserInfo();
    def KeyRegistry = KeyRegistry {};
    public var LoggedUser: String = bind CommonDeclare.user on replace {
        if (LoggedUser != null) {
            try {
                panelMaster.requestFocus();
                var userType = getUserInfo.getUserType(LoggedUser);
                if (userType.equals("User") or userType.equals("Admin") or userType.equals("SuperAdmin")) {
                    getPrivillages(LoggedUser);
                }
            } catch (e) {
                log.debug("Class :Main  Unable to set privilages to main modules");
            }
        }
    }
    var priv: Integer[]=[0,0,0,0,0,0,0,0];

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def rectMenuCRM: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuCRMOpacity
        styleClass: "rectMenuBg"
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def panelHomePage: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: 228.0
    }
    
    public-read def panelForm: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        disable: bind CloseForm
        layoutX: 228.0
        layoutY: -1.0
    }
    
    public-read def panelLeftMenu: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: 1.0
        layoutY: 1.0
        styleClass: "linear-gradient"
    }
    
    public-read def rectDock: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: true
        layoutX: 230.5
        layoutY: -3.0
        styleClass: "BottomTaskBar"
        onMouseClicked: imageViewOnMouseClicked
        onMouseEntered: imageViewDockOnMouseEntered
        width: 10.0
        height: bind sidebarH+5
        arcWidth: 0.0
        arcHeight: 0.0
    }
    
    public-read def imageViewDock: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: bind imageViewDockVisible
        layoutX: 230.5
        layoutY: bind (sidebarH-23)/2
    }
    
    public-read def panelClock: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind ScreenWidth-150
        layoutY: 32.0
    }
    
    public-read def panelLoginPage: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
    }
    
    def __layoutInfo_panelReminder: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 0.0
        height: 0.0
    }
    public-read def panelReminder: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: bind PanelReminderLX
        layoutY: bind PanelReminderLY
        layoutInfo: __layoutInfo_panelReminder
    }
    
    public-read def panelMsgBox: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind (ScreenWidth-500)/2
        layoutY: bind (ScreenHeight-200)/2
    }
    
    public-read def MasterMenu: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial bold"
        size: 12.0
        oblique: false
        embolden: false
        letterSpacing: 0.0
    }
    
    def __layoutInfo_labelMenuStockAnalysis: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind MenuWidth
        height: bind MenuRectH
    }
    public-read def labelMenuStockAnalysis: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind MenulblLX
        layoutInfo: __layoutInfo_labelMenuStockAnalysis
        effect: null
        text: "       STOCK     ANALYSIS"
        font: MasterMenu
        textAlignment: javafx.scene.text.TextAlignment.CENTER
        textWrap: true
        hpos: javafx.geometry.HPos.CENTER
        vpos: javafx.geometry.VPos.BOTTOM
        textFill: javafx.scene.paint.Color.BLACK
    }
    
    public-read def Verdena_Bold_10: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Verdena Bold"
        size: 11.0
        oblique: false
    }
    
    public-read def verdena12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Verdena"
    }
    
    public-read def Arial_Bold_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 14.0
    }
    
    public-read def Arial_Bold_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 14.0
    }
    
    public-read def lblLoggedBy: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind ScreenWidth-320
        layoutY: bind ScreenHeight-18
        text: "Current User :   "
        font: Arial_Bold_14
        textFill: javafx.scene.paint.Color.WHITE
    }
    
    public-read def Arial_Bold_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
    }
    
    public-read def Arial_Bold_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
        oblique: false
        embolden: false
        autoKern: false
        ligatures: false
        position: javafx.scene.text.FontPosition.REGULAR
    }
    
    public-read def Arial_Bold_20: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 20.0
    }
    
    public-read def Arial_30: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 30.0
        oblique: false
        embolden: false
        autoKern: false
        ligatures: false
        position: javafx.scene.text.FontPosition.REGULAR
    }
    
    public-read def Arial_Bold_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 25.0
    }
    
    public-read def Arial_Bold_32: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 32.0
        oblique: false
        embolden: false
        autoKern: false
        letterSpacing: 0.03
        ligatures: false
        position: javafx.scene.text.FontPosition.REGULAR
    }
    
    public-read def Arial_Bold_30: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 30.0
    }
    
    public-read def Arial_Bold_40: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 40.0
    }
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.019607844
        green: 0.5019608
        blue: 0.7647059
    }
    
    public-read def DarkGray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.2
        blue: 0.2
    }
    
    def __layoutInfo_lblTopPharmacyName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind ScreenWidth
        height: 36.0
        hfill: false
    }
    public-read def lblTopPharmacyName: javafx.scene.control.Label = javafx.scene.control.Label {
        disable: false
        opacity: 1.0
        layoutX: 0.0
        layoutY: 0.0
        layoutInfo: __layoutInfo_lblTopPharmacyName
        effect: null
        text: bind shop
        font: Arial_Bold_30
        hpos: javafx.geometry.HPos.CENTER
        vpos: javafx.geometry.VPos.CENTER
        textFill: DarkGray
    }
    
    public-read def rectBottomTaskBar: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: true
        opacity: 1.0
        layoutX: 0.0
        layoutY: bind ScreenHeight-20
        styleClass: "BottomTaskBar"
        fill: DarkGray
        width: bind ScreenWidth
        height: 20.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def rectbgTopMenus: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: true
        layoutX: 3.0
        layoutY: 36.0
        styleClass: "linear-gradient"
        fill: null
        stroke: DarkGray
        strokeWidth: 2.0
        width: bind ScreenWidth-6
        height: 78.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def Gray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.9137255
        green: 0.9098039
        blue: 0.8862745
    }
    
    public-read def orange: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 1.0
        green: 0.4
    }
    
    public-read def labelServer: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: bind ScreenWidth-100
        layoutY: 40.0
        text: "Server"
        font: Arial_Bold_14
        textFill: orange
    }
    
    public-read def green: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.4117647
        green: 0.56078434
        blue: 0.0
    }
    
    public-read def LeftMenuGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#eaeaea") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#ebedd8") }, ]
    }
    
    public-read def formBgGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        startY: 0.6
        proportional: false
        cycleMethod: javafx.scene.paint.CycleMethod.REFLECT
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#ffffff") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#e2eef4") }, ]
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        startY: 0.0
        endX: 0.0
        endY: 1.0
        cycleMethod: javafx.scene.paint.CycleMethod.REFLECT
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#fcfcfc") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#333333") }, ]
    }
    
    public-read def sidebar: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        layoutX: 4.0
        layoutY: bind sidebarLY
        styleClass: "leftmenuBar"
        effect: null
        fill: linearGradient
        smooth: true
        stroke: green
        strokeWidth: 4.0
        x: 2.0
        width: bind sidebarW
        height: bind sidebarH
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def rectMenuFinancial: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuFinancialOpacity
        cursor: null
        managed: true
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def rectMenuMasters: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuMastersOpacity
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def rectMenuStockAnalysis: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuStockAnalysisOpacity
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def rectMenuStock: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuStockOpacity
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def rectMenuProduct: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuProductOpacity
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def rectMenuPurchase: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuPurchaseOpacity
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def rectMenuSales: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: bind rectMenuSalesOpacity
        layoutX: bind MenuRectLX
        layoutY: 0.0
        styleClass: "rectMenuBg"
        fill: linearGradient
        stroke: orange
        strokeWidth: 3.0
        width: bind MenuRectW
        height: bind MenuRectH
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def Date: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.2
        blue: 0.2
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Background.jpg"
    }
    
    public-read def imageLogo: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Medil Logo.png"
    }
    
    public-read def imageViewMedilLogo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutY: -4.0
        image: imageLogo
        fitWidth: bind imgLogoW
        fitHeight: bind imgLogoH
    }
    
    public-read def lblEdition: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 4.0
        layoutY: 5.0
        graphic: imageViewMedilLogo
        text: ""
        font: Arial_Bold_14
        textFill: green
    }
    
    public-read def imageFrmClose: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/FrmClose.png"
    }
    
    public-read def imageMsgInfo: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/MsgInfo.png"
    }
    
    public-read def linearGradientTitlebar: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        startX: 0.0
        startY: 0.0
        endX: 0.0
        endY: 1.0
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#999999") }, javafx.scene.paint.Stop { offset: 0.4, color: javafx.scene.paint.Color.web ("#999999") }, javafx.scene.paint.Stop { offset: 0.6, color: javafx.scene.paint.Color.web ("#666666") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#666666") }, ]
    }
    
    public-read def rectTitlebar: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: 0.25
        cursor: javafx.scene.Cursor.MOVE
        layoutX: 4.0
        layoutY: 3.0
        styleClass: "rectTitlebar"
        onMouseClicked: rectTitlebarOnMouseClicked
        onMouseDragged: rectTitlebarOnMouseDragged
        onMousePressed: rectTitlebarOnMousePressed
        fill: linearGradientTitlebar
        smooth: true
        width: bind ScreenWidth-4
        height: 32.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def panelTitleBar: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ rectTitlebar, lblTopPharmacyName, lblEdition, ]
    }
    
    public-read def imageSales: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportSales.png"
    }
    
    public-read def imgSales: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imageSales
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelSales: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuSalesLX
        onMouseClicked: panelSalesOnMouseClicked
        onMouseEntered: panelSalesOnMouseEntered
        onMouseExited: panelSalesOnMouseExited
        blocksMouse: true
        content: [ rectMenuSales, imgSales, ]
    }
    
    public-read def imagePurchase: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Purchase.png"
    }
    
    public-read def imgPurchase: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        cursor: null
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imagePurchase
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelPurchase: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuPurchaseLX
        onMouseClicked: panelPurchaseOnMouseClicked
        onMouseEntered: panelPurchaseOnMouseEntered
        onMouseExited: panelPurchaseOnMouseExited
        content: [ rectMenuPurchase, imgPurchase, ]
    }
    
    public-read def imageProduct: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Product.png"
    }
    
    public-read def imgProduct: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imageProduct
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelProduct: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuProductLX
        onMouseClicked: panelProductOnMouseClicked
        onMouseEntered: panelProductOnMouseEntered
        onMouseExited: panelProductOnMouseExited
        blocksMouse: true
        content: [ rectMenuProduct, imgProduct, ]
    }
    
    public-read def imageStock: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Stock.png"
    }
    
    public-read def imgStock: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imageStock
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelStock: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuStockLX
        onMouseClicked: panelStockOnMouseClicked
        onMouseEntered: panelStockOnMouseEntered
        onMouseExited: panelStockOnMouseExited
        blocksMouse: true
        content: [ rectMenuStock, imgStock, ]
    }
    
    public-read def imageStockAnalysis: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportAnalysis.png"
    }
    
    public-read def imgStockAnalysis: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imageStockAnalysis
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelStockAnalysis: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuStockAnalysisLX
        onMouseClicked: panelStockAnalysisOnMouseClicked
        onMouseEntered: panelStockAnalysisOnMouseEntered
        onMouseExited: panelStockAnalysisOnMouseExited
        blocksMouse: true
        content: [ rectMenuStockAnalysis, imgStockAnalysis, labelMenuStockAnalysis, ]
    }
    
    public-read def imageMasters: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report1.png"
    }
    
    public-read def imgMasters: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imageMasters
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelMasters: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuMastersLX
        onMouseClicked: panelMastersOnMouseClicked
        onMouseEntered: panelMastersOnMouseEntered
        onMouseExited: panelMastersOnMouseExited
        blocksMouse: true
        content: [ rectMenuMasters, imgMasters, ]
    }
    
    public-read def imageFinancial: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportFinancial.png"
    }
    
    public-read def imgFinancial: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuImgLX
        layoutY: 7.0
        effect: null
        image: imageFinancial
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelFinancial: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        cursor: javafx.scene.Cursor.HAND
        layoutX: bind MenuFinancialLX
        onMouseClicked: panelFinancialOnMouseClicked
        onMouseEntered: panelFinancialOnMouseEntered
        onMouseExited: panelFinancialOnMouseExited
        blocksMouse: true
        effect: null
        content: [ rectMenuFinancial, imgFinancial, ]
    }
    
    public-read def imageCRM: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportsCustomer.png"
    }
    
    public-read def imgCRM: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind MenuImgLX
        layoutY: 7.0
        image: imageCRM
        fitWidth: bind imgMenuW
        fitHeight: bind imgMenuH
    }
    
    public-read def panelCRM: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind MenuCRMLX
        onMouseClicked: panelCRMOnMouseClicked
        onMouseEntered: panelCRMOnMouseEntered
        onMouseExited: panelCRMOnMouseExited
        content: [ rectMenuCRM, imgCRM, ]
    }
    
    public-read def imageUpdate: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Update.png"
    }
    
    public-read def imageLogout: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Logout.png"
    }
    
    public-read def imgLogout: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        cursor: javafx.scene.Cursor.HAND
        layoutX: 40.0
        onMouseClicked: imgLogoutOnMouseClicked
        image: imageLogout
        fitWidth: 26.0
        fitHeight: 26.0
    }
    
    public-read def groupLogout: javafx.scene.Group = javafx.scene.Group {
        cursor: javafx.scene.Cursor.HAND
        content: [ imgLogout, ]
    }
    
    public-read def imageHelp: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Help.png"
    }
    
    public-read def imgHelp: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        cursor: javafx.scene.Cursor.HAND
        layoutX: 40.0
        onMouseClicked: imgHelpOnMouseClicked
        pickOnBounds: true
        image: imageHelp
        fitWidth: 26.0
        fitHeight: 26.0
    }
    
    public-read def groupHelp: javafx.scene.Group = javafx.scene.Group {
        cursor: javafx.scene.Cursor.HAND
        content: [ imgHelp, ]
    }
    
    public-read def vbox: javafx.scene.layout.VBox = javafx.scene.layout.VBox {
        layoutX: bind ScreenWidth-80
        layoutY: -8.0
        content: [ groupLogout, groupHelp, ]
        spacing: 3.0
    }
    
    public-read def panelHighlightMenu: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 0.0
        layoutY: 37.5
        content: [ panelSales, panelPurchase, panelProduct, panelStock, panelStockAnalysis, panelMasters, panelFinancial, panelCRM, vbox, ]
    }
    
    public-read def imageMinimize: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/WindowMinimize.png"
    }
    
    public-read def imageMaximize: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/WindowMaximize.png"
    }
    
    public-read def imageRestore: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/WindowRestore.png"
    }
    
    public-read def imgRestore: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        opacity: bind imgRestoreOpacity
        cursor: javafx.scene.Cursor.DEFAULT
        layoutX: bind ScreenWidth-60
        layoutY: 4.0
        onMouseClicked: imgRestoreOnMouseClicked
        onMouseEntered: imgRestoreOnMouseEntered
        onMouseExited: imgRestoreOnMouseExited
        image: imageRestore
    }
    
    def __layoutInfo_panelControlButtons: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind ScreenWidth
        height: 32.0
    }
    public-read def panelControlButtons: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        cursor: null
        layoutInfo: __layoutInfo_panelControlButtons
        content: [ imgRestore, ]
    }
    
    public-read def imageClose: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/WindowClose.png"
    }
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
        topOffset: -5.0
        topOpacity: 0.16
        bottomOpacity: 0.09
        fraction: 0.55
    }
    
    public-read def imageDock: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Dock.png"
    }
    
    public-read def imageDock1: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Dock1.png"
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Close.png"
    }
    
    public-read def imgFormClose: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        opacity: bind opacFormClose
        layoutX: bind ScreenWidth+205
        onMouseClicked: imgFormCloseOnMouseClicked
        onMouseEntered: imgCloseOnMouseEntered
        onMouseExited: imgCloseOnMouseExited
        image: image2
    }
    
    def __layoutInfo_panel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind ScreenWidth
    }
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: -230.0
        layoutY: bind panelLY
        layoutInfo: __layoutInfo_panel
        content: [ sidebar, panelHomePage, panelForm, panelLeftMenu, rectDock, imageViewDock, imgFormClose, ]
    }
    
    public-read def dropShadowEffect: javafx.scene.effect.DropShadow = javafx.scene.effect.DropShadow {
    }
    
    public-read def Arial_Italic_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Italic"
    }
    
    public-read def Arial_Bold_Italic_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold Italic"
    }
    
    public-read def Arial_Bold_Italic_7: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold Italic"
        size: 7.0
    }
    
    public-read def imageServer: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/server.png"
    }
    
    public-read def ServerImage: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind ScreenWidth-80
        layoutY: 60.0
        image: imageServer
    }
    
    public-read def panelMainpageComponents: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ rectbgTopMenus, rectBottomTaskBar, panelHighlightMenu, lblLoggedBy, panel, panelTitleBar, panelClock, labelServer, ServerImage, panelLoginPage, ]
    }
    
    public-read def panelMaster: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        disable: bind panelMasterDisable
        onKeyPressed: panelMasterOnKeyPressed
        onKeyReleased: panelMasterOnKeyReleased
        onMouseClicked: panelMasterOnMouseClicked
        focusTraversable: true
        content: [ panelMainpageComponents, panelReminder, panelControlButtons, ]
    }
    
    public-read def scene: javafx.scene.Scene = javafx.scene.Scene {
        content: getDesignRootNodes ()
        camera: null
        fill: null
        stylesheets: bind MedeilStyle
    }
    
    public-read def Main: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public-read def sidebarState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
        names: [ "Shown", "Hidden", ]
        actual: 1
        timelines: [
            javafx.animation.Timeline {
                keyFrames: [
                    javafx.animation.KeyFrame {
                        time: 0ms
                        values: [
                            sidebar.opacity => sidebar.opacity tween javafx.animation.Interpolator.DISCRETE,
                            panel.opacity => panel.opacity tween javafx.animation.Interpolator.DISCRETE,
                            panel.layoutX => panel.layoutX tween javafx.animation.Interpolator.DISCRETE,
                        ]
                        action: function() {
                            rectbgTopMenus.layoutX = 3.0;
                            rectbgTopMenus.styleClass = "ImageToolbarBg";
                            rectbgTopMenus.stroke = DarkGray;
                            rectbgTopMenus.arcWidth = 10.0;
                            rectbgTopMenus.arcHeight = 10.0;
                            rectBottomTaskBar.fill = DarkGray;
                            rectMenuSales.styleClass = "rectMenuBg";
                            panelSales.visible = true;
                            rectMenuPurchase.styleClass = "rectMenuBg";
                            rectMenuProduct.styleClass = "rectMenuBg";
                            rectMenuStock.styleClass = "rectMenuBg";
                            rectMenuStockAnalysis.styleClass = "rectMenuBg";
                            rectMenuMasters.styleClass = "rectMenuBg";
                            rectMenuFinancial.styleClass = "rectMenuBg";
                            lblLoggedBy.font = Arial_Bold_14;
                            sidebar.layoutX = 4.0;
                            panelForm.opacity = 1.0;
                            panelForm.layoutX = 228.0;
                            panelForm.styleClass = "";
                            panelLeftMenu.opacity = 1.0;
                            rectDock.cursor = javafx.scene.Cursor.HAND;
                            rectDock.fill = DarkGray;
                            imageViewDock.opacity = 1.0;
                            imageViewDock.image = imageDock;
                            imgFormClose.onMouseEntered = imgCloseOnMouseEntered;
                            imgFormClose.onMouseExited = imgCloseOnMouseExited;
                            panel.styleClass = "";
                            lblTopPharmacyName.effect = null;
                            panelMainpageComponents.visible = true;
                            panelMsgBox.styleClass = "";
                        }
                    }
                    javafx.animation.KeyFrame {
                        time: 100ms
                        values: [
                            sidebar.opacity => 1.0 tween javafx.animation.Interpolator.EASEIN,
                            panel.opacity => 1.0 tween javafx.animation.Interpolator.EASEIN,
                            panel.layoutX => 0.0 tween javafx.animation.Interpolator.EASEIN,
                        ]
                    }
                ]
            }
            javafx.animation.Timeline {
                keyFrames: [
                    javafx.animation.KeyFrame {
                        time: 0ms
                        values: [
                            sidebar.opacity => sidebar.opacity tween javafx.animation.Interpolator.DISCRETE,
                            panel.opacity => panel.opacity tween javafx.animation.Interpolator.DISCRETE,
                            panel.layoutX => panel.layoutX tween javafx.animation.Interpolator.DISCRETE,
                        ]
                        action: function() {
                            rectbgTopMenus.layoutX = 3.0;
                            rectbgTopMenus.styleClass = "linear-gradient";
                            rectbgTopMenus.stroke = DarkGray;
                            rectbgTopMenus.arcWidth = 5.0;
                            rectbgTopMenus.arcHeight = 5.0;
                            rectBottomTaskBar.fill = DarkGray;
                            rectMenuSales.styleClass = "rectMenuBg";
                            panelSales.visible = true;
                            rectMenuPurchase.styleClass = "rectMenuBg";
                            rectMenuProduct.styleClass = "rectMenuBg";
                            rectMenuStock.styleClass = "rectMenuBg";
                            rectMenuStockAnalysis.styleClass = "rectMenuBg";
                            rectMenuMasters.styleClass = "rectMenuBg";
                            rectMenuFinancial.styleClass = "rectMenuBg";
                            lblLoggedBy.font = Arial_Bold_14;
                            sidebar.layoutX = 1.0;
                            panelForm.opacity = 1.0;
                            panelForm.layoutX = 232.0;
                            panelForm.styleClass = "linear-gradient";
                            panelLeftMenu.opacity = 1.0;
                            rectDock.fill = DarkGray;
                            imageViewDock.opacity = 1.0;
                            imageViewDock.image = imageDock1;
                            imgFormClose.onMouseEntered = imgFormCloseOnMouseEntered;
                            imgFormClose.onMouseExited = imgFormCloseOnMouseExited;
                            panel.styleClass = "linear-gradient";
                            lblTopPharmacyName.effect = null;
                            panelMainpageComponents.visible = true;
                            panelMsgBox.styleClass = "linear-gradient";
                        }
                    }
                    javafx.animation.KeyFrame {
                        time: 100ms
                        values: [
                            sidebar.opacity => 0.5 tween javafx.animation.Interpolator.EASEOUT,
                            panel.opacity => 1.0 tween javafx.animation.Interpolator.EASEOUT,
                            panel.layoutX => -230.0 tween javafx.animation.Interpolator.EASEOUT,
                        ]
                    }
                ]
            }
        ]
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ panelMaster, panelMsgBox, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }
    // </editor-fold>//GEN-END:main

    var MedeilStyle: String[] = bind style;
    var stageVisible: Boolean=true on replace{
        if(stageVisible){
            minimizable = false;
        }else{
            minimizable = true;
        }
        }

    var windowMinimize = bind minimizable;
    var sidebarW = 225.0;
    def MenulblLX = 0;
    def MenulblLY=55.0;
    def MenuRectLX = 0;
    def MenuRectH =75.0;
    def MenuRectW=80.0;
    var MenuImgLX = 21.0;
    var MenuWidth = 80.0;
    var flag_alt=false;
    var MenuSalesLX = bind (1.508295626 * ScreenWidth / 100);
    var MenuPurchaseLX = bind (13.07189542 * ScreenWidth / 100);
    var MenuProductLX = bind (24.63549522 * ScreenWidth / 100);
    var MenuStockLX = bind (36.19909502 * ScreenWidth / 100);
    var MenuStockAnalysisLX = bind (47.76269482 * ScreenWidth / 100);
    var MenuMastersLX = bind (59.32629462 * ScreenWidth / 100);
    var MenuFinancialLX = bind (70.88989442 * ScreenWidth / 100);
    var MenuCRMLX = bind (82.45349422 * ScreenWidth / 100);
    var MenulblHpos = HPos.CENTER;
    var currModule = 0 on replace {
        CommonDeclare.currModule = currModule;
    }
    var panelReminderOpacity: Number = 0.0;
    var PanelReminderLX = bind ScreenWidth - 355.0;
    var PanelReminderLY = bind ScreenHeight - 170.0;
    var CloseForm = false;
    var opacClose = 0.25;
    var opacRes = 0.25;
    var opacMin = 0.25;
    var imageViewDockVisible: Boolean = true;
    var panelMasterDisable: Boolean = bind ExitMedeil;
    var ExitMedeil: Boolean = false on replace {
        if (ExitMedeil == true) {
            Msgbox("Confirm", "Are you sure you want to exit Medeil Reports? ");
            ExitMedeil == false;
        }
    }
   var msgOutput: Integer = bind MessageBox.msgboxOutput on replace {
        if (msgOutput == 1 and ExitMedeil == true) {
            logout(1);
        }
        if (msgOutput == 1 and imgFormClose.visible == true and CloseForm == true) {
            delete  panelForm.content;
            imgFormClose.visible = false;
        }
        ExitMedeil = false;
        CloseForm = false;
    }
    public var userType: String = bind CommonDeclare.userType;
    var ses = bind LoginPage.ses_id;
    var shop: String;
    var temp = bind CommonDeclare.currRep on replace {
        if (not temp.equals("")) {
            HideSubmenu();
        } }

    function HideSubmenu(): Void {
        sidebarState.actual = -1;
        sidebarState.actual = sidebarState.findIndex("Hidden");
        CommonDeclare.DockWidth = 8;
    }

    var stageDragInitialX: Number;
    var stageDragInitialY: Number;
//Alignments
    var panelW = bind ScreenWidth;
    var panelH = bind ScreenHeight - 137;
    var panelLY = 117;
    var sidebarH = bind panelH;
    var sidebarLY = 0;
    var sidebarStatus = 0;
//Variable Declarations
    var imgCloseOpacity: Number = bind opacClose;
    var imgRestoreOpacity: Number = bind opacRes;
    var imgMinimizeOpacity: Number = bind opacMin;

    var rectMenuSalesOpacity: Number = 0.0;
    var rectMenuPurchaseOpacity: Number = 0.0;
    var rectMenuProductOpacity: Number = 0.0;
    var rectMenuStockOpacity: Number = 0.0;
    var rectMenuStockAnalysisOpacity: Number = 0.0;
    var rectMenuMastersOpacity: Number = 0.0;
    var rectMenuFinancialOpacity: Number = 0.0;
    var rectMenuCRMOpacity: Number = 0.0;

    var flagmaximize = 0;
    var imgLogoW = bind CommonDeclare.imgLogoW - 20;
    var imgLogoH = bind CommonDeclare.imgLogoH - 7;
    var imgMenuW = 38.0;
    var imgMenuH = 38.0;
    var MainPageFrm = bind CommonDeclare.MainPageForm on replace {
        if (CommonDeclare.MainPageForm.equals("Calculator")) {
            panelMaster.requestFocus();
        } else if (CommonDeclare.MainPageForm.trim().equals("")) {
            imgFormClose.visible = false;
        } }
//End of Variable Declarations
    function Msgbox(type: String, Message: String): Void {
        panelMsgBox.visible = true;
        MessageBox.MsgBox("Medeil", type, Message);
        delete  panelMsgBox.content;
        insert MessageBox.getDesignRootNodes() into panelMsgBox.content;
    }

    function panelMasterOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        CommonDeclare.currKyEvent = event;
        if (CommonDeclare.MainPageForm.equals("Calculator")) {
            panelMaster.requestFocus();
        }
        if (event.controlDown or event.altDown or event.shiftDown) {
            KeyRegistry.actionKey = event.code;
            panelMaster.requestFocus();
        }
        if (event.altDown) {
                shortcut(event.code);
                flag_alt=true;
        }

    }
        function rectTitlebarOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
            if(event.clickCount==2){
            imgRestoreOnMouseClicked(event);
         }
         }
    function panelMasterOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        panelMaster.requestFocus();
    }
function panelMasterOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
    flag_alt=false;
}
    function shortcut(KyCode: KeyCode): Void {
        if (KyCode == KeyCode.VK_1 or KyCode == KeyCode.VK_NUMPAD1) {
            ShowSales();
        } else if (KyCode == KeyCode.VK_2 or KyCode == KeyCode.VK_NUMPAD2) {
            ShowPurchase();
        } else if (KyCode == KeyCode.VK_3 or KyCode == KeyCode.VK_NUMPAD3) {
            ShowProduct();
        } else if (KyCode == KeyCode.VK_4 or KyCode == KeyCode.VK_NUMPAD4) {
            ShowStock();
        } else if (KyCode == KeyCode.VK_5 or KyCode == KeyCode.VK_NUMPAD5) {
            ShowStockAnalysis();
        }else if (KyCode == KeyCode.VK_6 or KyCode == KeyCode.VK_NUMPAD6) {
            ShowMasters();
        } else if (KyCode == KeyCode.VK_7 or KyCode == KeyCode.VK_NUMPAD7) {
            ShowFinancial();
        } else if (KyCode == KeyCode.VK_8 or KyCode == KeyCode.VK_NUMPAD8) {
            ShowCRM();
        }
    }

    public function logout(val: Integer): Void {
       try {
	   isFocusedUser = false ;
            TopMenuOpacity0(0);
            HideForm();
            delete  panelLoginPage.content;
            LoginPage.callLogin();
            insert LoginPage.getDesignRootNodes() into panelLoginPage.content;
            panelLoginPage.visible = true;
            LoginPage.panel.visible = true;
            LoginPage.status = "";
            CommonDeclare.user="";
            var s = ses;
            var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
            if (not s.equals("") or s.trim().length() > 0) {
                log.debug("Class:Main Medthod : Logout()  Logout Called..");
                var query = "CALL pro_userLogout('{s}');";
                commonController.queryExecution(query);
            }
            if (val == 1) {
                Tools.Reset_Reports_Launch();
                javafx.lang.FX.exit();
            }
        } catch (e: Exception) {
            log.debug("Class:Main  Medthod : Logout() Logout Error  Exceptiion : {e}");
            Tools.Reset_Reports_Launch();
            javafx.lang.FX.exit();
        }
    }

    function rectTitlebarOnMousePressed(e: javafx.scene.input.MouseEvent): Void {
        stageDragInitialX = e.screenX - ScreenX;
        stageDragInitialY = e.screenY - ScreenY;
    }

    function rectTitlebarOnMouseDragged(e: javafx.scene.input.MouseEvent): Void {
        ScreenX = e.screenX - stageDragInitialX;
        ScreenY = e.screenY - stageDragInitialY;
    }

    function imgRestoreOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {

        fadePanelReminder.rate = 1.0;
        fadePanelReminder.play();

        if (flagmaximize == 0) {
            ScreenWidth = 1024;
            ScreenHeight = Screen.primary.visualBounds.height;
            ScreenX = (Sw - ScreenWidth) / 2;
            ScreenY = Screen.primary.visualBounds.minY;
            flagmaximize = 1;
            imgRestore.image = Image { url: "{__DIR__}images/WindowMaximize.png" };
        } else {
            ScreenWidth = Sw;
            ScreenHeight = Sh;
            ScreenX = Screen.primary.visualBounds.minX;
            ScreenY = Screen.primary.visualBounds.minY;
            flagmaximize = 0;
            imgRestore.image = Image { url: "{__DIR__}images/WindowRestore.png" };
        }
    }

    function imgLogoutOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        logout(0);
    }
    function imgHelpOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        Tools.Help();
    }

    //Minimize  Button
    function imgMinimizeOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        stageVisible= false;
    }//
//Close Button

    function imgCloseOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
     //-   stageVisible = false;
      ExitMedeil = true;
    }
    //Minimize,Close button Fade

    function imgMinimizeOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        fadeMinimize.rate = -1.0;
        fadeMinimize.play();
    }

    function imgMinimizeOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeMinimize.rate = 1.0;
        fadeMinimize.play();
    }

    function imgRestoreOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        fadeRestore.rate = -1.0;
        fadeRestore.play();
    }

    function imgRestoreOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeRestore.rate = 1.0;
        fadeRestore.play();
    }

    function imgCloseOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        fadeClose.rate = -1.0;
        fadeClose.play();
    }

    function imgCloseOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeClose.rate = 1.0;
        fadeClose.play();
    }

    var fadeClose = Timeline {
                keyFrames: [
                    at (0s) {opacClose => 0.25 tween Interpolator.LINEAR},
                    at (0.1s) {opacClose => 1.0 tween Interpolator.LINEAR},
                ]
            };
    var fadeRestore = Timeline {
                keyFrames: [
                    at (0s) {opacRes => 0.25 tween Interpolator.LINEAR},
                    at (0.1s) {opacRes => 1.0 tween Interpolator.LINEAR},
                ]
            };
    var fadeMinimize = Timeline {
                keyFrames: [
                    at (0s) {opacMin => 0.25 tween Interpolator.LINEAR},
                    at (0.1s) {opacMin => 1.0 tween Interpolator.LINEAR},
                ]
            };

    function imgFormCloseOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        CloseForm = true;
        Msgbox("Confirm", "Are you sure you want to close current form?");
    }

////Menu--CRM Reports
    function panelCRMOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 8) {
            fadeopacCRM.rate = -1.0;
            fadeopacCRM.play();
        } }

    function panelCRMOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacCRM.rate = 1.0;
        fadeopacCRM.play();
    }

    function panelCRMOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowCRM();
    }
    //End Menu--CRM Reports

    ////Menu--Financial Reports
    function panelFinancialOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 7) {
            fadeopacFinancial.rate = -1.0;
            fadeopacFinancial.play();
        // StateShow();
        } }

    function panelFinancialOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacFinancial.rate = 1.0;
        fadeopacFinancial.play();
    }

    function panelFinancialOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowFinancial();
    }
//End Menu--Financial Reports

////Menu--Masters Reports
    function panelMastersOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 6) {
            fadeopacMasters.rate = -1.0;
            fadeopacMasters.play();
        } }

    function panelMastersOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacMasters.rate = 1.0;
        fadeopacMasters.play();
    }

    function panelMastersOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowMasters();
    }
    //End Menu--Masters Reports


    ////Menu--Stock Analysis Report
    function panelStockAnalysisOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 5) {
            fadeopacStockAnalysis.rate = -1.0;
            fadeopacStockAnalysis.play();
        } }
    function panelStockAnalysisOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacStockAnalysis.rate = 1.0;
        fadeopacStockAnalysis.play();
    }
    function panelStockAnalysisOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowStockAnalysis();
    }
    //End Menu--Stock Analysis Report

////Menu--Menu Stock Reports
    function panelStockOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 4) {
            fadeopacStock.rate = -1.0;
            fadeopacStock.play();
        } }
    function panelStockOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacStock.rate = 1.0;
        fadeopacStock.play();
    }
    function panelStockOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowStock();
    }
//End Menu--Menu Stock Reports

    ////Menu--Product Report
    function panelProductOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacProduct.rate = 1.0;
        fadeopacProduct.play();
    }

    function panelProductOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 3) {
            fadeopacProduct.rate = -1.0;
            fadeopacProduct.play();
        } }

    function panelProductOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowProduct();
    }
//End Menu--Product Report
    ////Menu--Purchase Report
    function panelPurchaseOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowPurchase();
    }
    function panelPurchaseOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 2) {
            fadeopacPurchase.rate = -1.0;
            fadeopacPurchase.play();
        }
    }
    function panelPurchaseOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacPurchase.rate = 1.0;
        fadeopacPurchase.play();
    }
//End Menu--Purchase Report

    //Menu--Sales Report
    function panelSalesOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        ShowSales();
    }
    function panelSalesOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        if (currModule != 1) {
            fadeopacSales.rate = -1.0;
            fadeopacSales.play();
        } }
    function panelSalesOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeopacSales.rate = 1.0;
        fadeopacSales.play();
    }
//End Menu--Sales Report

    //Show and Hide Left Dock
    function imageViewOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if (sidebarState.actual <= 0) {
            sidebarState.actual = sidebarState.findIndex("Hidden");
            CommonDeclare.DockWidth = 8;
        } else {
            if (sidebarStatus == 0) {
                if (currModule != 0) {
                    sidebarState.actual = sidebarState.findIndex("Shown");
                    CommonDeclare.DockWidth = 237;
                } } }
    }

    function imageViewDockOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        if (sidebarStatus == 0) {
            if (currModule != 0) {
                sidebarState.actual = sidebarState.findIndex("Shown");
                CommonDeclare.DockWidth = 237;
            } }
    }

    //********** Functions **********//
    function HideForm(): Void {
        delete  panelForm.content;
        delete  panelLeftMenu.content;
        HideSubmenu();
    }

    function deleteSubmenu(): Void {
        CommonDeclare.DockWidth = 237;
        CommonDeclare.currRep ="";
        delete  panelLeftMenu.content;
        delete  panelForm.content;
        sidebarState.actual = sidebarState.findIndex("Shown");
    }

    function ShowSales(): Void {
        if(priv[0]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(1);
        insert SubMenuSalesReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuSalesOpacity = 0.5;
    }}

    function ShowPurchase() {
        if(priv[1]==0){
            Msgbox("Information", "Security: Access restricted by your administrator ");
        } else {
            TopMenuOpacity0(2);
            insert SubMenuPurchaseReport.getDesignRootNodes() into panelLeftMenu.content;
            rectMenuPurchaseOpacity = 0.5;
        }
    }

    function ShowProduct() {
    if(productType.equals("Express")){ 
           Msgbox("Information", "Please Upgrade to Standard Edition to view Product Report ");
    }else if(priv[2]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(3);
        insert SubMenuProductReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuProductOpacity = 0.5;
    }
	//this is only for meena pharmacy 
	/*if(priv[2]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");
	} else {
        TopMenuOpacity0(3);
        insert SubMenuProductReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuProductOpacity = 0.5;
    }*/
    }
    function ShowStock() {
        if(priv[3]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(4);
        insert SubMenuStockReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuStockOpacity = 0.5;
    }
    }
        function ShowStockAnalysis() {
         if(productType.equals("Express")){
           Msgbox("Information", "Please Upgrade to Standard Edition to view Stock Analysis Report ");
    }else if(priv[4]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(5);
        insert SubMenuStockAnalysisReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuStockAnalysisOpacity = 0.5;
    }
    }
    function ShowMasters() {
        if(priv[5]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(6);
        insert SubMenuMastersReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuMastersOpacity = 0.5;
    }
    }

    function ShowFinancial() {
        if(priv[6]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(7);
        insert SubMenuFinancialReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuFinancialOpacity = 0.5;
    }
    }

    function ShowCRM() {
        if(priv[7]==0){
        Msgbox("Information", "Security: Access restricted by your administrator ");}
        else{
        TopMenuOpacity0(8);
        insert SubMenuCRMReport.getDesignRootNodes() into panelLeftMenu.content;
        rectMenuCRMOpacity = 0.5;
    }
    }

//All Top Menu opacity zero

    function TopMenuOpacity0(i: Integer): Void {
        imgFormClose.visible = false;
        sidebarStatus = 0;
        deleteSubmenu();
        currModule = i;
        rectMenuSalesOpacity=rectMenuPurchaseOpacity=rectMenuProductOpacity=rectMenuStockOpacity=0.0;
        rectMenuStockAnalysisOpacity=rectMenuMastersOpacity=rectMenuFinancialOpacity=rectMenuCRMOpacity=0.0;
    }

    function imgFormCloseOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        fadeFormClose.rate = -1.0;
        fadeFormClose.play();
    }

    function imgFormCloseOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        fadeFormClose.rate = 1.0;
        fadeFormClose.play();
    }

    var opacFormClose = 0.5;
    var fadeFormClose = Timeline {
                keyFrames: [
                    at (0s) {opacFormClose => 0.5 tween Interpolator.LINEAR},
                    at (0.1s) {opacFormClose => 1.0 tween Interpolator.LINEAR},
                ]
            };
//Top Main Menu opacity
    var fadeopacSales = Timeline {
                keyFrames: [
                    at (0s) {rectMenuSalesOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuSalesOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuSalesOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacPurchase = Timeline {
                keyFrames: [
                    at (0s) {rectMenuPurchaseOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuPurchaseOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuPurchaseOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacProduct = Timeline {
                keyFrames: [
                    at (0s) {rectMenuProductOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuProductOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuProductOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacStock = Timeline {
                keyFrames: [
                    at (0s) {rectMenuStockOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuStockOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuStockOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacStockAnalysis = Timeline {
                keyFrames: [
                    at (0s) {rectMenuStockAnalysisOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuStockAnalysisOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuStockAnalysisOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacMasters = Timeline {
                keyFrames: [
                    at (0s) {rectMenuMastersOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuMastersOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuMastersOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacFinancial = Timeline {
                keyFrames: [
                    at (0s) {rectMenuFinancialOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuFinancialOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuFinancialOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
    var fadeopacCRM = Timeline {
                keyFrames: [
                    at (0s) {rectMenuCRMOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.15s) {rectMenuCRMOpacity => 0.25 tween Interpolator.LINEAR},
                    at (0.3s) {rectMenuCRMOpacity => 0.5 tween Interpolator.LINEAR},
                ]
            };
        var fadePanelReminder = Timeline {
                keyFrames: [
                    at (0s) {panelReminderOpacity => 0.0 tween Interpolator.LINEAR},
                    at (0.2s) {panelReminderOpacity => 1.0 tween Interpolator.LINEAR},
                ]
            };
    function getPrivillages(uname: String): Void {
        try {
            if (getUserInfo.checkName(uname) == false) {
                var access: String = getUserInfo.getPrivileges("reports", uname);
                var pr: String[] = access.split(",");
                for (i in [0..<pr.size()]) {
                    priv[i] = Integer.parseInt(pr[i]);
                }
            }
        } catch (e) {
            log.debug("Class:Main  Method : getPrivillages()  Unable to get privilages Exception:{e.getMessage()}");
        }
    }
    function LaunchError(msg: String): Void {
        MessageBox.MsgBox("Login", "Error", msg);
        delete  panelMaster.content;
        delete  panelMsgBox.content;
        insert MessageBox.getDesignRootNodes() into panelMsgBox.content;        
        log.debug("Class:Main  Method : LaunchError  Unable to Launch MEDEIL !");
    }
	var isFocusedUser : Boolean = false ;
	function MenuBarConfig() : JMenuBar {
            var jMenuBar = new JMenuBar();
            var handler = ActionListener {
            public override function actionPerformed(e: ActionEvent) {
                try {                    
                    if( LoginPage.panel.visible and not LoginPage.txtUser.focused and not isFocusedUser){
			isFocusedUser = true ;
                        LoginPage.txtUser.requestFocus();
                    } else {
                        ;
                    }
                } catch(ex:Exception){
                    log.debug("Main Actionlisttener MenuInit:{ex.getMessage()}");
                    ex.printStackTrace();
                }
            }
        };        		
        // Just for login user focus		
        var menu = new JMenu("LOGIN");
        jMenuBar.add(menu);
        var menuItem = new JMenuItem("BACKUP");
        menuItem.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_DOWN,0));
        menuItem.addActionListener(handler);
        menu.add(menuItem);
	return jMenuBar;
    }
    //********** Functions **********//
    init {
        createInstances();
        var tt = new LogReg().temp();
        var Activated ;
        var Configurated ;
        var LicenseCount;
        var Validity ;
        var RDays ;
        var RDays1 ;
        var ExpiryDate;
        var ExpiryDate1;
        var Version;
        if (tt.equals("Error")) {
            LaunchError("Sorry! Medeil application doesn't connect with database. Please get a support from www.medeil.com . ");
        } else {
            var temp = 0;
            try {
                Activated = getProductInfo.CheckActivate();
                Configurated = getProductInfo.configurated();
                LicenseCount = getProductInfo.getLicenceCount();
                Validity = getProductInfo.getValidity();
                RDays = LogReg.getRemainingDays();
                RDays1=getProductInfo.getRemainingDays();
                var InstalledDate=getProductInfo.getInstallDate();
                ExpiryDate= winRegistry.getExpiryDate();
                ExpiryDate1=getProductInfo.getExpiryDate();
                Version=getProductInfo.getStatus();
                var msg = "Class:Main Activation Status :[Activate={Activated}, Configurated={Configurated}, LicenseCount={LicenseCount}, Validity Days={Validity}, Remaining Days={RDays}={RDays1}, Installed Date={InstalledDate}, Expiry Date={ExpiryDate}={ExpiryDate1}]";
                log.debug(msg);
                Activated=true;
                if(not Version.equals("Free") and  not Version.equals("Trial")){
                    if (Activated and Configurated) {
                        if(RDays!=RDays1 and Activated){
                            LaunchError("Error: Medeil has been crashed.Please re-install Medeil or contact  www.medeil.com ");
                        }
    //                    else
    //                    if(not ExpiryDate.equals(ExpiryDate1) and Activated){
    //                        LaunchError("Error: Medeil has been crashed.Please re-install Medeil or contact  www.medeil.com ");
    //                    }
                     } else {
                         LaunchError("Error: Please activate and configure your product .Otherwise contact  www.medeil.com ");
                     }
                 } else if(Version.equals("Trial") and Activated==false) {
                    LaunchError("Error: MEDEIL trial license has expired.Purchase MEDEIL License. Please contact us www.medeil.com");
                 }
            } catch (e: Exception) {
                log.debug(e);
                LaunchError("Class:Main Unable to launch Medeil. Please contact us www.medeil.com");
                temp = 1;
            }
        var fxMenuBar: SwingComponent = SwingComponent.wrap(MenuBarConfig()) ;
        fxMenuBar.layoutX = 0;
        fxMenuBar.layoutY = 0;
        fxMenuBar.styleClass = "menu";
        fxMenuBar.font = Arial_Bold_12;
        fxMenuBar.visible = false;
            if (temp == 0) {
                try {
                    UIManager.setLookAndFeel("medil.utilities.plaf.MintLookAndFeel");
                } catch (e) {
                    log.debug("Class:Main Exception at medeil main StartUp(): {e.getMessage()}");
                }
                shop = getUserInfo.getShopName();
                lblEdition.text="{Version} Edition";
                LoginPage.lblEdition.text=HomePage.lblEdition.text=lblEdition.text;
                try {
                    //GetCompanyInfo.get();
                } catch (e) {
                    log.debug("Class:Main  Exception at medeil main StartUp() unable to get Company Information: {e.getMessage()}");
                }

                def imgMinimize = ImageView {
                            opacity: bind imgMinimizeOpacity
                            cursor: javafx.scene.Cursor.DEFAULT
                            layoutX: bind ScreenWidth - 90
                            layoutY: 4.0
                            onMouseClicked: imgMinimizeOnMouseClicked
                            onMouseEntered: imgMinimizeOnMouseEntered
                            onMouseExited: imgMinimizeOnMouseExited
                            image: imageMinimize
                        }
                def imgClose = ImageView {
                            opacity: bind imgCloseOpacity
                            cursor: javafx.scene.Cursor.DEFAULT
                            layoutX: bind ScreenWidth - 30
                            layoutY: 4.0
                            onMouseClicked: imgCloseOnMouseClicked
                            onMouseEntered: imgCloseOnMouseEntered
                            onMouseExited: imgCloseOnMouseExited
                            image: imageClose
                        }
                panelControlButtons.content = [imgMinimize, imgRestore, imgClose,];
                def imgCorner = ImageView {
                            opacity: 1.0
                            cursor: javafx.scene.Cursor.SE_RESIZE
                            layoutX: bind ScreenWidth - 22
                            layoutY: bind ScreenHeight - 22
                            image: Image { url: "{__DIR__}images/CornerDotted.png" }
                        }
                var lblUserName = Label {
                            width: 200.0
                            height: 23.0
                            layoutX: bind ScreenWidth - 210
                            layoutY: bind ScreenHeight - 20
                            text: bind LoggedUser
                            font: Arial_Bold_18
                            textFill: javafx.scene.paint.Color.WHITE
                        }

               def lblTM: javafx.scene.control.Label = javafx.scene.control.Label {
                            layoutY: -4.0
                            text: "TM"
                            font: Arial_Bold_Italic_7
                            textFill: javafx.scene.paint.Color.WHITE
                            }
               def lblVanuston: javafx.scene.control.Label = javafx.scene.control.Label {
                            graphic: lblTM
                            text: "Vanuston"
                            font: Arial_Bold_Italic_12
                            graphicHPos: javafx.geometry.HPos.RIGHT
                            textFill: javafx.scene.paint.Color.WHITE
                  }
               def lblCompanyName: javafx.scene.control.Label = javafx.scene.control.Label {
                            layoutX: 10.0
                            layoutY: bind ScreenHeight - 18
                            graphic: lblVanuston
                            text: "Powered by"
                            font: Arial_Italic_12
                            graphicHPos: javafx.geometry.HPos.RIGHT
                            textFill: javafx.scene.paint.Color.WHITE
                }

                var dx;
                var dy;
                def rectBackgroundMain: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
                            visible: true
                            opacity: 1.0
                            cursor: null
                            layoutX: 2.0
                            layoutY: 1.0
                            styleClass: "linear-gradient"
                            stroke: DarkGray
                            strokeWidth: 4.0
                            width: bind ScreenWidth - 4
                            height: bind ScreenHeight - 4
                            arcWidth: 5.0
                            arcHeight: 5.0

                            onMouseMoved: function(e: javafx.scene.input.MouseEvent): Void {
                                var dxx = ScreenWidth - e.x;
                                var dyy = ScreenHeight - e.y;
                                if (dxx < 20 and dyy < 20) {
                                    rectBackgroundMain.cursor = Cursor.SE_RESIZE;
                                } else if (dxx < 10 and dyy > 10) {
                                    rectBackgroundMain.cursor = Cursor.H_RESIZE;
                                } else if (dxx > 10 and dyy < 10) {
                                    rectBackgroundMain.cursor = Cursor.V_RESIZE;
                                } else {
                                    rectBackgroundMain.cursor = Cursor.DEFAULT;
                                }
                            }
                            onMousePressed: function(e: javafx.scene.input.MouseEvent): Void {
                                dx = ScreenWidth - e.x;
                                dy = ScreenHeight - e.y;
                            }
                            onMouseDragged: function(e: javafx.scene.input.MouseEvent): Void {
                                if (dx < 20 and dy < 20) {
                                    ScreenWidth = e.x + dx;
                                    ScreenHeight = e.y + dy;
                                } else if (dx < 10 and dy > 10) {
                                    ScreenWidth = e.x + dx;
                                } else if (dx > 10 and dy < 10) {
                                    ScreenHeight = e.y + dy;
                                }
                                if (ScreenWidth <= 1024) { ScreenWidth = 1024 }
                                if (ScreenHeight <= 734) { ScreenHeight = 734 }
                            }
                        }
                 def rectF = for (i in [0..7]) Rectangle {
                    opacity: 0.5;
                    layoutX: 80.0;
                    layoutY: 55.0;
                    styleClass: "rectMenuBg"
                    strokeWidth: 3.0;
                    width: 20.0;
                    height: 20.0;
                    arcWidth: 5.0;
                    arcHeight: 5.0;
                    visible: bind flag_alt;
                };
                 def labelFtext: String[] = ["1", "2", "3", "4", "5", "6", "7","8"];
                 var labelF = for (i in [0..7]) Label {
                        layoutY: 55.0
                        layoutX: 85.0
                        width: 20.0
                        height: 20.0
                        text: bind labelFtext[i]
                        textFill: DarkGray
                        font: Arial_Bold_18
                        hpos: javafx.geometry.HPos.CENTER
                        vpos: javafx.geometry.VPos.CENTER
                        visible: bind flag_alt;
                    }
                def lblMainMenutext: String[] = ["SALES", "PURCHASE", "PRODUCT", "STOCK", "STOCK ANALYSIS", "MASTERS", "FINANCE","CRM",];
                def lblMainMenu = for (i in [0..7]) Label {
                                cursor: javafx.scene.Cursor.HAND
                                layoutX: bind MenulblLX
                                layoutY: bind MenulblLY
                                width: bind MenuWidth
                                text: bind lblMainMenutext[i]
                                font: MasterMenu
                                hpos: bind MenulblHpos
                            }
                def tooltipContent: String[] = [" LogOut ", "Help "];
                def tooltip = for (i in [0..1]) javafx.scene.control.Tooltip {
                                text: bind tooltipContent[i]
                                font: Arial_Bold_12
                            }
                def textbox = for (i in [0..1]) TextBox {
                                opacity: 0.0
                                layoutX: 0.0
                                layoutY: 0.0
                                width: 15.0
                                height: 15.0
                                focusTraversable: false
                                tooltip: tooltip[i]
                            }
                groupLogout.content = [textbox[0],imgLogout,];
                groupHelp.content = [textbox[1],imgHelp,];
//                panelSales panelPurchase panelProduct panelStock panelStockAnalysis panelMasters panelFinancial panelCRM
        panelSales.content = [rectMenuSales, imgSales, lblMainMenu[0], rectF[0], labelF[0]];
        panelPurchase.content = [rectMenuPurchase, imgPurchase, lblMainMenu[1], rectF[1], labelF[1]];
        panelProduct.content = [rectMenuProduct, imgProduct, lblMainMenu[2], rectF[2], labelF[2]];
        panelStock.content = [rectMenuStock, imgStock, lblMainMenu[3], rectF[3], labelF[3]];
        panelStockAnalysis.content = [rectMenuStockAnalysis, imgStockAnalysis, labelMenuStockAnalysis, rectF[4], labelF[4]];
        panelMasters.content = [rectMenuMasters, imgMasters, lblMainMenu[5], rectF[5], labelF[5]];
        panelFinancial.content = [rectMenuFinancial, imgFinancial, lblMainMenu[6], rectF[6], labelF[6]];
        panelCRM.content = [rectMenuCRM, imgCRM, lblMainMenu[7], rectF[7], labelF[7]];
        panelMainpageComponents.content = [rectBackgroundMain, rectbgTopMenus, rectBottomTaskBar, lblCompanyName, lblUserName, imgCorner,lblLoggedBy, panel, panelTitleBar, panelClock, panelHighlightMenu,labelServer,ServerImage, fxMenuBar,panelLoginPage,];

                TopMenuOpacity0(0);
                HideSubmenu();

                delete  panelHomePage.content;
                insert HomePage.getDesignRootNodes() into panelHomePage.content;

                delete  panelLoginPage.content;                
                insert LoginPage.getDesignRootNodes() into panelLoginPage.content;				
                LoginPage.Startup();
				
            }
        }
    }
    public function StartUp(): Void {
        println("Welcome to MEDEIL !");
        try {
            UIManager.setLookAndFeel("medil.utilities.plaf.MintLookAndFeel");
         } catch (e: Exception) {
         log.debug("Class:Main Exception at medeil main StartUp():{e.getMessage()}");
        }

        var tray: SystemTray = SystemTray.getSystemTray();
        var trayIcon: TrayIcon;
        var popup: PopupMenu = new PopupMenu();
        var mItem1: MenuItem = new MenuItem("Open Medeil-Reports");
        var mItem2: MenuItem = new MenuItem("Quit");
        var img = Toolkit.getDefaultToolkit().getImage(getClass().getResource("images/LogoMedil.png"));
        popup.add(mItem1);
        popup.add(mItem2);
        trayIcon = new TrayIcon(img, "Medeil-Reports", popup);
        tray.add(trayIcon);
        trayIcon.setImageAutoSize(true);

        mItem1.addActionListener(ActionListener {
            public override function actionPerformed(e: ActionEvent) {
                // Place Maximize Coding Here.
                stageVisible = true;
            }
        });

        mItem2.addActionListener(ActionListener {
            public override function actionPerformed(e: ActionEvent) {
                //Place Process Exit Coding Here.
                stageVisible = true;
                ExitMedeil = true;
            }
        });

        trayIcon.addActionListener(ActionListener {
            public override function actionPerformed(e: ActionEvent) {
                // Place Maximize Coding Here.
                stageVisible = true;
            }
        });
    }

}

                                ////////////////////////  Medeil Initial Running Stage    ///////////////////////
function run (): Void {
    ServerSkeletonFactory.run(RegistryFactory.serverPort);
    System.gc();
    var design = Main {};
    design.StartUp();
javafx.stage.Stage {
    title:"Medeil";
    style: StageStyle.TRANSPARENT
    x: bind ScreenX;
    y: bind ScreenY;
    visible: bind design.stageVisible;
    width: bind ScreenWidth ;
    height: bind ScreenHeight;
    iconified: bind minimizable with inverse;
    icons: [Image {url: "{__DIR__}images/LogoMedil.png"}];
    scene: design.getDesignScene ();

public override function close() : Void{
        design.logout(1);
    }
}
}
