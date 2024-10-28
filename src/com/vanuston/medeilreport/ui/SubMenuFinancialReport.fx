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

public class SubMenuFinancialReport {

var getProductInfo: GetProductInfo = new GetProductInfo();
var versionLookup:VersionLookup = new VersionLookup();
var productType:String=getProductInfo.getStatus();
    var panelW = bind CommonDeclare.panelFormW;
    var panelH = bind CommonDeclare.panelFormH;
    var rectMenuW: Number = 219.5;
    var rectMenuH: Number = 45.0;
    var SubmenuRectArc: Number = 10.0;
    var MenuCursor = javafx.scene.Cursor.DEFAULT;
    def rectSubmenu = for (i in [0..21]) Rectangle {
                    height: rectMenuH;
                    width: rectMenuW;
                    strokeWidth: 2;
                    arcHeight: 5;
                    arcWidth: 5;
                    layoutY: 0.0;
                    layoutX: 4.0;
                    styleClass: "LeftmenuHighlight"; };

    var user = bind CommonDeclare.user on replace {
        setPrivillages(user);
    }
    var currRep: String = "" on replace {
        CommonDeclare.currRep = currRep;
    }

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
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
    
    public-read def rectMenu1: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 0.0
        layoutY: 36.0
        width: bind rectMenuW
        height: bind rectMenuH
        arcWidth: bind SubmenuRectArc
        arcHeight: bind SubmenuRectArc
    }
    
    public-read def imgMenu1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: 15.0
        layoutY: 60.0
    }
    
    public-read def rectMenu2: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 18.0
        layoutY: 99.0
        styleClass: "LeftmenuHighlight"
        width: bind rectMenuW
        height: bind rectMenuH
        arcWidth: bind SubmenuRectArc
        arcHeight: bind SubmenuRectArc
    }
    
    def __layoutInfo_lblMenu2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenu2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        cursor: bind MenuCursor
        layoutX: 56.0
        layoutY: 103.0
        layoutInfo: __layoutInfo_lblMenu2
        text: "Label"
    }
    
    public-read def rectMenu3: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 11.0
        layoutY: 164.0
        styleClass: "LeftmenuHighlight"
        width: bind rectMenuW
        height: bind rectMenuH
        arcWidth: bind SubmenuRectArc
        arcHeight: bind SubmenuRectArc
    }
    
    public-read def imgMenu3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: 15.0
        layoutY: 157.0
    }
    
    def __layoutInfo_lblMenu3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenu3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        cursor: bind MenuCursor
        layoutX: 63.0
        layoutY: 157.0
        layoutInfo: __layoutInfo_lblMenu3
        text: "Label"
    }
    
    public-read def group3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableReports[2]!=true
        disable: bind DisableReports[2]
        layoutY: bind group2.layoutY+rectMenuY[1];
        onMouseEntered: group3OnMouseEntered
        content: [ rectMenu3, imgMenu3, lblMenu3, ]
    }
    
    public-read def rectMenu4: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 17.0
        layoutY: 237.0
        width: bind rectMenuW
        height: bind rectMenuH
        arcWidth: bind SubmenuRectArc
        arcHeight: bind SubmenuRectArc
    }
    
    def __layoutInfo_lblMenu4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenu4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        cursor: bind MenuCursor
        layoutX: 56.0
        layoutY: 201.0
        layoutInfo: __layoutInfo_lblMenu4
        text: "Label"
    }
    
    public-read def rectMenu5: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 28.0
        layoutY: 308.0
        width: bind rectMenuW
        height: bind rectMenuH
        arcWidth: bind SubmenuRectArc
        arcHeight: bind SubmenuRectArc
    }
    
    public-read def imgMenu5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: 15.0
        layoutY: 252.0
    }
    
    def __layoutInfo_lblMenu5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenu5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        cursor: bind MenuCursor
        layoutX: 56.0
        layoutY: 252.0
        layoutInfo: __layoutInfo_lblMenu5
        text: "Label"
    }
    
    public-read def group5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableReports[4]!=true
        disable: bind DisableReports[4]
        layoutY: bind group4.layoutY+rectMenuY[3];
        onMouseEntered: group5OnMouseEntered
        content: [ rectMenu5, imgMenu5, lblMenu5, ]
    }
    
    public-read def rectMenu6: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        width: bind rectMenuW
        height: bind rectMenuH
        arcWidth: bind SubmenuRectArc
        arcHeight: bind SubmenuRectArc
    }
    
    def __layoutInfo_lblMenu6: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenu6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenu6
        text: "Label"
    }
    
    public-read def imgMenu6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def group6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableReports[5]!=true
        disable: bind DisableReports[5]
        layoutY: bind group5.layoutY+rectMenuY[4];
        content: [ rectMenu6, lblMenu6, imgMenu6, ]
    }
    
    public-read def imgMenuCash1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 60.0
    }
    
    public-read def imgMenuCash2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 109.0
    }
    
    public-read def imgMenuCash3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 157.0
    }
    
    public-read def imgMenuCash4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 207.0
    }
    
    public-read def rectLRBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: bind groupLedger2.layoutY+5.0
    }
    
    public-read def imgMenuLR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def imgMenuLR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def imgMenuNR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 60.0
    }
    
    public-read def imgMenuNR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 20.0
        layoutY: 109.0
    }
    
    public-read def rectPayRecReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: bind groupPayRec4.layoutY+5.0
    }
    
    public-read def imgMenuPayRecR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    def __layoutInfo_lblMenuPayRecR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPayRecR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPayRecR2
        onMouseClicked: lblMenuPayRecR2OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuPayRecR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupPayRec2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisablePayRecReports[1]!=true
        disable: bind DisablePayRecReports[1]
        layoutY: bind rectMenuPayRecY[1]+groupPayRec1.layoutY
        content: [ lblMenuPayRecR2, imgMenuPayRecR2, ]
    }
    
    public-read def imgMenuPayRecR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def imgMenuPayRecR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def rectStatementReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        styleClass: "leftmenuBar"
        width: 100.0
        height: bind groupStmt4.layoutY+5.0
    }
    
    public-read def imgMenuStmtR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    def __layoutInfo_lblMenuStmtR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStmtR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStmtR2
        onMouseClicked: lblMenuStmtR2OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStmtR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupStmt2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableStmtReports[1]!=true
        disable: bind DisableStmtReports[1]
        layoutY: bind rectMenuStmtY[1]+groupStmt1.layoutY
        content: [ lblMenuStmtR2, imgMenuStmtR2, ]
    }
    
    def __layoutInfo_lblMenuStmtR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStmtR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStmtR3
        onMouseClicked: lblMenuStmtR3OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStmtR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupStmt3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableStmtReports[2]!=true
        disable: bind DisableStmtReports[2]
        layoutY: bind rectMenuStmtY[2]+groupStmt2.layoutY
        content: [ lblMenuStmtR3, imgMenuStmtR3, ]
    }
    
    def __layoutInfo_lblMenuStmtR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStmtR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStmtR4
        onMouseClicked: lblMenuStmtR4OnMouseClicked
        text: "Label"
    }
    
    public-read def imgMenuStmtR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupStmt4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableStmtReports[3]!=true
        disable: bind DisableStmtReports[3]
        layoutY: bind rectMenuStmtY[3]+groupStmt3.layoutY
        content: [ lblMenuStmtR4, imgMenuStmtR4, ]
    }
    
    public-read def rectbankTxnBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        width: 100.0
        height: bind groupBankTxn6.layoutY+5.0
    }
    
    def __layoutInfo_lblMenuBTxnR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuBTxnR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuBTxnR1
        text: "Label"
    }
    
    public-read def imgMenuBTxnR1: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupBankTxn1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableBTxnReports[0]!=true
        disable: bind DisableBTxnReports[0]
        layoutY: bind rectMenuBTxnY[0]
        content: [ lblMenuBTxnR1, imgMenuBTxnR1, ]
    }
    
    def __layoutInfo_lblMenuBTxnR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuBTxnR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuBTxnR2
        text: "Label"
    }
    
    public-read def imgMenuBTxnR2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupBankTxn2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableBTxnReports[1]!=true
        disable: bind DisableBTxnReports[1]
        layoutY: bind rectMenuBTxnY[1]+groupBankTxn1.layoutY
        content: [ lblMenuBTxnR2, imgMenuBTxnR2, ]
    }
    
    def __layoutInfo_lblMenuBTxnR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuBTxnR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuBTxnR3
        text: "Label"
    }
    
    public-read def imgMenuBTxnR3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupBankTxn3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableBTxnReports[2]!=true
        disable: bind DisableBTxnReports[2]
        layoutY: bind rectMenuBTxnY[2]+groupBankTxn2.layoutY
        content: [ lblMenuBTxnR3, imgMenuBTxnR3, ]
    }
    
    def __layoutInfo_lblMenuBTxnR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuBTxnR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuBTxnR4
        text: "Label"
    }
    
    public-read def imgMenuBTxnR4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupBankTxn4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableBTxnReports[3]!=true
        disable: bind DisableBTxnReports[3]
        layoutY: bind rectMenuBTxnY[3]+groupBankTxn3.layoutY
        content: [ lblMenuBTxnR4, imgMenuBTxnR4, ]
    }
    
    def __layoutInfo_lblMenuBTxnR5: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuBTxnR5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuBTxnR5
        text: "Label"
    }
    
    public-read def imgMenuBTxnR5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupBankTxn5: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableBTxnReports[4]!=true
        disable: bind DisableBTxnReports[4]
        layoutY: bind rectMenuBTxnY[4]+groupBankTxn4.layoutY
        content: [ lblMenuBTxnR5, imgMenuBTxnR5, ]
    }
    
    def __layoutInfo_lblMenuBTxnR6: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuBTxnR6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuBTxnR6
        text: "Label"
    }
    
    public-read def imgMenuBTxnR6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
    }
    
    public-read def groupBankTxn6: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableBTxnReports[5]!=true
        disable: bind DisableBTxnReports[5]
        layoutY: bind rectMenuBTxnY[5]+groupBankTxn5.layoutY
        content: [ lblMenuBTxnR6, imgMenuBTxnR6, ]
    }
    
    public-read def panelBankTxnReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutY: bind group6.layoutY-47
        content: [ rectbankTxnBg, groupBankTxn1, groupBankTxn2, groupBankTxn3, groupBankTxn4, groupBankTxn5, groupBankTxn6, ]
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
    
    def __layoutInfo_lblMenu1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenu1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        cursor: bind MenuCursor
        layoutX: 56.0
        layoutY: 60.0
        layoutInfo: __layoutInfo_lblMenu1
        text: "Label"
        textFill: DarkGray
    }
    
    public-read def group1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableReports[0]!=true
        disable: bind DisableReports[0]
        layoutY: bind rectMenuY[0]
        onMouseEntered: group1OnMouseEntered
        content: [ rectMenu1, imgMenu1, lblMenu1, ]
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#ffffff") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#e2eef4") }, ]
    }
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.01
        green: 0.5
        blue: 0.76
    }
    
    public-read def rectNoteReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: true
        layoutY: 43.0
        styleClass: "leftmenuBar"
        fill: linearGradient
        stroke: Violet
        strokeWidth: 4.0
        width: 230.0
        height: bind groupNote2.layoutY+5.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def rectCashReportBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: true
        layoutY: 43.0
        styleClass: "leftmenuBar"
        fill: linearGradient
        stroke: Violet
        strokeWidth: 4.0
        width: 230.0
        height: bind groupCash4.layoutY+5.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    public-read def Sandal: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 1.0
        green: 0.8
        blue: 0.4
    }
    
    public-read def Left_Menu: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
    }
    
    public-read def Leftmenu1: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial bold"
        size: 14.0
    }
    
    def __layoutInfo_lblMenuStmtR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuStmtR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuStmtR1
        onMouseClicked: lblMenuStmtR1OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def groupStmt1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableStmtReports[0]!=true
        disable: bind DisableStmtReports[0]
        layoutY: bind rectMenuStmtY[0]
        content: [ lblMenuStmtR1, imgMenuStmtR1, ]
    }
    
    public-read def panelStatementsReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        layoutY: bind group5.layoutY-47
        onMouseEntered: repDisble
        onMouseExited: panelStatementsReportOnMouseExited
        content: [ rectStatementReportBg, groupStmt1, groupStmt2, groupStmt3, groupStmt4, ]
    }
    
    def __layoutInfo_lblMenuPayRecR4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPayRecR4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPayRecR4
        onMouseClicked: lblMenuPayRecR4OnMouseClicked
        text: "               Expiry Stock "
        font: Leftmenu1
    }
    
    public-read def groupPayRec4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisablePayRecReports[3]!=true
        disable: bind DisablePayRecReports[3]
        layoutY: bind rectMenuPayRecY[3]+groupPayRec3.layoutY
        content: [ lblMenuPayRecR4, imgMenuPayRecR4, ]
    }
    
    def __layoutInfo_lblMenuPayRecR3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPayRecR3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPayRecR3
        onMouseClicked: lblMenuPayRecR3OnMouseClicked
        text: "               Damaged Stock "
        font: Leftmenu1
    }
    
    public-read def groupPayRec3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisablePayRecReports[2]!=true
        disable: bind DisablePayRecReports[2]
        layoutY: bind rectMenuPayRecY[2]+groupPayRec2.layoutY
        content: [ lblMenuPayRecR3, imgMenuPayRecR3, ]
    }
    
    def __layoutInfo_lblMenuPayRecR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuPayRecR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuPayRecR1
        onMouseClicked: lblMenuPayRecR1OnMouseClicked
        text: "               Current Stock "
        font: Leftmenu1
    }
    
    public-read def groupPayRec1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisablePayRecReports[0]!=true
        disable: bind DisablePayRecReports[0]
        layoutY: bind rectMenuPayRecY[0]
        content: [ lblMenuPayRecR1, imgMenuPayRecR1, ]
    }
    
    public-read def panelPaymentReceiptReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        layoutY: bind group4.layoutY-47
        onMouseEntered: repDisble
        onMouseExited: panelPaymentReceiptReportOnMouseExited
        content: [ rectPayRecReportBg, groupPayRec1, groupPayRec2, groupPayRec3, groupPayRec4, ]
    }
    
    def __layoutInfo_lblMenuNR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuNR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutY: 95.0
        layoutInfo: __layoutInfo_lblMenuNR2
        onMouseClicked: lblMenuNR2OnMouseClicked
        text: "            Product Offer List "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def groupNote2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableNoteReports[1]!=true
        disable: bind DisableNoteReports[1]
        layoutY: bind rectMenuNoteY[1]+groupNote1.layoutY
        content: [ lblMenuNR2, imgMenuNR2, ]
    }
    
    def __layoutInfo_lblMenuNR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuNR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutY: 47.0
        layoutInfo: __layoutInfo_lblMenuNR1
        onMouseClicked: lblMenuNR1OnMouseClicked
        text: "            Product List "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def groupNote1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableNoteReports[0]!=true
        disable: bind DisableNoteReports[0]
        layoutY: bind rectMenuNoteY[0]
        content: [ lblMenuNR1, imgMenuNR1, ]
    }
    
    public-read def panelNoteReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 231.0
        layoutY: bind group3.layoutY-47
        onMouseEntered: repDisble
        onMouseExited: panelNoteReportOnMouseExited
        content: [ rectNoteReportBg, groupNote1, groupNote2, ]
    }
    
    def __layoutInfo_lblMenuLR2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuLR2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuLR2
        onMouseClicked: lblMenuLR2OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def groupLedger2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableLedgerReports[1]!=true
        disable: bind DisableLedgerReports[1]
        layoutY: bind rectMenuLedgerY[1]+groupLedger1.layoutY
        content: [ lblMenuLR2, imgMenuLR2, ]
    }
    
    def __layoutInfo_lblMenuLR1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def lblMenuLR1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutInfo: __layoutInfo_lblMenuLR1
        onMouseClicked: lblMenuLR1OnMouseClicked
        text: "Label"
        font: Leftmenu1
    }
    
    public-read def groupLedger1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableLedgerReports[0]!=true
        disable: bind DisableLedgerReports[0]
        layoutY: bind rectMenuLedgerY[0]
        content: [ lblMenuLR1, imgMenuLR1, ]
    }
    
    public-read def panelLedgerReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        layoutX: 231.0
        layoutY: bind group2.layoutY-47
        onMouseEntered: repDisble
        onMouseExited: panelLedgerReportOnMouseExited
        content: [ rectLRBg, groupLedger1, groupLedger2, ]
    }
    
    def __layoutInfo_lblMenuCash4: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuCash4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 196.0
        layoutInfo: __layoutInfo_lblMenuCash4
        onMouseClicked: lblMenuCash4OnMouseClicked
        text: "            Sales Return "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def groupCash4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableCashReports[3]!=true
        disable: bind DisableCashReports[3]
        layoutY: bind rectMenuCashY[3]+groupCash3.layoutY
        content: [ lblMenuCash4, imgMenuCash4, ]
    }
    
    def __layoutInfo_lblMenuCash3: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuCash3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 148.0
        layoutInfo: __layoutInfo_lblMenuCash3
        onMouseClicked: lblMenuCash3OnMouseClicked
        text: "            Sales Register "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def groupCash3: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableCashReports[2]!=true
        disable: bind DisableCashReports[2]
        layoutY: bind rectMenuCashY[2]+groupCash2.layoutY
        content: [ lblMenuCash3, imgMenuCash3, ]
    }
    
    def __layoutInfo_lblMenuCash2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuCash2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 100.0
        layoutInfo: __layoutInfo_lblMenuCash2
        onMouseClicked: lblMenuCash2OnMouseClicked
        text: "            Customer Sales "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def groupCash2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableCashReports[1]!=true
        disable: bind DisableCashReports[1]
        layoutY: bind rectMenuCashY[1]+groupCash1.layoutY
        content: [ lblMenuCash2, imgMenuCash2, ]
    }
    
    def __layoutInfo_lblMenuCash1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        height: 45.0
    }
    public-read def lblMenuCash1: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutY: 52.0
        layoutInfo: __layoutInfo_lblMenuCash1
        onMouseClicked: lblMenuCash1OnMouseClicked
        text: "            Customer Receipts "
        font: Leftmenu1
        textFill: DarkGray
    }
    
    public-read def groupCash1: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableCashReports[0]!=true
        disable: bind DisableCashReports[0]
        layoutY: bind rectMenuCashY[0]
        content: [ lblMenuCash1, imgMenuCash1, ]
    }
    
    public-read def panelCashMoveReport: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 231.0
        layoutY: bind group1.layoutY-47
        onMouseEntered: repDisble
        onMouseExited: panelCashMoveReportOnMouseExited
        content: [ rectCashReportBg, groupCash1, groupCash2, groupCash3, groupCash4, ]
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
    
    public-read def imageFinancial: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportFinancial.png"
    }
    
    public-read def imageNavigationDown: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationDown.png"
    }
    
    public-read def imgMenu2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: 15.0
        layoutY: 109.0
        image: imageNavigationDown
    }
    
    public-read def group2: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableReports[1]!=true
        disable: bind DisableReports[1]
        layoutY: bind group1.layoutY+rectMenuY[0];
        onMouseEntered: group2OnMouseEntered
        content: [ rectMenu2, imgMenu2, lblMenu2, ]
    }
    
    public-read def imageNavigationUp: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationUp.png"
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
    
    public-read def imageLedger: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportLedger.png"
    }
    
    public-read def imageStatements: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportsStatements.png"
    }
    
    public-read def imageNote: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportNote.png"
    }
    
    public-read def imagePaymentRecipt: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportPaymentReceipt.png"
    }
    
    public-read def imgMenu4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: 15.0
        layoutY: 207.0
        image: imagePaymentRecipt
    }
    
    public-read def group4: javafx.scene.Group = javafx.scene.Group {
        visible: bind DisableReports[3]!=true
        disable: bind DisableReports[3]
        layoutY: bind group3.layoutY+rectMenuY[2];
        onMouseEntered: group4OnMouseEntered
        content: [ rectMenu4, imgMenu4, lblMenu4, ]
    }
    
    public-read def panelSubmenu: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        onMouseEntered: panelSubmenuOnMouseEnteredAtSubMenu
        onMouseExited: panelSubmenuOnMouseExited
        content: [ group1, group2, group3, group4, group5, group6, ]
    }
    
    public-read def paneReportsSubMenu: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        disable: bind CloseForm
        layoutX: 0.0
        layoutY: 0.0
        content: [ panelReport, panelSubmenu, panelCashMoveReport, panelLedgerReport, panelNoteReport, panelPaymentReceiptReport, panelStatementsReport, panelBankTxnReport, ]
    }
    
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        content: [ paneReportsSubMenu, panelMsgBox, ]
    }
    
    public-read def imageCashMovement: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportCashMovement.png"
    }
    
    public-read def imageChqTxn: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/ReportsChequeTxn.png"
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
                            panelReportsForm.visible = true;
                            panelReport.visible = true;
                            rectMenu1.visible = true;
                            rectMenu1.opacity = 1.0;
                            rectMenu1.layoutX = 0.0;
                            rectMenu1.layoutY = 0.0;
                            rectMenu1.styleClass = "LeftmenuHighlight";
                            rectMenu1.fill = Sandal;
                            rectMenu1.stroke = DarkGray;
                            rectMenu1.strokeWidth = 2.0;
                            imgMenu1.visible = true;
                            imgMenu1.layoutX = 16.0;
                            imgMenu1.layoutY = 8.5;
                            imgMenu1.image = imageCashMovement;
                            imgMenu1.fitWidth = 28.0;
                            imgMenu1.fitHeight = 28.0;
                            lblMenu1.visible = true;
                            lblMenu1.layoutX = 0.0;
                            lblMenu1.layoutY = 0.0;
                            __layoutInfo_lblMenu1.width = 220.0;
                            __layoutInfo_lblMenu1.height = 45.0;
                            lblMenu1.text = "              Cash Movement";
                            lblMenu1.font = Left_Menu;
                            lblMenu1.textFill = DarkGray;
                            rectMenu2.visible = true;
                            rectMenu2.opacity = 1.0;
                            rectMenu2.layoutX = 0.0;
                            rectMenu2.layoutY = 0.0;
                            rectMenu2.fill = Gray;
                            rectMenu2.stroke = Green;
                            rectMenu2.strokeWidth = 2.0;
                            imgMenu2.visible = true;
                            imgMenu2.disable = false;
                            imgMenu2.layoutX = 16.0;
                            imgMenu2.layoutY = 8.5;
                            imgMenu2.image = imageLedger;
                            imgMenu2.fitWidth = 28.0;
                            imgMenu2.fitHeight = 28.0;
                            lblMenu2.visible = true;
                            lblMenu2.layoutX = 0.0;
                            lblMenu2.layoutY = 0.0;
                            __layoutInfo_lblMenu2.width = 220.0;
                            __layoutInfo_lblMenu2.height = 45.0;
                            lblMenu2.text = "              Ledger";
                            lblMenu2.font = Left_Menu;
                            lblMenu2.textFill = DarkGray;
                            group2.cursor = javafx.scene.Cursor.HAND;
                            rectMenu3.visible = true;
                            rectMenu3.opacity = 1.0;
                            rectMenu3.layoutX = 0.0;
                            rectMenu3.layoutY = 0.0;
                            rectMenu3.fill = Sandal;
                            rectMenu3.stroke = DarkGray;
                            rectMenu3.strokeWidth = 2.0;
                            imgMenu3.visible = true;
                            imgMenu3.layoutX = 16.0;
                            imgMenu3.layoutY = 8.5;
                            imgMenu3.image = imageNote;
                            imgMenu3.fitWidth = 28.0;
                            imgMenu3.fitHeight = 28.0;
                            lblMenu3.visible = true;
                            lblMenu3.layoutX = 0.0;
                            lblMenu3.layoutY = 0.0;
                            __layoutInfo_lblMenu3.width = 220.0;
                            __layoutInfo_lblMenu3.height = 45.0;
                            lblMenu3.text = "              Credit/Debit Notes";
                            lblMenu3.font = Left_Menu;
                            lblMenu3.textFill = DarkGray;
                            rectMenu4.visible = true;
                            rectMenu4.opacity = 1.0;
                            rectMenu4.layoutX = 0.0;
                            rectMenu4.layoutY = 0.0;
                            rectMenu4.styleClass = "LeftmenuHighlight";
                            rectMenu4.fill = Sandal;
                            rectMenu4.stroke = DarkGray;
                            rectMenu4.strokeWidth = 2.0;
                            imgMenu4.visible = true;
                            imgMenu4.layoutX = 16.0;
                            imgMenu4.layoutY = 8.5;
                            imgMenu4.fitWidth = 28.0;
                            imgMenu4.fitHeight = 28.0;
                            lblMenu4.visible = true;
                            lblMenu4.layoutX = 0.0;
                            lblMenu4.layoutY = 0.0;
                            __layoutInfo_lblMenu4.width = 220.0;
                            __layoutInfo_lblMenu4.height = 45.0;
                            lblMenu4.text = "              Payments & Receipts";
                            lblMenu4.font = Left_Menu;
                            lblMenu4.textFill = DarkGray;
                            rectMenu5.visible = true;
                            rectMenu5.opacity = 1.0;
                            rectMenu5.layoutX = 0.0;
                            rectMenu5.layoutY = 0.0;
                            rectMenu5.styleClass = "LeftmenuHighlight";
                            rectMenu5.fill = Sandal;
                            rectMenu5.stroke = DarkGray;
                            rectMenu5.strokeWidth = 2.0;
                            imgMenu5.visible = true;
                            imgMenu5.layoutX = 16.0;
                            imgMenu5.layoutY = 8.5;
                            imgMenu5.image = imageStatements;
                            imgMenu5.fitWidth = 28.0;
                            imgMenu5.fitHeight = 28.0;
                            lblMenu5.visible = true;
                            lblMenu5.managed = true;
                            lblMenu5.layoutX = 0.0;
                            lblMenu5.layoutY = 0.0;
                            __layoutInfo_lblMenu5.width = 220.0;
                            __layoutInfo_lblMenu5.height = 45.0;
                            lblMenu5.text = "              Statements";
                            lblMenu5.font = Left_Menu;
                            lblMenu5.textFill = DarkGray;
                            rectMenu6.visible = true;
                            rectMenu6.styleClass = "LeftmenuHighlight";
                            lblMenu6.visible = true;
                            __layoutInfo_lblMenu6.width = 220.0;
                            __layoutInfo_lblMenu6.height = 45.0;
                            lblMenu6.text = "              Bank Transactions";
                            lblMenu6.font = Left_Menu;
                            lblMenu6.textFill = DarkGray;
                            imgMenu6.visible = true;
                            imgMenu6.layoutX = 16.0;
                            imgMenu6.layoutY = 8.5;
                            imgMenu6.image = imageChqTxn;
                            imgMenu6.fitWidth = 28.0;
                            imgMenu6.fitHeight = 28.0;
                            group6.onMouseEntered = group6OnMouseEntered;
                            panelSubmenu.visible = true;
                            panelSubmenu.layoutX = 8.0;
                            panelSubmenu.onMouseExited = panelSubmenuOnMouseExited;
                            rectCashReportBg.layoutY = 43.0;
                            rectCashReportBg.width = 226.0;
                            lblMenuCash1.layoutY = 0.0;
                            __layoutInfo_lblMenuCash1.width = 224.0;
                            lblMenuCash1.text = "             Cash Intro. & WithDrawn";
                            imgMenuCash1.layoutX = 20.0;
                            imgMenuCash1.layoutY = 8.5;
                            imgMenuCash1.image = imageCashMovement;
                            imgMenuCash1.fitWidth = 28.0;
                            imgMenuCash1.fitHeight = 28.0;
                            lblMenuCash2.layoutY = 0.0;
                            __layoutInfo_lblMenuCash2.width = 224.0;
                            lblMenuCash2.text = "             Daily Cash Book";
                            imgMenuCash2.layoutX = 20.0;
                            imgMenuCash2.layoutY = 8.5;
                            imgMenuCash2.image = imageCashMovement;
                            imgMenuCash2.fitWidth = 28.0;
                            imgMenuCash2.fitHeight = 28.0;
                            lblMenuCash3.layoutY = 0.0;
                            __layoutInfo_lblMenuCash3.width = 224.0;
                            lblMenuCash3.text = "             Maintanance Costs";
                            imgMenuCash3.layoutX = 20.0;
                            imgMenuCash3.layoutY = 8.5;
                            imgMenuCash3.image = imageCashMovement;
                            imgMenuCash3.fitWidth = 28.0;
                            imgMenuCash3.fitHeight = 28.0;
                            lblMenuCash4.layoutY = 0.0;
                            __layoutInfo_lblMenuCash4.width = 224.0;
                            lblMenuCash4.text = "             Opening & Closing Bal.";
                            imgMenuCash4.layoutX = 20.0;
                            imgMenuCash4.layoutY = 8.5;
                            imgMenuCash4.image = imageCashMovement;
                            imgMenuCash4.fitWidth = 28.0;
                            imgMenuCash4.fitHeight = 28.0;
                            panelCashMoveReport.visible = false;
                            panelCashMoveReport.layoutX = 233.0;
                            rectLRBg.visible = true;
                            rectLRBg.layoutY = 43.0;
                            rectLRBg.fill = linearGradient;
                            rectLRBg.stroke = Violet;
                            rectLRBg.strokeWidth = 4.0;
                            rectLRBg.width = 226.0;
                            rectLRBg.arcWidth = 5.0;
                            rectLRBg.arcHeight = 5.0;
                            lblMenuLR1.visible = true;
                            lblMenuLR1.layoutX = 0.0;
                            lblMenuLR1.layoutY = 0.0;
                            __layoutInfo_lblMenuLR1.width = 224.0;
                            __layoutInfo_lblMenuLR1.height = 45.0;
                            lblMenuLR1.text = "              Customer Ledger";
                            lblMenuLR1.textFill = DarkGray;
                            imgMenuLR1.visible = true;
                            imgMenuLR1.layoutX = 20.0;
                            imgMenuLR1.layoutY = 8.5;
                            imgMenuLR1.image = imageLedger;
                            imgMenuLR1.fitWidth = 28.0;
                            imgMenuLR1.fitHeight = 28.0;
                            lblMenuLR2.visible = true;
                            lblMenuLR2.layoutX = 0.0;
                            lblMenuLR2.layoutY = 0.0;
                            __layoutInfo_lblMenuLR2.width = 224.0;
                            __layoutInfo_lblMenuLR2.height = 45.0;
                            lblMenuLR2.text = "              Distributor Ledger";
                            lblMenuLR2.textFill = DarkGray;
                            imgMenuLR2.visible = true;
                            imgMenuLR2.layoutX = 20.0;
                            imgMenuLR2.layoutY = 8.5;
                            imgMenuLR2.image = imageLedger;
                            imgMenuLR2.fitWidth = 28.0;
                            imgMenuLR2.fitHeight = 28.0;
                            panelLedgerReport.visible = false;
                            panelLedgerReport.layoutX = 233.0;
                            rectNoteReportBg.width = 226.0;
                            lblMenuNR1.visible = true;
                            lblMenuNR1.opacity = 1.0;
                            lblMenuNR1.layoutY = 0.0;
                            __layoutInfo_lblMenuNR1.width = 224.0;
                            lblMenuNR1.text = "               Credit Note";
                            imgMenuNR1.visible = true;
                            imgMenuNR1.layoutY = 8.5;
                            imgMenuNR1.image = imageNote;
                            imgMenuNR1.fitWidth = 28.0;
                            imgMenuNR1.fitHeight = 28.0;
                            lblMenuNR2.visible = true;
                            lblMenuNR2.layoutY = 0.0;
                            __layoutInfo_lblMenuNR2.width = 224.0;
                            lblMenuNR2.text = "               Debit Note";
                            imgMenuNR2.visible = true;
                            imgMenuNR2.layoutY = 8.5;
                            imgMenuNR2.image = imageNote;
                            imgMenuNR2.fitWidth = 28.0;
                            imgMenuNR2.fitHeight = 28.0;
                            panelNoteReport.visible = false;
                            panelNoteReport.layoutX = 233.0;
                            rectPayRecReportBg.visible = true;
                            rectPayRecReportBg.layoutY = 43.0;
                            rectPayRecReportBg.fill = linearGradient;
                            rectPayRecReportBg.stroke = Violet;
                            rectPayRecReportBg.strokeWidth = 4.0;
                            rectPayRecReportBg.width = 226.0;
                            rectPayRecReportBg.arcWidth = 5.0;
                            rectPayRecReportBg.arcHeight = 5.0;
                            lblMenuPayRecR1.visible = true;
                            lblMenuPayRecR1.layoutX = 0.0;
                            lblMenuPayRecR1.layoutY = 0.0;
                            __layoutInfo_lblMenuPayRecR1.width = 224.0;
                            __layoutInfo_lblMenuPayRecR1.height = 45.0;
                            lblMenuPayRecR1.text = "              Payment";
                            lblMenuPayRecR1.textFill = DarkGray;
                            imgMenuPayRecR1.visible = true;
                            imgMenuPayRecR1.layoutX = 20.0;
                            imgMenuPayRecR1.layoutY = 8.5;
                            imgMenuPayRecR1.image = imagePaymentRecipt;
                            imgMenuPayRecR1.fitWidth = 28.0;
                            imgMenuPayRecR1.fitHeight = 28.0;
                            lblMenuPayRecR2.visible = true;
                            lblMenuPayRecR2.layoutX = 0.0;
                            lblMenuPayRecR2.layoutY = 0.0;
                            __layoutInfo_lblMenuPayRecR2.width = 224.0;
                            __layoutInfo_lblMenuPayRecR2.height = 45.0;
                            lblMenuPayRecR2.text = "              Payment Transactions";
                            lblMenuPayRecR2.font = Leftmenu1;
                            lblMenuPayRecR2.textFill = DarkGray;
                            imgMenuPayRecR2.visible = true;
                            imgMenuPayRecR2.layoutX = 20.0;
                            imgMenuPayRecR2.layoutY = 8.5;
                            imgMenuPayRecR2.image = imagePaymentRecipt;
                            imgMenuPayRecR2.fitWidth = 28.0;
                            imgMenuPayRecR2.fitHeight = 28.0;
                            lblMenuPayRecR3.visible = true;
                            lblMenuPayRecR3.layoutX = 0.0;
                            lblMenuPayRecR3.layoutY = 0.0;
                            __layoutInfo_lblMenuPayRecR3.width = 224.0;
                            __layoutInfo_lblMenuPayRecR3.height = 45.0;
                            lblMenuPayRecR3.text = "              Receipt";
                            lblMenuPayRecR3.textFill = DarkGray;
                            imgMenuPayRecR3.visible = true;
                            imgMenuPayRecR3.layoutX = 20.0;
                            imgMenuPayRecR3.layoutY = 8.5;
                            imgMenuPayRecR3.image = imagePaymentRecipt;
                            imgMenuPayRecR3.fitWidth = 28.0;
                            imgMenuPayRecR3.fitHeight = 28.0;
                            lblMenuPayRecR4.visible = true;
                            lblMenuPayRecR4.layoutX = 0.0;
                            lblMenuPayRecR4.layoutY = 0.0;
                            __layoutInfo_lblMenuPayRecR4.width = 224.0;
                            __layoutInfo_lblMenuPayRecR4.height = 45.0;
                            lblMenuPayRecR4.text = "              Receipt Transactions";
                            lblMenuPayRecR4.textFill = DarkGray;
                            imgMenuPayRecR4.visible = true;
                            imgMenuPayRecR4.layoutX = 20.0;
                            imgMenuPayRecR4.layoutY = 8.5;
                            imgMenuPayRecR4.image = imagePaymentRecipt;
                            imgMenuPayRecR4.fitWidth = 28.0;
                            imgMenuPayRecR4.fitHeight = 28.0;
                            panelPaymentReceiptReport.visible = false;
                            panelPaymentReceiptReport.layoutX = 233.0;
                            rectStatementReportBg.visible = true;
                            rectStatementReportBg.layoutY = 43.0;
                            rectStatementReportBg.fill = linearGradient;
                            rectStatementReportBg.stroke = Violet;
                            rectStatementReportBg.strokeWidth = 4.0;
                            rectStatementReportBg.width = 226.0;
                            rectStatementReportBg.arcWidth = 5.0;
                            rectStatementReportBg.arcHeight = 5.0;
                            lblMenuStmtR1.visible = true;
                            lblMenuStmtR1.layoutX = 0.0;
                            lblMenuStmtR1.layoutY = 0.0;
                            __layoutInfo_lblMenuStmtR1.width = 224.0;
                            __layoutInfo_lblMenuStmtR1.height = 45.0;
                            lblMenuStmtR1.text = "               Balance Sheet";
                            lblMenuStmtR1.textFill = DarkGray;
                            imgMenuStmtR1.visible = true;
                            imgMenuStmtR1.layoutX = 20.0;
                            imgMenuStmtR1.layoutY = 8.5;
                            imgMenuStmtR1.image = imageStatements;
                            imgMenuStmtR1.fitWidth = 28.0;
                            imgMenuStmtR1.fitHeight = 28.0;
                            lblMenuStmtR2.visible = true;
                            lblMenuStmtR2.layoutX = 0.0;
                            lblMenuStmtR2.layoutY = 0.0;
                            __layoutInfo_lblMenuStmtR2.width = 224.0;
                            __layoutInfo_lblMenuStmtR2.height = 45.0;
                            lblMenuStmtR2.text = "               Cash Flow";
                            lblMenuStmtR2.font = Leftmenu1;
                            lblMenuStmtR2.textFill = DarkGray;
                            imgMenuStmtR2.visible = true;
                            imgMenuStmtR2.layoutX = 20.0;
                            imgMenuStmtR2.layoutY = 8.5;
                            imgMenuStmtR2.image = imageStatements;
                            imgMenuStmtR2.fitWidth = 28.0;
                            imgMenuStmtR2.fitHeight = 28.0;
                            lblMenuStmtR3.visible = true;
                            lblMenuStmtR3.layoutX = 0.0;
                            lblMenuStmtR3.layoutY = 0.0;
                            __layoutInfo_lblMenuStmtR3.width = 224.0;
                            __layoutInfo_lblMenuStmtR3.height = 45.0;
                            lblMenuStmtR3.text = "               Profit & Loss ";
                            lblMenuStmtR3.font = Leftmenu1;
                            lblMenuStmtR3.textFill = DarkGray;
                            imgMenuStmtR3.visible = true;
                            imgMenuStmtR3.layoutX = 20.0;
                            imgMenuStmtR3.layoutY = 8.5;
                            imgMenuStmtR3.image = imageStatements;
                            imgMenuStmtR3.fitWidth = 28.0;
                            imgMenuStmtR3.fitHeight = 28.0;
                            lblMenuStmtR4.visible = true;
                            lblMenuStmtR4.layoutX = 0.0;
                            lblMenuStmtR4.layoutY = 0.0;
                            __layoutInfo_lblMenuStmtR4.width = 224.0;
                            __layoutInfo_lblMenuStmtR4.height = 45.0;
                            lblMenuStmtR4.text = "               VAT";
                            lblMenuStmtR4.font = Leftmenu1;
                            lblMenuStmtR4.textFill = DarkGray;
                            imgMenuStmtR4.visible = true;
                            imgMenuStmtR4.layoutX = 20.0;
                            imgMenuStmtR4.layoutY = 8.5;
                            imgMenuStmtR4.image = imageStatements;
                            imgMenuStmtR4.fitWidth = 28.0;
                            imgMenuStmtR4.fitHeight = 28.0;
                            panelStatementsReport.visible = false;
                            panelStatementsReport.layoutX = 233.0;
                            rectbankTxnBg.visible = true;
                            rectbankTxnBg.layoutY = 43.0;
                            rectbankTxnBg.styleClass = "leftmenuBar";
                            rectbankTxnBg.fill = linearGradient;
                            rectbankTxnBg.stroke = Violet;
                            rectbankTxnBg.width = 226.0;
                            rectbankTxnBg.arcWidth = 5.0;
                            rectbankTxnBg.arcHeight = 5.0;
                            lblMenuBTxnR1.visible = true;
                            __layoutInfo_lblMenuBTxnR1.width = 224.0;
                            __layoutInfo_lblMenuBTxnR1.height = 45.0;
                            lblMenuBTxnR1.text = "               Complete Summary";
                            lblMenuBTxnR1.font = Leftmenu1;
                            lblMenuBTxnR1.textFill = DarkGray;
                            imgMenuBTxnR1.visible = true;
                            imgMenuBTxnR1.layoutX = 20.0;
                            imgMenuBTxnR1.layoutY = 8.5;
                            imgMenuBTxnR1.image = imageChqTxn;
                            imgMenuBTxnR1.fitWidth = 28.0;
                            imgMenuBTxnR1.fitHeight = 28.0;
                            groupBankTxn1.onMouseClicked = lblMenuBankTxnR1OnMouseClicked;
                            lblMenuBTxnR2.visible = true;
                            __layoutInfo_lblMenuBTxnR2.width = 224.0;
                            __layoutInfo_lblMenuBTxnR2.height = 45.0;
                            lblMenuBTxnR2.text = "               Accountwise Summary";
                            lblMenuBTxnR2.font = Leftmenu1;
                            lblMenuBTxnR2.textFill = DarkGray;
                            imgMenuBTxnR2.visible = true;
                            imgMenuBTxnR2.layoutX = 20.0;
                            imgMenuBTxnR2.layoutY = 8.5;
                            imgMenuBTxnR2.image = imageChqTxn;
                            imgMenuBTxnR2.fitWidth = 28.0;
                            imgMenuBTxnR2.fitHeight = 28.0;
                            groupBankTxn2.onMouseClicked = lblMenuBankTxnR2OnMouseClicked;
                            lblMenuBTxnR3.visible = true;
                            __layoutInfo_lblMenuBTxnR3.width = 224.0;
                            __layoutInfo_lblMenuBTxnR3.height = 45.0;
                            lblMenuBTxnR3.text = "               Account Deposit";
                            lblMenuBTxnR3.font = Leftmenu1;
                            lblMenuBTxnR3.textFill = DarkGray;
                            imgMenuBTxnR3.visible = true;
                            imgMenuBTxnR3.layoutX = 20.0;
                            imgMenuBTxnR3.layoutY = 8.5;
                            imgMenuBTxnR3.image = imageChqTxn;
                            imgMenuBTxnR3.fitWidth = 28.0;
                            imgMenuBTxnR3.fitHeight = 28.0;
                            groupBankTxn3.onMouseClicked = lblMenuBankTxnR3OnMouseClicked;
                            lblMenuBTxnR4.visible = true;
                            __layoutInfo_lblMenuBTxnR4.width = 224.0;
                            __layoutInfo_lblMenuBTxnR4.height = 45.0;
                            lblMenuBTxnR4.text = "               Account Withdrawal";
                            lblMenuBTxnR4.font = Leftmenu1;
                            lblMenuBTxnR4.textFill = DarkGray;
                            imgMenuBTxnR4.visible = true;
                            imgMenuBTxnR4.layoutX = 20.0;
                            imgMenuBTxnR4.layoutY = 8.5;
                            imgMenuBTxnR4.image = imageChqTxn;
                            imgMenuBTxnR4.fitWidth = 28.0;
                            imgMenuBTxnR4.fitHeight = 28.0;
                            groupBankTxn4.onMouseClicked = lblMenuBankTxnR4OnMouseClicked;
                            lblMenuBTxnR5.visible = true;
                            __layoutInfo_lblMenuBTxnR5.width = 224.0;
                            __layoutInfo_lblMenuBTxnR5.height = 45.0;
                            lblMenuBTxnR5.text = "               Cheque Transactions";
                            lblMenuBTxnR5.font = Leftmenu1;
                            lblMenuBTxnR5.textFill = DarkGray;
                            imgMenuBTxnR5.visible = true;
                            imgMenuBTxnR5.layoutX = 20.0;
                            imgMenuBTxnR5.layoutY = 8.5;
                            imgMenuBTxnR5.image = imageChqTxn;
                            imgMenuBTxnR5.fitWidth = 28.0;
                            imgMenuBTxnR5.fitHeight = 28.0;
                            groupBankTxn5.onMouseClicked = lblMenuBankTxnR5OnMouseClicked;
                            lblMenuBTxnR6.visible = true;
                            __layoutInfo_lblMenuBTxnR6.width = 224.0;
                            __layoutInfo_lblMenuBTxnR6.height = 45.0;
                            lblMenuBTxnR6.text = "               Card Transactions";
                            lblMenuBTxnR6.font = Leftmenu1;
                            lblMenuBTxnR6.textFill = DarkGray;
                            imgMenuBTxnR6.visible = true;
                            imgMenuBTxnR6.layoutX = 20.0;
                            imgMenuBTxnR6.layoutY = 8.5;
                            imgMenuBTxnR6.image = imageChqTxn;
                            imgMenuBTxnR6.fitWidth = 28.0;
                            imgMenuBTxnR6.fitHeight = 28.0;
                            groupBankTxn6.onMouseClicked = lblMenuBankTxnR6OnMouseClicked;
                            panelBankTxnReport.visible = false;
                            panelBankTxnReport.layoutX = 233.0;
                            panelBankTxnReport.onMouseEntered = repDisble;
                            panelBankTxnReport.onMouseExited = panelBTxnReportOnMouseExited;
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
    var rectMenuY:Number[];
    var DisableReports:Boolean[];
    var rectMenuCashY:Number[];
    var DisableCashReports:Boolean[];
    var rectMenuLedgerY:Number[];
    var DisableLedgerReports:Boolean[];
    var rectMenuNoteY:Number[];
    var DisableNoteReports:Boolean[];
    var rectMenuPayRecY:Number[];
    var DisablePayRecReports:Boolean[];
    var rectMenuStmtY:Number[];
    var DisableStmtReports:Boolean[];
    var rectMenuBTxnY:Number[];
    var DisableBTxnReports:Boolean[];
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
        MessageBox.MsgBox("Medeil","Confirm","Are you sure you want to close current Report?");
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
        if(msgOutput==1 and CloseForm==true and CommonDeclare.currModule==7){
         panelReport.visible=false;
         imgClose.visible=false;
         CommonDeclare.form[6]=0;
      }
         CloseForm=false;
  }

    function group6OnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
    
       LoadSubMenu(panelBankTxnReport);

    }
    function group5OnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        LoadSubMenu(panelStatementsReport);
    }
    function group4OnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        LoadSubMenu(panelPaymentReceiptReport);
    }
    function group3OnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        LoadSubMenu(panelNoteReport);
    }
    function group2OnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        LoadSubMenu(panelLedgerReport);
    }
    function group1OnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        LoadSubMenu(panelCashMoveReport);
    }
    public function LoadSubMenu(curr_panel: Panel): Void {
        panelReportsForm.disable = true;
        panelCashMoveReport.visible = false;
        panelLedgerReport.visible = false;
        panelNoteReport.visible = false;
        panelPaymentReceiptReport.visible = false;
        panelStatementsReport.visible = false;
        panelBankTxnReport.visible = false;

        curr_panel.visible = true;
        }
    function panelSubmenuOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = false;
    }

    function repEnable(subMenu: Panel): Void {
        panelReportsForm.disable = false;
        subMenu.visible = false;
    }

    function repDisble(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = true;
    }

    function panelReportsFormOnMouseEntered(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = false;
    }
    function panelSubmenuOnMouseEnteredAtSubMenu(event: javafx.scene.input.MouseEvent): Void {
        panelReportsForm.disable = true;
    }

    function panelBTxnReportOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        repEnable(panelBankTxnReport);
    }
    function panelPaymentReceiptReportOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        repEnable(panelPaymentReceiptReport);
    }
    function panelStatementsReportOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        repEnable(panelStatementsReport);
    }
    function panelLedgerReportOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        repEnable(panelLedgerReport);
    }
        function panelNoteReportOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        repEnable(panelNoteReport);
    }
    function panelCashMoveReportOnMouseExited(event: javafx.scene.input.MouseEvent): Void {
        repEnable(panelCashMoveReport);
    }
