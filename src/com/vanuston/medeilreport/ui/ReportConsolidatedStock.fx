package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import com.vanuston.medeilreport.util.CommonDeclare;
import java.util.HashMap;
import java.io.File;
import com.vanuston.medeilreport.util.Logger;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportConsolidatedStock
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var textW=bind panelW-200;
var LX=bind (panelW-textW)/2;
var C1LX=bind(38.88182973*panelW)/100;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var dir1 = new File(".");
var path: String = dir1.getCanonicalFile().toString();
var log:Logger=Logger.getLogger(ReportBannedDrug.class,"Reports");
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var listH=0.0;
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_listFormulation: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: bind listH
    }
    public-read def listFormulation: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+150
        layoutY: 292.0
        layoutInfo: __layoutInfo_listFormulation
        onKeyPressed: listFormulationOnKeyPressed
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
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.011764706
        green: 0.5019608
        blue: 0.7607843
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
    }
    
    def __layoutInfo_txtFormulation: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
    }
    public-read def txtFormulation: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+150
        layoutY: 270.0
        layoutInfo: __layoutInfo_txtFormulation
        onKeyPressed: txtFormulationOnKeyPressed
        onKeyReleased: txtFormulationOnKeyReleased
        font: Arial_14
    }
    
    public-read def lblFormulation: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 270.0
        text: "Enter Formulation type"
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
        text: "Consolidated Stock List"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Balance sheet.png"
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
    
    public-read def rdoTherapeutic: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 200.0
        onKeyPressed: rdoTherapeuticOnKeyPressed
        onMouseClicked: rdoTherapeuticOnMouseClicked
        text: "Therapeuticwise Consolidated Stock"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoFormStk: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 150.0
        onKeyPressed: rdoFormStkOnKeyPressed
        onMouseClicked: rdoFormStkOnMouseClicked
        text: "Formulationwise Consolidated Stock"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoCompStk: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        opacity: 1.0
        layoutX: bind C1LX+50
        layoutY: 100.0
        onKeyPressed: rdoCompStkOnKeyPressed
        onMouseClicked: rdoCompStkOnMouseClicked
        text: "Consolidated Stock"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def image2: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    public-read def imgList: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        cursor: null
        layoutX: bind C1LX+330
        layoutY: 270.0
        onMouseClicked: imgListOnMouseClicked
        image: image2
        fitHeight: 25.0
    }
    
    public-read def PanelCurrentStock: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button1, lblFormulation, rdoCompStk, txtFormulation, rdoFormStk, listFormulation, imgList, rdoTherapeutic, panelAlert, panel, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCurrentStock, ]
    }
    // </editor-fold>//GEN-END:main

    function rdoTherapeuticOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         lblFormulation.visible = true;
         txtFormulation.visible = true;
         imgList.visible=true;
         lblFormulation.text = "Enter Therapeutic Name";
         txtFormulation.text = "";
         }

    function rdoTherapeuticOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
         rdoFormStk.selected = true;
         lblFormulation.visible = true;
         txtFormulation.visible = true;
         imgList.visible=true;
         txtFormulation.requestFocus();
         lblFormulation.text = "Enter Therapeutic Name";
         txtFormulation.text = "";
         }

    function rdoFormStkOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
         rdoFormStk.selected = true;
         lblFormulation.visible = true;
         txtFormulation.visible = true;
         imgList.visible=true;
         txtFormulation.requestFocus();
         lblFormulation.text = "Enter Formulation Type";
         txtFormulation.text = "";
         }

    function rdoCompStkOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        rdoCompStk.selected = true;
        button1.requestFocus();
        shortcut(event.code);
        }

    function imgListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        getFormulation(KeyCode.VK_DOWN,"");
         }
    function getFormulation(kcode: javafx.scene.input.KeyCode,formulation:String):Void {
        listFormulation.visible = true;
        var form;
        if(rdoFormStk.selected == true) {
        form =  commonController.getFormulation(formulation).toArray();
        }
        else {
        form =  commonController.getTherapeutic(formulation).toArray();
        }
        listFormulation.clearSelection();
        listFormulation.items = form;
        var size =  listFormulation.items.size();
        listFormulation.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtFormulation.text = "{listFormulation.selectedItem}";
                        listFormulation.visible = false;
                        button1.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listFormulation.selectedIndex == 0) {
                            listFormulation.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listFormulation.visible = false;
                        txtFormulation.requestFocus();
                    }
                };
        listFormulation.onMouseClicked = function(e) {
                    txtFormulation.text = "{listFormulation.selectedItem}";
                    listFormulation.visible = false;
                    button1.requestFocus();
                }
        if(size<8)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listFormulation.visible=false;
         }else{
             listH = 195;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listFormulation.visible = false;
            txtFormulation.requestFocus();
    }

    function txtFormulationOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
       if (event.code != KeyCode.VK_F10)
          {          
          getFormulation(event.code,txtFormulation.rawText.trim());
          if (event.code == KeyCode.VK_DOWN)
                listFormulation.requestFocus();
                listFormulation.selectFirstRow();
                }
         else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listFormulation.visible = false;
           }
         }

    function txtFormulationOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            button1.requestFocus();
        }
        shortcut(event.code);  
         }

    function listFormulationOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if(listFormulation.focused)
            if (event.code == KeyCode.VK_DOWN)
            listFormulation.selectFirstRow();
         }


    function rdoFormStkOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
         lblFormulation.visible = true;
         txtFormulation.visible = true;
         imgList.visible=true;
         lblFormulation.text = "Enter Formulation Type";
         txtFormulation.text = "";
         }

    function rdoCompStkOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        lblFormulation.visible = false;
        txtFormulation.visible = false;
        imgList.visible=false;
        listFormulation.visible = false;
        txtFormulation.text = "";
         }

    def CustomAlert=CustomAlert{};
    function showAlertbox():Void{
                panelAlert.visible=true;
                delete panelAlert.content;
                insert CustomAlert.getDesignRootNodes() into panelAlert.content;
                CustomAlert.show();
     }

            function FXinfo(msg:String):Void{
                CustomAlert.ShowInfo("Consolidated Stock",msg);
                showAlertbox();
            }
            
            def RepViewer = ReportViewer{
            heading: bind label.text;
            };
            var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("StkR1".trim())){
            shortcut(KyEvent.code);
            }
            }
            function button1OnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
            reportConsolidatedStock();
            shortcut(event.code);
            }
            public function shortcut(kcode:KeyCode): Void {
            if (kcode == CommonDeclare.repKey) {
            button1Action();
            }
            }
            function button1Action(): Void {
            try
            {
             reportConsolidatedStock();
            }
            catch (e:Exception)
            {
            var msg:String="Class : ReportConsolidatedStock method : button1Action()   = {e.getMessage()}";
            log.debug(msg);            
            }
            }

            function reportConsolidatedStock():Void {
            if(rdoCompStk.selected == true){
            insRep();
            panel.visible = true;
            var image : String   = "{path}/reportfiles/Medil Logo.png";
            var params1  = new HashMap();
            params1.put("formulation","");
            params1.put("type1","consolidatedstock");
            params1.put("REPORTS_DIR",image);
            RepViewer.showReport("/reportfiles/consolidated_stock_statement.jasper",params1);
            }
            else if(rdoFormStk.selected == true) {
            if(txtFormulation.text.equals("")) {
                  FXinfo("Please enter the Formulation");
            }
            else {
            insRep();
            panel.visible = true;
            var image : String   = "{path}""/reportfiles/Medil Logo.png";
            var params1  = new HashMap();
            params1.put("formulation",txtFormulation.rawText.trim());
            params1.put("type1","formulationwiseconsolidatedstock");
            params1.put("REPORTS_DIR",image);
            RepViewer.showReport("/reportfiles/consolidated_stock_statement.jasper",params1);
            }
            }
            else if(rdoTherapeutic.selected == true) {
            var params1  = new HashMap();
            if(txtFormulation.text.equals("")) {
            params1.put("therapeuticname","");
            }
            else {
            params1.put("therapeuticname",txtFormulation.rawText.trim());
            }
            insRep();
            panel.visible = true;
            var image : String   = "{path}""/reportfiles/Medil Logo.png";                       
            params1.put("REPORTS_DIR",image);
            RepViewer.showReport("/reportfiles/therapeuticwise_stock.jasper",params1);            
            }
            commonController.queryExecution("CALL pro_userlog('Consolidated Stock','{button1.text}')");
            }

function insRep():Void{
    delete panel.content;
    insert RepViewer.getDesignRootNodes() into panel.content;
}
}


