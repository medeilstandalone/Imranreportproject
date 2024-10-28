package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.io.File;

import com.vanuston.medeilreport.util.Logger;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportrackwiseStock
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var textW=bind panelW-200;
var LX=bind (panelW-textW)/2;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var Type2TextboxW=bind CommonDeclare.Type1TextboxW;
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var log:Logger=Logger.getLogger(ReportrackwiseStock.class,"Reports");
var listH=0.0;
var C1LX=bind(38.88182973*panelW)/100;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var panelCalenderLX:Number;
var Type1TextboxW=bind CommonDeclare.Type1TextboxW;
var ImageCalenderLX=bind C1LX+125+Type3TextboxW+2 on replace{
    panelCalenderLX = ImageCalenderLX + 30.0;
    };
var sd:String;
var ed:String;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_txtRack: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtRack: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 214.0
        layoutInfo: __layoutInfo_txtRack
        onKeyPressed: txtRackOnKeyPressed
        onKeyReleased: txtRackOnKeyReleased
    }
    
    def __layoutInfo_txtShelf: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtShelf: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 260.0
        layoutInfo: __layoutInfo_txtShelf
        onKeyPressed: txtShelfOnKeyPressed
        onKeyReleased: txtShelfOnKeyReleased
    }
    
    def __layoutInfo_listrackNo: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
        height: bind listH
    }
    public-read def listrackNo: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 236.0
        layoutInfo: __layoutInfo_listrackNo
        onKeyPressed: listrackNoOnKeyPressed
        items: null
    }
    
    public-read def panelAlert: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelAlertLX
        layoutY: bind panelAlertLY
    }
    
    def __layoutInfo_panel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
        height: bind panelH
    }
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_panel
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
    }
    
    public-read def lblDist: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 260.0
        text: "Enter Shelf Number"
        font: Arial_14
    }
    
    public-read def lblMfr: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 214.0
        text: "Enter Rack Number"
        font: Arial_14
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
    
    public-read def reflectionEffect: javafx.scene.effect.Reflection = javafx.scene.effect.Reflection {
    }
    
    public-read def Arial_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 25.0
    }
    
    def __layoutInfo_label: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
    }
    public-read def label: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 0.0
        layoutY: 1.0
        layoutInfo: __layoutInfo_label
        effect: null
        text: "Rack & Shelfwise Stock Statement"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def imagebalance: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Doctor.png"
        backgroundLoading: false
    }
    
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutY: 0.0
        image: imagebalance
        fitWidth: bind bottonImageW
        fitHeight: bind bottonImageH
    }
    
    def __layoutInfo_button1: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def button1: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+20
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button1
        onKeyPressed: button1OnKeyPressed
        effect: reflectionEffect
        graphic: imageView
        text: "Report [F10]"
        font: Arial_Bold_14
        textAlignment: javafx.scene.text.TextAlignment.LEFT
        action: button1Action
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdopurPrice: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX
        layoutY: 132.0
        onMouseClicked: rdopurPriceOnMouseClicked
        text: "Value based on Purchase Price"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoMrp: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX
        layoutY: 94.0
        onMouseClicked: rdoMrpOnMouseClicked
        text: "Value based on MRP"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    public-read def imgRack: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: bind C1LX+125+Type3TextboxW-2
        layoutY: 214.0
        onMouseClicked: imgRackOnMouseClicked
        image: image
    }
    
    public-read def toggleGroup2: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def image3: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def image4: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind C1LX+125+Type3TextboxW-2
        layoutY: 260.0
        onMouseClicked: imageView2OnMouseClicked
        image: image4
    }
    
    def __layoutInfo_PanelCurrentStock: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 700.0
        height: 500.0
    }
    public-read def PanelCurrentStock: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_PanelCurrentStock
        content: [ label, button1, lblMfr, txtRack, lblDist, txtShelf, imgRack, rdoMrp, imageView2, rdopurPrice, listrackNo, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCurrentStock, ]
    }
    // </editor-fold>//GEN-END:main

    function imageView2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        getShelf(KeyCode.VK_DOWN,"");
        listrackNo.layoutY = 282.0;
         }

    function rdopurPriceOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtRack.text = "";
        txtShelf.text = "";
         }

    function rdoMrpOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtRack.text = "";
        txtShelf.text = "";
         }
    
    function imgRackOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        getRack(KeyCode.VK_DOWN,"");
        listrackNo.layoutY= 236.0;
        }
    
    function txtShelfOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            button1.requestFocus();
    }
    shortcut(event.code);  
         }
    def CustomAlert=CustomAlert{};
    function showAlertbox():Void{
    panelAlert.visible=true;
    delete panelAlert.content;
    insert CustomAlert.getDesignRootNodes() into panelAlert.content;
    CustomAlert.show();
    }
    function FXinfo(msg:String):Void{
    CustomAlert.ShowInfo("Rack wise Stock",msg);
    showAlertbox();
    }   

    
    function txtRackOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
       if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            button1.requestFocus();
    }
    shortcut(event.code);    
         }

    function txtShelfOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
       if (event.code != KeyCode.VK_F10)
          {
          listrackNo.layoutY=282.0;
          getShelf(event.code,txtShelf.rawText.trim());
                if (event.code == KeyCode.VK_DOWN)
                listrackNo.requestFocus();
                listrackNo.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listrackNo.visible = false;
           }

         }

    function listrackNoOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
         if(listrackNo.focused)
            if (event.code == KeyCode.VK_DOWN)
        listrackNo.selectFirstRow();

         }

    function txtRackOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
        if (event.code != KeyCode.VK_F10)
          {
          listrackNo.layoutY=236.0;
          getRack(event.code,txtRack.rawText.trim());
                if (event.code == KeyCode.VK_DOWN)
                listrackNo.requestFocus();
                listrackNo.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listrackNo.visible = false;
           }

         }
    
    function getRack(kcode: javafx.scene.input.KeyCode,rackNo:String):Void {
        var rackNumber;
        listrackNo.visible = true;
        rackNumber =  commonController.rackNumber(rackNo).toArray();
        listrackNo.clearSelection();
        listrackNo.items = rackNumber;
        var size =  listrackNo.items.size();
        listrackNo.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtRack.text = "{listrackNo.selectedItem}";
                        listrackNo.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listrackNo.selectedIndex == 0) {
                            listrackNo.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listrackNo.visible = false;
                        txtRack.requestFocus();
                    }
                };
        listrackNo.onMouseClicked = function(e) {
                    txtRack.text = "{listrackNo.selectedItem}";
                    listrackNo.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listrackNo.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listrackNo.visible = false;
            txtRack.requestFocus();
    }
    function getShelf(kcode: javafx.scene.input.KeyCode,shelfNo:String):Void {
        var shelfNumber;
        listrackNo.visible = true;
        shelfNumber =  commonController.shelfNumber(shelfNo).toArray();
        listrackNo.clearSelection();
        listrackNo.items = shelfNumber;
        var size =  listrackNo.items.size();
        listrackNo.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtShelf.text = "{listrackNo.selectedItem}";
                        listrackNo.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listrackNo.selectedIndex == 0) {
                            listrackNo.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listrackNo.visible = false;
                        txtShelf.requestFocus();
                    }
                };
        listrackNo.onMouseClicked = function(e) {
                    txtShelf.text = "{listrackNo.selectedItem}";
                    listrackNo.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listrackNo.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listrackNo.visible = false;
        txtShelf.requestFocus();
    }

    
        def RepViewer = ReportViewer{
        heading: bind label.text;
        };
            var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("StkR2".trim())){
            shortcut(KyEvent.code);
            }
            }
            function button1OnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
            shortcut(event.code);
            }
            public function shortcut(kcode:KeyCode): Void {
            if (kcode == CommonDeclare.repKey) {
            button1Action();
            }
            }
        function button1Action(): Void {
        {
        try
        {
          var params1  = new HashMap();

          if(txtShelf.text.equals("") and not txtRack.text.equals("")) {
               params1.put("storagetype",'rack');
          }
          else if (txtRack.text.equals("") and not txtShelf.text.equals("")) {
              params1.put("storagetype",'shelf');
          }
          else if (not txtRack.text.equals("") and not txtShelf.text.equals("")){
              params1.put("storagetype",'rackshelf');
          }

          if(rdoMrp.selected == true)
            {
            params1.put("pricetype",'mrp');
            params1.put("rack",txtRack.rawText.trim());
            params1.put("shelf",txtShelf.rawText.trim());
            }
          else if(rdopurPrice.selected == true) {
            params1.put("pricetype",'pprice');
            params1.put("rack",txtRack.rawText.trim());
            params1.put("shelf",txtShelf.rawText.trim());
            }

          if(txtShelf.rawText.trim().equals("") and txtRack.rawText.trim().equals(""))
            {
                FXinfo("Please Enter the Rack or Shelf Numbers");
            }
          else {
            insRep();
            panel.visible = true;
            var image : String   = "{path}""/reportfiles/Medil Logo.png";
            RepViewer.showReport("/reportfiles/rackwisestock_statement.jasper",params1);
            }            
                                          
       commonController.queryExecution("CALL pro_userlog('Rackwise Stock','{button1.text}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportrackwiseStock method : button1Action()   = {e.getMessage()}";
        log.debug(msg);
        }
        }        
        }


function insRep():Void{
    delete panel.content;
    insert RepViewer.getDesignRootNodes() into panel.content;
}
public function Startup() : Void {            
        rdoMrp.selected = true;
        listrackNo.visible=false;
 } 
}
