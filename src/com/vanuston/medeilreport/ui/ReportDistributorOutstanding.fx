
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

public class ReportDistributorOutstanding
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var Type1TextboxW=bind CommonDeclare.Type1TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var log:Logger=Logger.getLogger(ReportDistributorOutstanding.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var listH=0.0;
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_listDistributorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: bind listH
    }
    public-read def listDistributorName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 249.0
        layoutInfo: __layoutInfo_listDistributorName
        onKeyPressed: listDistributorNameOnKeyPressed
        items: [ "Item 1", "Item 2", "Item 3", ]
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
    
    def __layoutInfo_DistributorName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 160.0
    }
    public-read def DistributorName: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 225.0
        layoutInfo: __layoutInfo_DistributorName
        text: "Enter Distributor Name"
        font: Arial_14
    }
    
    def __layoutInfo_DistName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
    }
    public-read def DistName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 225.0
        layoutInfo: __layoutInfo_DistName
        onKeyPressed: DistNameOnKeyPressed
        onKeyReleased: DistNameOnKeyReleased
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
    
    public-read def billWiseList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 73.0
        text: "Billwise Outstanding List"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def IndividualList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 175.0
        onMouseClicked: IndividualListOnMouseClicked
        text: "Individual List"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def CompleteList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 125.0
        onKeyPressed: CompleteListOnKeyPressed
        onMouseClicked: CompleteListOnMouseClicked
        text: "Complete List"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: false
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
        onMouseClicked: labelOnMouseClicked
        effect: null
        text: "Payment Outstanding Details by Distributor"
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
        layoutX: bind botton2LX+15
        layoutY: bind bottonLY
        layoutInfo: __layoutInfo_button
        onKeyPressed: buttonOnKeyPressed
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: buttonAction
    }
    
    public-read def PanelDistributorOutstanding: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button, DistName, DistributorName, listDistributorName, imageView, CompleteList, IndividualList, billWiseList, panelAlert, panel, ]
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
        [ PanelDistributorOutstanding, ]
    }
    // </editor-fold>//GEN-END:main

    function buttonOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
        }

    function rectangle2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        listDistributorName.visible=false;
         }

    function labelOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        listDistributorName.visible=false;
    }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("MR5".trim())){
            shortcut(KyEvent.code);
            }
            }
    

    function CompleteListOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }
    def RepViewer = ReportViewer{
        heading: bind label.text;
        };
    def CustomAlert=CustomAlert{};
    function showAlertbox():Void{
    panelAlert.visible=true;
    delete panelAlert.content;
    insert CustomAlert.getDesignRootNodes() into panelAlert.content;
    CustomAlert.show();
    }
    function FXinfo(msg:String):Void{
    CustomAlert.ShowInfo("Distributor Outstanding",msg);
    showAlertbox();
    }
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            buttonAction();
        }
        }
    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        
        getDistributor(KeyCode.VK_DOWN,"");
    }

    function listDistributorNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if(listDistributorName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listDistributorName.selectFirstRow();
    }

    function DistNameOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code != KeyCode.VK_F10 or event.code != KeyCode.VK_ENTER)
         {
        getDistributor(event.code,DistName.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)
                listDistributorName.requestFocus();
                listDistributorName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listDistributorName.visible = false;
            button.requestFocus();
           }
}
    function DistNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            DistName.requestFocus();
    }
        shortcut(event.code);
    }
function getDistributor(kcode: javafx.scene.input.KeyCode,dname:String) {

        var distName: String[] = [];
        listDistributorName.visible = true;
        distName =  commonController.DistributorName(dname);
        listDistributorName.clearSelection();
        listDistributorName.items = distName;
        var size =  listDistributorName.items.size();
        listDistributorName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        DistName.text = "{listDistributorName.selectedItem}";
                        listDistributorName.visible = false;
                        button.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listDistributorName.selectedIndex == 0) {
                            listDistributorName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listDistributorName.visible = false;
                        DistName.requestFocus();
                    }
                };
        listDistributorName.onMouseClicked = function(e) {
                    DistName.text = "{listDistributorName.selectedItem}";
                    listDistributorName.visible = false;
                    button.requestFocus();
                }
        if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listDistributorName.visible=false;
         }else{
             listH = 295;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listDistributorName.visible = false;
        DistName.requestFocus();
    }
    function IndividualListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        DistributorName.visible=true;
        DistName.visible=true;
        imageView.visible=true;
        DistName.requestFocus();
          }

    function CompleteListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        DistributorName.visible=false;
        DistName.visible=false;
        imageView.visible=false;
        listDistributorName.visible=false;
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
        if (IndividualList.selected==true and DistName.text == null)
        {
         FXinfo("Please Enter the Distributor Name");
        }
        else
        {
        try
        {
        if(CompleteList.selected == true)
        {
        params.put("list1",'entire_list');
        params.put("Distributor",'');
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/dist_os.jasper",params);
        }
        else if(IndividualList.selected == true and DistName.text != null)
        {
        params.put("list1",'individual_list');
        params.put("distributor",DistName.text);
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/dist_os.jasper",params);
        }
        else if(billWiseList.selected == true)
        {
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/dist_osbillwise.jasper",params);
        }
       commonController.queryExecution("CALL pro_userlog('Distributor Outstanding List','{button.text}')");
        }

   catch (e:Exception)
    {
        var msg:String="Class : ReportDistributorOutstanding method : buttonAction()   = {e.getMessage()}";
        log.debug(msg);
        
    }
    }
    }  

}