//  Cash Report
    function lblMenuCash1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("Cash1");
        def ReportCashWithDrawal = ReportCashWithDrawal {};
        ReportCashWithDrawal.Startup();
        insert ReportCashWithDrawal.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuCash2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
          if(productType.equals("Free")){
         editionAlert();
         }
         else {
         deleteForm("Cash2");
         def ReportDailyCashBook = ReportDailyCashBook {};
         ReportDailyCashBook.Startup();
         insert ReportDailyCashBook.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuCash3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("Cash3");
        def ReportMaintainCost = ReportMaintainCost {};
        ReportMaintainCost.Startup();
        insert ReportMaintainCost.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuCash4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("Cash4");
        def ReportOpenClose = ReportOpenClose {};
        ReportOpenClose.Startup();
        insert ReportOpenClose.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    // Ledger Reports
   function lblMenuLR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
          if(productType.equals("Free")){
         editionAlert();
         }
         else {
         deleteForm(" LR1");
         def ReportCustomerLedger = ReportCustomerLedger {};
         ReportCustomerLedger.Startup();
         insert ReportCustomerLedger.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuLR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
          if(productType.equals("Free")){
         editionAlert();
         }
         else {
         deleteForm("LR2 ");
         def ReportDistributorLedger = ReportDistributorLedger {};
         ReportDistributorLedger.Startup();
         insert ReportDistributorLedger.getDesignRootNodes() into panelReportsForm.content;
    }
    }

//   Note Reports
    function lblMenuNR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("NR1");
        def ReportCreditnotes = ReportCreditnotes {};
        ReportCreditnotes.Startup();
        insert ReportCreditnotes.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuNR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("NR2");
        def ReportDebitnotes = ReportDebitnotes {};
        ReportDebitnotes.Startup();
        insert ReportDebitnotes.getDesignRootNodes() into panelReportsForm.content;
    }
    }

