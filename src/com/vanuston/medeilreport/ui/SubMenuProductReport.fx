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


public class SubMenuProductReport {

    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
    def rectSubmenu = for (i in [0..4]) Rectangle {
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
    
    def __layoutInfo_lblMenuPR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPR5
        onMouseClicked: lblMenuPR5OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuPR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[4]!=true
        disable: bind DisableMenu[4]
        layoutY: bind group4.layoutY+rectMenuLY[4]
        content: [ lblMenuPR5, imgMenuPR5, ]
    }
    
    public-read def panelMsgBox: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: bind panelMsgBoxLX
        layoutY: bind panelMsgBoxLY
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
    
    public-read def rectProductReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
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
    
    def __layoutInfo_lblMenuPR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuPR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutY: 191.0
        layoutInfo: __layoutInfo_lblMenuPR4
        onMouseClicked: lblMenuPR4OnMouseClicked
        text: "              Schedule Report "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    def __layoutInfo_lblMenuPR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuPR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutY: 143.0
        layoutInfo: __layoutInfo_lblMenuPR3
        onMouseClicked: lblMenuPR3OnMouseClicked
        text: "            Banned Drug Report "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    def __layoutInfo_lblMenuPR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuPR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutY: 95.0
        layoutInfo: __layoutInfo_lblMenuPR2
        onMouseClicked: lblMenuPR2OnMouseClicked
        text: "            Product Offer List "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    def __layoutInfo_lblMenuPR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuPR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutY: 47.0
        layoutInfo: __layoutInfo_lblMenuPR1
        onMouseClicked: lblMenuPR1OnMouseClicked
        text: "            Product List "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def Gray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.9098039
        green: 0.87058824
        blue: 0.87058824
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
    
