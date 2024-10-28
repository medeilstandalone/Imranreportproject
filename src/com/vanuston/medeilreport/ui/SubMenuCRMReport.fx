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
import com.vanuston.medeilreport.util.GetProductInfo;
import com.vanuston.medeilreport.util.VersionLookup;


public class SubMenuCRMReport {

    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
    def rectSubmenu = for (i in [0..2]) Rectangle {
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
    
    public-read def rectCRMReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: 50.0
    }
    
    def __layoutInfo_lblMenuCR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 224.0
    }
    public-read def lblMenuCR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuCR1
        onMouseClicked: lblMenuCR1OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuCR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuCR1, imgMenuCR1, ]
    }
    
    def __layoutInfo_lblMenuCR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuCR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuCR2
        onMouseClicked: lblMenuCR2OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuCR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuCR2, imgMenuCR2, ]
    }
    
    def __layoutInfo_lblMenuCR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuCR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuCR3
        onMouseClicked: lblMenuCR3OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuCR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuCR3, imgMenuCR3, ]
    }
    
    public-read def panelCRMReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 231.0
        content: [ rectCRMReportBg, group1, group2, group3, ]
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
        content: [ rectSubMenuBg, panelReport, panelCRMReport, ]
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
                            rectCRMReportBg.visible = false;
                            rectCRMReportBg.layoutY = 43.0;
                            rectCRMReportBg.fill = linearGradient;
                            rectCRMReportBg.stroke = Violet;
                            rectCRMReportBg.strokeWidth = 4.0;
                            rectCRMReportBg.width = 226.0;
                            rectCRMReportBg.height = 150.0;
                            rectCRMReportBg.arcWidth = 5.0;
                            rectCRMReportBg.arcHeight = 5.0;
                            lblMenuCR1.visible = true;
                            lblMenuCR1.layoutX = 0.0;
                            lblMenuCR1.layoutY = 0.0;
                            __layoutInfo_lblMenuCR1.height = 45.0;
                            lblMenuCR1.text = "             Customer List ";
                            lblMenuCR1.font = Leftmenu1;
                            lblMenuCR1.textFill = DarkGray;
                            imgMenuCR1.visible = true;
                            imgMenuCR1.layoutX = 16.0;
                            imgMenuCR1.layoutY = 8.5;
                            imgMenuCR1.image = imageCRM;
                            imgMenuCR1.fitWidth = 28.0;
                            imgMenuCR1.fitHeight = 28.0;
                            lblMenuCR2.visible = true;
                            lblMenuCR2.layoutX = 0.0;
                            lblMenuCR2.layoutY = 0.0;
                            __layoutInfo_lblMenuCR2.width = 224.0;
                            __layoutInfo_lblMenuCR2.height = 45.0;
                            lblMenuCR2.text = "             Payment Outstanding ";
                            lblMenuCR2.font = Leftmenu1;
                            lblMenuCR2.textFill = DarkGray;
                            imgMenuCR2.visible = true;
                            imgMenuCR2.layoutX = 16.0;
                            imgMenuCR2.layoutY = 8.5;
                            imgMenuCR2.image = imageCRM;
                            imgMenuCR2.fitWidth = 28.0;
                            imgMenuCR2.fitHeight = 28.0;
                            lblMenuCR3.visible = true;
                            lblMenuCR3.layoutX = 0.0;
                            lblMenuCR3.layoutY = 0.0;
                            __layoutInfo_lblMenuCR3.width = 224.0;
                            __layoutInfo_lblMenuCR3.height = 45.0;
                            lblMenuCR3.text = "             Complaint List ";
                            lblMenuCR3.font = Leftmenu1;
                            lblMenuCR3.textFill = DarkGray;
                            imgMenuCR3.visible = true;
                            imgMenuCR3.layoutX = 16.0;
                            imgMenuCR3.layoutY = 8.5;
                            imgMenuCR3.image = imageCRM;
                            imgMenuCR3.fitWidth = 28.0;
                            imgMenuCR3.fitHeight = 28.0;
                            panelCRMReport.visible = true;
                            panelCRMReport.layoutX = 4.0;
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
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==8){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }
    public function editionAlert(): Void {
            MessageBox.MsgBox("Medeil","Information",CommonDeclare.edition_msg);
            delete panelMsgBox.content;
            insert MessageBox.getDesignRootNodes() into panelMsgBox.content;
        }

    public function LoadSubMenu(curr_panel: Panel): Void {
        panelReportsForm.disable = true;
        panelCRMReport.visible = false;   ;
        curr_panel  .visible = true;
        }

    function panelReportsFormOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = false;
    }
//  CRM Reports

    function lblMenuCR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        deleteForm("CR1");
        def ReportCustomerList = ReportCustomerList {};
        insert ReportCustomerList.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuCR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("CR2");
        def ReportCustomerOS = ReportCustomerOutstanding {};
        insert ReportCustomerOS.getDesignRootNodes() into panelReportsForm.content;
        }
    }

    function lblMenuCR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("CR3");
        def ReportComplaintList = ReportComplaintList {};
        ReportComplaintList.Startup();
        insert ReportComplaintList.getDesignRootNodes() into panelReportsForm.content;
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
            var access = versionLookup.CRM_Report();
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
        for (i in [0..<2]) {
                rectMenuLY[i]=48.0;
                DisableMenu[i]=false;
            }
        }
    }

    init {
        group1.content=[ rectSubmenu[0],lblMenuCR1, imgMenuCR1, ];
        group2.content=[ rectSubmenu[1],lblMenuCR2, imgMenuCR2, ];
        group3.content=[ rectSubmenu[2],lblMenuCR3, imgMenuCR3, ];
    }

}