//  Statement Reports
    function lblMenuStmtR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StmtR1");
        def ReportBalanceSheet  = ReportBalanceSheet {};
        ReportBalanceSheet.Startup();
        insert ReportBalanceSheet.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStmtR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StmtR2");
        def ReportCashFlow = ReportCashFlow {};
        ReportCashFlow.Startup();
        insert ReportCashFlow.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStmtR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StmtR3");
        def ReportProfitLoss = ReportProfitLoss {};
        ReportProfitLoss.Startup();
        insert ReportProfitLoss.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuStmtR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("StmtR4");
        def ReportVAT = ReportVAT {};
        ReportVAT.Startup();
        insert ReportVAT.getDesignRootNodes() into panelReportsForm.content;
    }
    }


//   Payment Receipt Report
    function lblMenuPayRecR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {        
         deleteForm("PayRecR1");
         def ReportPayments = ReportPayments {};
         ReportPayments.Startup();
         insert ReportPayments.getDesignRootNodes() into panelReportsForm.content;
    }
   

    function lblMenuPayRecR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PayRecR2");
        def ReportPaymentTransactions = ReportPaymentTransactions {};
        insert ReportPaymentTransactions.getDesignRootNodes() into panelReportsForm.content;
        ReportPaymentTransactions.Startup();
    }
    }

    function lblMenuPayRecR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {      
       deleteForm("PayRecR3");
        def ReportReceipts = ReportReceipts {};
        ReportReceipts.Startup();
        insert ReportReceipts.getDesignRootNodes() into panelReportsForm.content;
       
    }

    function lblMenuPayRecR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("PayRecR4");
        def ReportReceiptTransactions = ReportReceiptTransactions {};
        ReportReceiptTransactions.Startup();
        insert ReportReceiptTransactions.getDesignRootNodes() into panelReportsForm.content;
    }
    }
