package com.vanuston.medeilreport.ui;

import java.lang.*;
import com.vanuston.medeilreport.util.CommonDeclare;

public class HomePage {

    var panelW = bind (CommonDeclare.ScreenWidth-CommonDeclare.DockW);
    var panelH = bind CommonDeclare.panelFormH;
var LogoLX=bind (panelW-450);

var panelImgLX=bind panelW*18.92121982/100;
var vboxLX=bind vbox1LX-50;
var vbox1LX=bind panelW-450;
var panelDateLX=bind panelW-135;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def panelDate: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelDateLX
        layoutY: 2.0
    }
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.011764706
        green: 0.5019608
        blue: 0.7607843
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        startY: 1.0
        endX: 0.0
        endY: 0.0
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#76a340") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#99cc33") }, ]
    }
    
    public-read def Arial_Bold_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 18.0
    }
    
    public-read def Arial_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
    }
    
    public-read def Arial_Bold_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
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
    
    public-read def Arial_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 18.0
    }
    
    public-read def Arial_20: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 20.0
    }
    
    public-read def Arial_Bold_20: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 20.0
    }
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def Arial_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 25.0
    }
    
    public-read def DarkGray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.2
        blue: 0.2
    }
    
    public-read def rectangle: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        opacity: 1.0
        layoutX: 0.0
        layoutY: 0.0
        fill: linearGradient
        stroke: DarkGray
        width: bind panelW
        height: bind panelH
    }
    
    public-read def Green: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.4
        green: 0.6
    }
    
    public-read def lblEdition: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 85.0
        layoutY: 45.0
        text: ""
        font: Arial_Bold_14
        textFill: Green
    }
    
    public-read def label6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        text: "User friendly Dashboard Reporting"
        font: Arial_Bold_18
        textFill: Green
    }
    
    public-read def label5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        text: "Alert Management"
        font: Arial_Bold_18
        textFill: Green
    }
    
    public-read def label4: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        effect: null
        text: "Live Drug Index Update"
        font: Arial_Bold_18
        textFill: Green
    }
    
    public-read def label3: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        text: "Integrated Decision Support System (DSS)"
        font: Arial_Bold_18
        textFill: Green
    }
    
    public-read def label2: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        text: "Built-in Customer Relationship Management (CRM)"
        font: Arial_Bold_18
        textFill: Green
    }
    
    public-read def label16: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 35.0
        layoutY: 234.0
        text: "Multi-level Inventory Control "
        font: Arial_Bold_18
        textFill: Green
    }
    
    public-read def vbox: javafx.scene.layout.VBox = javafx.scene.layout.VBox {
        visible: false
        layoutX: bind vbox1LX
        layoutY: 121.0
        content: [ label16, label2, label3, label4, label5, label6, ]
        spacing: 16.0
    }
    
    public-read def color: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 1.0
        green: 0.4
    }
    
    public-read def Arial_Bold_60: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 60.0
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Tablets.png"
    }
    
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 0.0
        layoutY: 75.0
        effect: reflectionEffect
        image: image
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Natural Medicine.png"
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        opacity: 0.73
        layoutX: 100.0
        layoutY: 20.0
        image: image2
    }
    
    public-read def panel2: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: bind panelImgLX
        layoutY: 320.0
        content: [ imageView2, imageView, ]
    }
    
    public-read def Bullet_arrow_png: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Bullet arrow.png"
    }
    
    public-read def imageView3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        image: Bullet_arrow_png
    }
    
    public-read def image3: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Bullet arrow.png"
    }
    
    public-read def imageView4: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image3
    }
    
    public-read def image4: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Bullet arrow.png"
    }
    
    public-read def imageView5: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image4
    }
    
    public-read def image5: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Bullet arrow.png"
    }
    
    public-read def imageView6: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image5
    }
    
    public-read def image6: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Bullet arrow.png"
    }
    
    public-read def imageView7: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image6
    }
    
    public-read def image7: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Bullet arrow.png"
    }
    
    public-read def imageView8: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image7
    }
    
    public-read def vbox2: javafx.scene.layout.VBox = javafx.scene.layout.VBox {
        visible: false
        layoutX: bind vboxLX
        layoutY: 121.0
        content: [ imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, ]
        spacing: 10.0
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#ffffff") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#f5f0e9") }, ]
    }
    
    public-read def image8: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Medil Logo.png"
    }
    
    public-read def imageView9: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutY: 0.0
        image: image8
    }
    
    public-read def panelLogo: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind LogoLX
        layoutY: 35.0
        content: [ imageView9, lblEdition, ]
    }
    
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: true
        content: [ rectangle, vbox, vbox2, panelLogo, panel2, panelDate, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ panel, ]
    }
    // </editor-fold>//GEN-END:main
init{
       def Date=MedeilDate{};
       Date.Startup();
       delete panelDate.content;
       insert Date.getDesignRootNodes() into panelDate.content;
}

}

