
package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.io.File;
import javafx.scene.image.Image;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportDoctorList
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var Type1TextboxW=bind CommonDeclare.Type1TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var log:Logger=Logger.getLogger(ReportDoctorList.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var listH=0.0;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_listSpecialName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: bind listH
    }
    public-read def listSpecialName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 249.0
        layoutInfo: __layoutInfo_listSpecialName
        onKeyPressed: listSpecialNameOnKeyPressed
        items: [ "Item 1", "Item 2", "Item 3", ]
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
    
    def __layoutInfo_Specialization: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 133.0
    }
    public-read def Specialization: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 225.0
        layoutInfo: __layoutInfo_Specialization
        text: "Enter Specialization"
        font: Arial_14
    }
    
    def __layoutInfo_txtSpecial: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
    }
    public-read def txtSpecial: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 225.0
        layoutInfo: __layoutInfo_txtSpecial
        onKeyPressed: txtSpecialOnKeyPressed
        onKeyReleased: txtSpecialOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    public-read def Arial_Bold_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 14.0
    }
    
    public-read def Arial_Bold_16: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 16.0
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
    
    public-read def SpecialistList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 175.0
        onKeyPressed: SpecialistListOnKeyPressed
        onMouseClicked: SpecialistListOnMouseClicked
        text: "Specialist List"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def DoctorList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 125.0
        onKeyPressed: DoctorListOnKeyPressed
        onMouseClicked: DoctorListOnMouseClicked
        text: "Doctor List"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def Arial_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 25.0
    }
    
    def __layoutInfo_label: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind panelW
    }
    public-read def label: javafx.scene.control.Label = javafx.scene.control.Label {
        opacity: 1.0
        layoutX: 0.0
        layoutY: 1.0
        layoutInfo: __layoutInfo_label
        effect: null
        text: "Doctor  List"
        font: Arial_25
        hpos: javafx.geometry.HPos.CENTER
    }
    
    public-read def image5: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Clickdown.png"
    }
    
    def __layoutInfo_imageView: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 0.0
    }
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: false
        layoutX: bind C1LX+125+Type1TextboxW-2
        layoutY: 225.0
        layoutInfo: __layoutInfo_imageView
        onMouseClicked: imageViewOnMouseClicked
        blocksMouse: true
        image: image5
        fitWidth: 24.0
        fitHeight: 25.0
    }
    
    public-read def image6: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Report Doctor.png"
    }
    
    public-read def imageView2: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        image: image6
        fitWidth: bind bottonImageW
        fitHeight: bind bottonImageH
    }
    
    def __layoutInfo_button: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind bottonW+30
        height: bind bottonH
    }
    public-read def button: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: bind botton2LX+25
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button
        onKeyPressed: buttonOnKeyPressed
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: buttonAction
    }
    
    public-read def PanelCustomerLedger: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button, txtSpecial, Specialization, listSpecialName, imageView, DoctorList, SpecialistList, panel, ]
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def linearGradient2: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
    }
    
    public function getDesignRootNodes (): javafx.scene.Node[] {
        [ PanelCustomerLedger, ]
    }
    // </editor-fold>//GEN-END:main

    function rectangle2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        listSpecialName.visible=false;
         }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("MR7".trim())){
            shortcut(KyEvent.code);
            }
            }
    function buttonOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function SpecialistListOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function DoctorListOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }
    def RepViewer = ReportViewer{
        heading: bind label.text;
        };
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            buttonAction();
        }
        }
    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        
        getSpecialist(KeyCode.VK_DOWN,"");
    }

    function listSpecialNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if(listSpecialName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listSpecialName.selectFirstRow();
    }

    function txtSpecialOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code != KeyCode.VK_F10 or event.code != KeyCode.VK_ENTER)
         {
        getSpecialist(event.code,txtSpecial.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)
                listSpecialName.requestFocus();
                listSpecialName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listSpecialName.visible = false;
           }
}
    function txtSpecialOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            txtSpecial.requestFocus();
    }
        shortcut(event.code);
    }
function getSpecialist(kcode: javafx.scene.input.KeyCode,sname:String) {

var specialName: String[] = [];
       listSpecialName.visible = true;       
       specialName =  commonController.Specialist(sname);
       listSpecialName.clearSelection();
       listSpecialName.items = specialName;
       var size = listSpecialName.items.size();
       listSpecialName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtSpecial.text = "{listSpecialName.selectedItem}";
                        button.requestFocus();
                       listSpecialName.visible = false;
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listSpecialName.selectedIndex == 0) {
                           listSpecialName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                       listSpecialName.visible = false;
                        txtSpecial.requestFocus();
                    }
                };
       listSpecialName.onMouseClicked = function(e) {
                   txtSpecial.text = "{listSpecialName.selectedItem}";
                   button.requestFocus();
                   listSpecialName.visible = false;
                }
        if(size<10)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size==0)
                listSpecialName.visible=false;
         }else{
             listH = 245;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
           listSpecialName.visible = false;
           txtSpecial.requestFocus();
    }
    function SpecialistListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        Specialization.visible=true;
        txtSpecial.visible=true;
        imageView.visible=true;
          }

    function DoctorListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        Specialization.visible=false;
        txtSpecial.visible=false;
        imageView.visible=false;
        listSpecialName.visible=false;
        }
     function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
        }
     function buttonAction(): Void {
        insRep();
        panel.visible = true;
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();
        try
        {
        if(DoctorList.selected == true)
        {
        params.put("doctor",'doctor_name');
        params.put("special",'');
        params.put("REPORTS_DIR",image);
        }
        if(SpecialistList.selected == true and txtSpecial.text == null)
        {
        
        params.put("doctor",'specialist');
        params.put("special",'');
        params.put("REPORTS_DIR",image);
        }
        if(SpecialistList.selected == true and txtSpecial.text != null)
        {
        params.put("doctor",'specificspecialist');
        params.put("special",txtSpecial.text);
        params.put("REPORTS_DIR",image);
        }
        RepViewer.showReport("/reportfiles/doctorreport.jasper",params);
       commonController.queryExecution("CALL pro_userlog('Doctor List','{button.text}')");
        }
   catch (e:Exception)
    {
        var msg:String="Class : ReportDoctorList method : buttonAction()   = {e.getMessage()}";
        log.debug(msg);
        
    }
    }  

}