//  Bank Transaction Reports
    function lblMenuBankTxnR1OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("BTxnR1");
        def ReportBankTxn  = ReportBankTxn {};
        ReportBankTxn.Startup();
        insert ReportBankTxn.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuBankTxnR2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("BTxnR2");
        def ReportBankAccountTxn = ReportBankAccountTxn {};
        ReportBankAccountTxn.Startup();
        insert ReportBankAccountTxn.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuBankTxnR3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("BTxnR3");
        def ReportBankDeposit = ReportBankDeposit {};
        ReportBankDeposit.Startup();
        insert ReportBankDeposit.getDesignRootNodes() into panelReportsForm.content;
    }
    }

    function lblMenuBankTxnR4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        if(productType.equals("Free")){
         editionAlert();
         }
         else {
       deleteForm("BTxnR4");
        def ReportBankWithdrawal = ReportBankWithdrawal {};
        ReportBankWithdrawal.Startup();
        insert ReportBankWithdrawal.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuBankTxnR5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("BTxnR5");
        def ReportChequeTxn = ReportChequeTxn {};
        ReportChequeTxn.Startup();
        insert ReportChequeTxn.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    function lblMenuBankTxnR6OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         if(productType.equals("Free")){
         editionAlert();
         }
         else {
        deleteForm("BTxnR6");
        def ReportSalesCard = ReportSalesCard {};
        ReportSalesCard.Startup();
        insert ReportSalesCard.getDesignRootNodes() into panelReportsForm.content;
    }
    }
    public function deleteForm(frm: String): Void {
        panelReport.visible=true;
        imgClose.visible=true;
        delete  panelReportsForm.content;
        currRep = frm.trim();

    }
    function setCashPriv(): Void {
         var access = versionLookup.Financial_Cash_Report();
            for (i in [0..<access.size()]) {
                if (access.get(i) == 0) {
                    DisableCashReports[i]=true;
                    rectMenuCashY[i]=0.0;
                } else {
                    DisableCashReports[i]=false;
                    rectMenuCashY[i]=48.0;
                }
            }
        }
    function setLedgerPriv(): Void {
         var access = versionLookup.Financial_Ledger_Report();
            for (i in [0..<access.size()]) {
                if (access.get(i) == 0) {
                    DisableLedgerReports[i]=true;
                    rectMenuLedgerY[i]=0.0;
                } else {
                    DisableLedgerReports[i]=false;
                    rectMenuLedgerY[i]=48.0;
                }
            }
        }
    function setNotePriv(): Void {
         var access = versionLookup.Financial_Note_Report();
            for (i in [0..<access.size()]) {
                if (access.get(i) == 0) {
                    DisableNoteReports[i]=true;
                    rectMenuNoteY[i]=0.0;
                } else {
                    DisableNoteReports[i]=false;
                    rectMenuNoteY[i]=48.0;
                }
            }
        }
    function setPayRecPriv(): Void {
         var access = versionLookup.Financial_PaymentReceipt_Report();
            for (i in [0..<access.size()]) {
                if (access.get(i) == 0) {
                    DisablePayRecReports[i]=true;
                    rectMenuPayRecY[i]=0.0;
                } else {
                    DisablePayRecReports[i]=false;
                    rectMenuPayRecY[i]=48.0;
                }
            }
        }
    function setStmtPriv(): Void {
         var access = versionLookup.Financial_Statement_Report();
            for (i in [0..<access.size()]) {
                if (access.get(i) == 0) {
                    DisableStmtReports[i]=true;
                    rectMenuStmtY[i]=0.0;
                } else {
                    DisableStmtReports[i]=false;
                    rectMenuStmtY[i]=48.0;
                }
            }
        }
    function setBTxnPriv(): Void {
         var access = versionLookup.Financial_BankTxn_Report();
            for (i in [0..<access.size()]) {

                if (access.get(i) == 0) {
                    DisableBTxnReports[i]=true;
                    rectMenuBTxnY[i]=0.0;
                } else {
                    DisableBTxnReports[i]=false;
                    rectMenuBTxnY[i]=48.0;
                }
            }
        }
    function setPrivillages(u: String): Void {
        var uname = u;
        var getUserInfo:GetUserInfo = new GetUserInfo();
        var versionLookup:VersionLookup = new VersionLookup();
        var access = versionLookup.Financial_Report();
        var userType = getUserInfo.getUserType(uname);
        if (userType.equals("User") or userType.equals("Admin") or userType.equals("SuperAdmin") ) {
            for (i in [0..<access.size()]) {
                if (access.get(i) == 0) {
                    DisableReports[i]=true;
                    rectMenuY[i]=0.0;
                } else {
                    DisableReports[i]=false;
                    rectMenuY[i]=48.0;
                }
            }
            setCashPriv();
            setLedgerPriv();
            setNotePriv();
            setPayRecPriv();
            setStmtPriv();
            setBTxnPriv();
        } else {
        for (i in [0..<4]) {
                rectMenuY[i]=48.0;
                DisableReports[i]=false;
            }
        }


        if(productType.equals("Express")){
           panelBankTxnReport.visible=false;
            DisableReports[5]=true;
        }else{
           panelBankTxnReport.visible=true;
           DisableReports[5]=false;
        }



    }

    init {
         setPrivillages(user);
        groupCash1.content=[ rectSubmenu[0],lblMenuCash1, imgMenuCash1, ];
        groupCash2.content=[ rectSubmenu[1],lblMenuCash2, imgMenuCash2, ];
        groupCash3.content=[ rectSubmenu[2],lblMenuCash3, imgMenuCash3, ];
        groupCash4.content=[ rectSubmenu[3],lblMenuCash4, imgMenuCash4, ];

        groupLedger1.content=[  rectSubmenu[4],lblMenuLR1, imgMenuLR1, ];
        groupLedger2.content=[  rectSubmenu[5],lblMenuLR2, imgMenuLR2, ];

        groupNote1.content=[ rectSubmenu[6],lblMenuNR1, imgMenuNR1, ];
        groupNote2.content=[ rectSubmenu[7],lblMenuNR2, imgMenuNR2, ];

        groupPayRec1.content=[ rectSubmenu[8],lblMenuPayRecR1, imgMenuPayRecR1, ];
        groupPayRec2.content=[ rectSubmenu[9], lblMenuPayRecR2, imgMenuPayRecR2, ];
        groupPayRec3.content=[ rectSubmenu[10],lblMenuPayRecR3, imgMenuPayRecR3, ];
        groupPayRec4.content=[ rectSubmenu[11],lblMenuPayRecR4, imgMenuPayRecR4, ];

        groupStmt1.content=[ rectSubmenu[12], lblMenuStmtR1, imgMenuStmtR1, ];
        groupStmt2.content=[ rectSubmenu[13], lblMenuStmtR2, imgMenuStmtR2, ];
        groupStmt3.content=[ rectSubmenu[14],lblMenuStmtR3, imgMenuStmtR3, ];
        groupStmt4.content=[ rectSubmenu[15],lblMenuStmtR4, imgMenuStmtR4, ];

        groupBankTxn1.content=[ rectSubmenu[16], lblMenuBTxnR1, imgMenuBTxnR1, ];
        groupBankTxn2.content=[ rectSubmenu[17], lblMenuBTxnR2, imgMenuBTxnR2, ];
        groupBankTxn3.content=[ rectSubmenu[18],lblMenuBTxnR3, imgMenuBTxnR3, ];
        groupBankTxn4.content=[ rectSubmenu[19],lblMenuBTxnR4, imgMenuBTxnR4, ];
        groupBankTxn5.content=[ rectSubmenu[20],lblMenuBTxnR5, imgMenuBTxnR5, ];
        groupBankTxn6.content=[ rectSubmenu[21],lblMenuBTxnR6, imgMenuBTxnR6, ];
    }

}