    public-read def imageFinancial: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportFinancial.png"
    }
    
    public-read def imageProduct: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Product.png"
    }
    
    public-read def imgMenuPR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: 20.0
        layoutY: 207.0
        image: imageProduct
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[3]!=true
        disable: bind DisableMenu[3]
        layoutY: bind group3.layoutY+rectMenuLY[3]
        content: [ lblMenuPR4, imgMenuPR4, ]
    }
    
    public-read def imgMenuPR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 157.0
        image: imageProduct
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[2]!=true
        disable: bind DisableMenu[2]
        layoutY: bind group2.layoutY+rectMenuLY[2]
        content: [ lblMenuPR3, imgMenuPR3, ]
    }
    
    public-read def imgMenuPR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 109.0
        image: imageProduct
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[1]!=true
        disable: bind DisableMenu[1]
        layoutY: bind group1.layoutY+rectMenuLY[1]
        content: [ lblMenuPR2, imgMenuPR2, ]
    }
    
    public-read def imgMenuPR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 60.0
        image: imageProduct
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableMenu[0]!=true
        disable: bind DisableMenu[0]
        layoutY: bind rectMenuLY[0]
        content: [ lblMenuPR1, imgMenuPR1, ]
    }
    
    public-read def panelProductReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 231.0
        content: [ rectProductReportBg, group1, group2, group3, group4, group5, ]
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
        content: [ rectSubMenuBg, panelReport, panelProductReport, ]
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
                            rectProductReportBg.visible = false;
                            rectProductReportBg.width = 226.0;
                            lblMenuPR1.visible = true;
                            lblMenuPR1.opacity = 1.0;
                            lblMenuPR1.layoutY = 0.0;
                            __layoutInfo_lblMenuPR1.width = 224.0;
                            lblMenuPR1.text = "              Product Sales ";
                            imgMenuPR1.visible = true;
                            imgMenuPR1.layoutX = 16.0;
                            imgMenuPR1.layoutY = 8.5;
                            imgMenuPR1.fitWidth = 28.0;
                            imgMenuPR1.fitHeight = 28.0;
                            lblMenuPR2.visible = true;
                            lblMenuPR2.layoutY = 0.0;
                            __layoutInfo_lblMenuPR2.width = 224.0;
                            lblMenuPR2.text = "              Product Offer";
                            imgMenuPR2.visible = true;
                            imgMenuPR2.layoutX = 16.0;
                            imgMenuPR2.layoutY = 8.5;
                            imgMenuPR2.fitWidth = 28.0;
                            imgMenuPR2.fitHeight = 28.0;
                            lblMenuPR3.visible = true;
                            lblMenuPR3.layoutY = 0.0;
                            __layoutInfo_lblMenuPR3.width = 224.0;
                            lblMenuPR3.text = "              Banned Drug ";
                            imgMenuPR3.visible = true;
                            imgMenuPR3.layoutX = 16.0;
                            imgMenuPR3.layoutY = 8.5;
                            imgMenuPR3.fitWidth = 28.0;
                            imgMenuPR3.fitHeight = 28.0;
                            lblMenuPR4.visible = true;
                            lblMenuPR4.layoutY = 0.0;
                            __layoutInfo_lblMenuPR4.width = 224.0;
                            lblMenuPR4.text = "              Schedule Drugs";
                            imgMenuPR4.visible = true;
                            imgMenuPR4.layoutX = 16.0;
                            imgMenuPR4.layoutY = 8.5;
                            imgMenuPR4.fitWidth = 28.0;
                            imgMenuPR4.fitHeight = 28.0;
                            lblMenuPR5.visible = true;
                            __layoutInfo_lblMenuPR5.width = 224.0;
                            __layoutInfo_lblMenuPR5.height = 45.0;
                            lblMenuPR5.text = "              Sales Margin";
                            lblMenuPR5.font = Leftmenu1;
                            lblMenuPR5.textFill = DarkGray;
                            imgMenuPR5.visible = true;
                            imgMenuPR5.layoutX = 16.0;
                            imgMenuPR5.layoutY = 8.5;
                            imgMenuPR5.image = imageProduct;
                            imgMenuPR5.fitWidth = 28.0;
                            imgMenuPR5.fitHeight = 28.0;
                            panelProductReport.visible = true;
                            panelProductReport.layoutX = 4.0;
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
       if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==3){
        panelReport.visible=false;
        imgClose.visible=false;
        CommonDeclare.currRep="";
     }
        CloseForm=false;
 }

//                 Product Reports
    function lblMenuPR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        deleteForm("PR1");
        def ReportProductSales = ReportProductSales {};
        ReportProductSales.Startup();
        insert ReportProductSales.getDesignRootNodes() into panelReportsForm.content;
    }

    function lblMenuPR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PR2");
        def ReportProductOffer = ReportProductOffer {};
        ReportProductOffer.Startup();
        insert ReportProductOffer.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuPR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PR3");
        def ReportBannedDrug = ReportBannedDrug {};
        insert ReportBannedDrug.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuPR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
       if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PR4 ");
        def ReportSchedule = ReportSchedule {};
        ReportSchedule.Startup();
        insert ReportSchedule.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuPR5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PR5 ");
        def ReportProductMargin = ReportProductMargin {};
        ReportProductMargin.Startup();
        insert ReportProductMargin.getDesignRootNodes() into panelReportsForm.content;
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
            var access = versionLookup.Product_Report();
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
        for (i in [0..<4]) {
                rectMenuLY[i]=48.0;
                DisableMenu[i]=false;
            }
        }
    }

    init {
        group1.content=[ rectSubmenu[0],lblMenuPR1, imgMenuPR1, ];
        group2.content=[ rectSubmenu[1],lblMenuPR2, imgMenuPR2, ];
        group3.content=[ rectSubmenu[2],lblMenuPR3, imgMenuPR3, ];
        group4.content=[ rectSubmenu[3],lblMenuPR4, imgMenuPR4, ];
        group5.content=[ rectSubmenu[4],lblMenuPR5, imgMenuPR5, ];
    }

}
