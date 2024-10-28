package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.io.File;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportCurrentStock
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var C1LX=bind(38.88182973*panelW)/100;
var textW=bind panelW-200;
var LX=bind (panelW-textW)/2;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var Type2TextboxW=bind CommonDeclare.Type1TextboxW;
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var log:Logger=Logger.getLogger(ReportCurrentStock.class,"Reports");
var listH=0.0;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var C4LX = bind CommonDeclare.Column4LX;

    

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_listMfrName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: bind listH
    }
    public-read def listMfrName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+150
        layoutY: 236.0
        layoutInfo: __layoutInfo_listMfrName
        onKeyPressed: listMfrNameOnKeyPressed
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
    
    def __layoutInfo_txtDist: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
    }
    public-read def txtDist: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+150
        layoutY: 260.0
        layoutInfo: __layoutInfo_txtDist
        onKeyPressed: txtDistOnKeyPressed
        onKeyReleased: txtDistOnKeyReleased
        font: Arial_14
    }
    
    public-read def lblDist: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 260.0
        text: "Enter Distributor Name"
        font: Arial_14
    }
    
    def __layoutInfo_txtMfr: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
    }
    public-read def txtMfr: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+150
        layoutY: 214.0
        layoutInfo: __layoutInfo_txtMfr
        onKeyPressed: txtMfrOnKeyPressed
        onKeyReleased: txtMfrOnKeyReleased
        font: Arial_14
    }
    
    public-read def lblMfr: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 214.0
        text: "Enter Formulation Type"
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
        text: "Current Stock Status"
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
    
    public-read def rdocomStockWithVAT: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        visible: false
        layoutX: bind C1LX+200
        layoutY: 70.0
        onMouseClicked: rdocomStockWithVATOnMouseClicked
        text: "Complete Stock List With VAT"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdocomStock: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        visible: true
        layoutX: bind C1LX-50
        layoutY: 70.0
        onMouseClicked: rdocomStockOnMouseClicked
        text: "Complete Stock List"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def rdoDist: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX-50
        layoutY: 158.0
        onMouseClicked: rdoDistOnMouseClicked
        text: "Distributor Wise Stock"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoMfr: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        cursor: null
        layoutX: bind C1LX-50
        layoutY: 114.0
        onMouseClicked: rdoMfrOnMouseClicked
        effect: null
        text: "Manufacturer wise Stock"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: false
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    public-read def imgMfr: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: bind C1LX+340
        layoutY: 214.0
        onMouseClicked: imgMfrOnMouseClicked
        image: image
        fitHeight: 25.0
    }
    
    public-read def toggleGroup2: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdoPprice: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+200
        layoutY: 158.0
        onMouseClicked: rdoPpriceOnMouseClicked
        text: "value based on Purchase Price"
        font: Arial_14
        toggleGroup: toggleGroup2
    }
    
    public-read def rdoMrp: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+200
        layoutY: 114.0
        onMouseClicked: rdoMrpOnMouseClicked
        text: "Value based on MRP"
        font: Arial_14
        toggleGroup: toggleGroup2
        selected: true
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/NavigationNext.png"
    }
    
    public-read def imageView3: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image2
    }
    
    def __layoutInfo_hyperlink2: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 175.0
        height: 10.0
    }
    public-read def hyperlink2: javafx.scene.control.Hyperlink = javafx.scene.control.Hyperlink {
        visible: false
        layoutX: bind C4LX
        layoutY: bind bottonLY-10
        layoutInfo: __layoutInfo_hyperlink2
        graphic: imageView3
        text: "Outward Transfer"
        font: Arial_Bold_16
        action: hyperlink2Action
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        image: image2
    }
    
    def __layoutInfo_hyperlink: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 175.0
        height: 10.0
    }
    public-read def hyperlink: javafx.scene.control.Hyperlink = javafx.scene.control.Hyperlink {
        visible: false
        layoutX: bind C4LX
        layoutY: bind bottonLY-40
        layoutInfo: __layoutInfo_hyperlink
        graphic: imageView2
        text: "Inward Transfer"
        font: Arial_Bold_16
        action: hyperlinkAction
    }
    
    def __layoutInfo_PanelCurrentStock: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 700.0
        height: 500.0
    }
    public-read def PanelCurrentStock: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_PanelCurrentStock
        content: [ label, rdoMfr, rdoDist, button1, rdoMrp, rdoPprice, lblMfr, txtMfr, lblDist, txtDist, listMfrName, rdocomStock, rdocomStockWithVAT, imgMfr, hyperlink, hyperlink2, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCurrentStock, ]
    }
    // </editor-fold>//GEN-END:main

    function rdoPpriceOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
            rdocomStockWithVAT.selected=false;
         }

    function rdoMrpOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
            rdocomStockWithVAT.selected=false;
         }

    function rdocomStockWithVATOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
            rdocomStock.selected=false;
            lblDist.visible=false;
            rdoMfr.selected=false;
            rdoDist.selected=false;
            rdoMrp.selected=false;
            rdoPprice.selected=false;
            lblMfr.visible=false;
            txtDist.visible=false;
            txtMfr.visible=false;
            listMfrName.visible=false;
            imgMfr.visible=false;

         }

  
    function hyperlink2Action(): Void {
        try {
        insRep();
        panel.visible=true;
        var image : String   = "{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
        params1.put("transfertype","outward_transfer");
        params1.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/stock_transfer.jasper",params1);
        commonController.queryExecution("CALL pro_userlog('Current Stock','{hyperlink2Action}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportCurrentStock  method : hyperlink2Action()   = {e.getMessage()}";
        log.debug(msg);
        }
     }
   
    function hyperlinkAction(): Void {
        try {
        insRep();
        panel.visible=true;
        var image : String   = "{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
        params1.put("transfertype","inward_transfer");
        params1.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/stock_transfer.jasper",params1);
        commonController.queryExecution("CALL pro_userlog('Current Stock','{hyperlinkAction}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportCurrentStock  method : hyperlinkAction()   = {e.getMessage()}";
        log.debug(msg);
        }
      }

    function txtDistOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
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
    CustomAlert.ShowInfo("Current Stock",msg);
    showAlertbox();
    }
    function rdocomStockOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {        
        txtMfr.visible=true;
        lblMfr.visible=true;
        imgMfr.visible=true;
        lblMfr.text ="Enter Formulation type";
        txtDist.visible=false;
        lblDist.visible=false;
        listMfrName.visible=false;
        imgMfr.layoutY=214.0;
        txtDist.text="";
        }

    
    function txtMfrOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
       if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            button1.requestFocus();
    }
    shortcut(event.code);    
         }

    function txtDistOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
       if (event.code != KeyCode.VK_F10)
          {
          listMfrName.layoutY=282.0;
          getDist(event.code,txtDist.rawText.trim());
                if (event.code == KeyCode.VK_DOWN)
                listMfrName.requestFocus();
                listMfrName.selectFirstRow();
          }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listMfrName.visible = false;
           }

         }

    function listMfrNameOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
         if(listMfrName.focused)
            if (event.code == KeyCode.VK_DOWN)
        listMfrName.selectFirstRow();
         }

    function txtMfrOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {       
        if (event.code != KeyCode.VK_F10)
          {
          listMfrName.layoutY=236.0;
          if(lblMfr.text.equalsIgnoreCase("Enter Manufacturer Name")){
          getMfr(event.code,txtMfr.rawText.trim());
          }
          else {
          getFormulation(event.code,txtMfr.rawText.trim());
          }

                if (event.code == KeyCode.VK_DOWN)
                listMfrName.requestFocus();
                listMfrName.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listMfrName.visible = false;
           }

         }
    function imgMfrOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
       if(rdoMfr.selected==true)
       {
       txtDist.text="";
       listMfrName.visible = false;
       listMfrName.layoutY=236.0;
       getMfr(KeyCode.VK_DOWN,"");
       }
       else if(rdoDist.selected==true)
       {
       txtMfr.text="";
       listMfrName.visible = false; 
       listMfrName.layoutY=282.0;
       getDist(KeyCode.VK_DOWN,"");
       }
       else if(rdocomStock.selected==true)
       {
       txtDist.text="";
       listMfrName.visible = false;
       listMfrName.layoutY=236.0;
       getFormulation(KeyCode.VK_DOWN,"");
       }
         }

    function getFormulation(kcode: javafx.scene.input.KeyCode,mfrname:String):Void {
        var mfrName;
        listMfrName.visible = true;
        mfrName =  commonController.getFormulation(mfrname).toArray();
        listMfrName.clearSelection();
        listMfrName.items = mfrName;
        var size =  listMfrName.items.size();
        listMfrName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtMfr.text = "{listMfrName.selectedItem}";
                        listMfrName.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listMfrName.selectedIndex == 0) {
                            listMfrName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listMfrName.visible = false;
                        txtMfr.requestFocus();
                    }
                };
        listMfrName.onMouseClicked = function(e) {
                    txtMfr.text = "{listMfrName.selectedItem}";
                    listMfrName.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listMfrName.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listMfrName.visible = false;
            txtMfr.requestFocus();
    }


    function getMfr(kcode: javafx.scene.input.KeyCode,mfrname:String):Void {
        var mfrName: String[] = [];
        listMfrName.visible = true;        
        mfrName =  commonController.mfrName(mfrname);
        listMfrName.clearSelection();
        listMfrName.items = mfrName;
        var size =  listMfrName.items.size();
        listMfrName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtMfr.text = "{listMfrName.selectedItem}";
                        listMfrName.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listMfrName.selectedIndex == 0) {
                            listMfrName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listMfrName.visible = false;
                        txtMfr.requestFocus();
                    }
                };
        listMfrName.onMouseClicked = function(e) {
                    txtMfr.text = "{listMfrName.selectedItem}";
                    listMfrName.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listMfrName.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listMfrName.visible = false;
            txtMfr.requestFocus();
    }
    function getDist(kcode: javafx.scene.input.KeyCode,distname:String):Void {
        var distName: String[] = [];
        listMfrName.visible = true;
        distName =  commonController.DistributorName(distname);
        listMfrName.clearSelection();
        listMfrName.items = distName;
        var size =  listMfrName.items.size();
        listMfrName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtDist.text = "{listMfrName.selectedItem}";
                        listMfrName.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listMfrName.selectedIndex == 0) {
                            listMfrName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listMfrName.visible = false;
                        txtDist.requestFocus();
                    }
                };
        listMfrName.onMouseClicked = function(e) {
                    txtDist.text = "{listMfrName.selectedItem}";
                    listMfrName.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listMfrName.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listMfrName.visible = false;
        txtDist.requestFocus();
    }

    function rdoDistOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        txtMfr.visible=false;
        lblMfr.visible=false;
        txtDist.visible=true;
        lblDist.visible=true;
        imgMfr.visible=true;
        listMfrName.visible=false;
        imgMfr.layoutY=260.0;
        txtMfr.text="";
         }

    function rdoMfrOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        //TODO
        txtDist.visible=false;
        lblDist.visible=false;
        lblMfr.text ="Enter Manufacturer Name";
        txtMfr.visible=true;
        lblMfr.visible=true;
        imgMfr.visible=true;
        listMfrName.visible=false;
        imgMfr.layoutY=214.0;
        txtDist.text="";
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
        insRep();
        panel.visible = true;
        var image : String   = "{path}""/reportfiles/Medil Logo.png";
        var params1  = new HashMap();
        if(rdoMfr.selected==true)
        {
            if(rdoMrp.selected==true)
            {
            if(txtMfr.rawText.trim()==null or txtMfr.rawText.trim().length()<=0)
            {
                FXinfo("Please Enter the Manufacturer Name");
            }
            else
            {
            params1.put("REPORTS_DIR",image);
            params1.put("mfrname",txtMfr.rawText.trim());
            params1.put("price","mrp");
            RepViewer.showReport("/reportfiles/mfr_stock.jasper",params1);
            }
            }
            else if(rdoPprice.selected==true)
            {
            if(txtMfr.rawText.trim()==null or txtMfr.rawText.trim().length()<=0)
            {
                FXinfo("Please Enter the Manufacturer Name");
            }
            else
            {
            params1.put("REPORTS_DIR",image);
            params1.put("mfrname",txtMfr.rawText.trim());
            params1.put("price","pprice");
            RepViewer.showReport("/reportfiles/mfr_stock.jasper",params1);
            }
            }
        }
        else if(rdoDist.selected==true)
        {
        if(rdoMrp.selected==true)
            {
                if(txtDist.rawText.trim()==null or txtDist.rawText.trim().length()<=0)
            {
                FXinfo("Please Enter the Distributor Name");
            }
            else
            {
            params1.put("REPORTS_DIR",image);
            params1.put("distname",txtDist.rawText.trim());
            params1.put("price","mrp");
            RepViewer.showReport("/reportfiles/dist_stock.jasper",params1);
            }
            }
            else if(rdoPprice.selected==true)
            {
                if(txtDist.rawText.trim()==null or txtDist.rawText.trim().length()<=0)
            {
                FXinfo("Please Enter the Distributor Name");
            }
            else
            {
            params1.put("REPORTS_DIR",image);
            params1.put("distname",txtDist.rawText.trim());
            params1.put("price","pprice");
            RepViewer.showReport("/reportfiles/dist_stock.jasper",params1);
            }
            }
        }
        else if(rdocomStock.selected==true)
        {
            if(txtMfr.text.trim().equals("")){
             params1.put("formulation","");
             params1.put("type1","completestock");
            }
            else {
             params1.put("formulation", txtMfr.text);
             params1.put("type1","formulationwisestock");
            }
            if(rdoMrp.selected==true)
            {
            params1.put("REPORTS_DIR",image);
            params1.put("price","mrp");
            RepViewer.showReport("/reportfiles/stock_statement.jasper",params1);
            }
            else if(rdoPprice.selected==true)
            {
            params1.put("REPORTS_DIR",image);
            params1.put("price","pprice");
            RepViewer.showReport("/reportfiles/stock_statement.jasper",params1);
            }
        }
        else if(rdocomStockWithVAT.selected==true)
        {
   
            params1.put("REPORTS_DIR",image);
            params1.put("type1","completestockwithvat");
            RepViewer.showReport("/reportfiles/complete_stock_statement.jasper",params1);
        }
          commonController.queryExecution("CALL pro_userlog('Current Stock','{button1.text}')");
        }
        catch (e:Exception)
        {
        var msg:String="Class : ReportCurrentStock method : button1Action()   = {e.getMessage()}";
        log.debug(msg);        
        }
        }
        }   
function insRep():Void{
    delete panel.content;
    insert RepViewer.getDesignRootNodes() into panel.content;
}

public function Startup()
{
    var showInTransfer:Integer = Integer.parseInt(commonController.getQueryValue("select count(*) from stock_statement where ss_flag_id=0 and batch_no like '(ST)%'"));
    var showOutTransfer:Integer = Integer.parseInt(commonController.getQueryValue("select count(*) from stock_statement where ss_flag_id=0 and batch_no like '(OT)%'"));
    if(showInTransfer > 0) {
        hyperlink.visible = true;
    }
    else {
        hyperlink.visible = false;
    }
    if(showOutTransfer > 0) {
        hyperlink2.visible = true;
    }
    else {
        hyperlink2.visible = false;
    }
}
}
