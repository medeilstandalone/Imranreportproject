
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

public class ReportCustomerOutstanding
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
var log:Logger=Logger.getLogger(ReportCustomerOutstanding.class,"Reports");
var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var listH=0.0;

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    def __layoutInfo_listCustomerName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
        height: bind listH
    }
    public-read def listCustomerName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 249.0
        layoutInfo: __layoutInfo_listCustomerName
        onKeyPressed: listCustomerNameOnKeyPressed
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
    
    def __layoutInfo_CustomerName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 160.0
    }
    public-read def CustomerName: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: bind C1LX-50
        layoutY: 225.0
        layoutInfo: __layoutInfo_CustomerName
        text: "Enter Customer Name"
        font: Arial_14
    }
    
    def __layoutInfo_CustName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type1TextboxW
    }
    public-read def CustName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 225.0
        layoutInfo: __layoutInfo_CustName
        onKeyPressed: CustNameOnKeyPressed
        onKeyReleased: CustNameOnKeyReleased
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
    
    public-read def IndividualList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 175.0
        onMouseClicked: IndividualListOnMouseClicked
        text: "Individual Outstanding List"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def billWiseList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 80.0
        onKeyPressed: billWiseListOnKeyPressed
        text: "Billwise Outstanding List"
        font: Arial_14
        toggleGroup: toggleGroup
        selected: true
    }
    
    public-read def CompleteList: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 125.0
        onKeyPressed: CompleteListOnKeyPressed
        onMouseClicked: CompleteListOnMouseClicked
        text: "Complete Oustanding List"
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
        effect: null
        text: "Payment Outstanding Details by Customer"
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
    
    public-read def PanelCustomerOutstanding: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, button, CustName, CustomerName, listCustomerName, imageView, CompleteList, billWiseList, IndividualList, panelAlert, panel, ]
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
        [ PanelCustomerOutstanding, ]
    }
    // </editor-fold>//GEN-END:main

    

    function billWiseListOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

  

    function buttonOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }
   
    function rectangle2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        listCustomerName.visible=false;
         }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("CR2".trim())){
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
    CustomAlert.ShowInfo("Customer Outstanding",msg);
    showAlertbox();
    }
    public function shortcut(kcode:KeyCode): Void {
        if (kcode == CommonDeclare.repKey) {
            buttonAction();
        }
        }
    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        
        getCustomer(KeyCode.VK_DOWN,"");
    }

    function listCustomerNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if(listCustomerName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listCustomerName.selectFirstRow();
    }

    function CustNameOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code != KeyCode.VK_F10 or event.code != KeyCode.VK_ENTER)
         {
        getCustomer(event.code,CustName.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)
                listCustomerName.requestFocus();
                listCustomerName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listCustomerName.visible = false;            
           }
}
    function CustNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
            CustName.requestFocus();
    }
        shortcut(event.code);
    }
function getCustomer(kcode: javafx.scene.input.KeyCode,cname:String) {

        var custName: String[] = [];
        listCustomerName.visible = true;
        custName =  commonController.CustomerName(cname);
        listCustomerName.clearSelection();
        listCustomerName.items = custName;
        var size =  listCustomerName.items.size();
        listCustomerName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        CustName.text = "{listCustomerName.selectedItem}";
                        listCustomerName.visible = false;
                        button.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listCustomerName.selectedIndex == 0) {
                            listCustomerName.selectFirstRow();
                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                        listCustomerName.visible = false;
                        CustName.requestFocus();
                    }
                };
        listCustomerName.onMouseClicked = function(e) {
                    CustName.text = "{listCustomerName.selectedItem}";
                    listCustomerName.visible = false;
                    button.requestFocus();
                }
        if(size<10)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size == 0)
                listCustomerName.visible=false;
         }else{
             listH = 245;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
            listCustomerName.visible = false;
        CustName.requestFocus();
    }
    function IndividualListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        CustomerName.visible=true;
        CustName.visible=true;
        imageView.visible=true;
        CustName.requestFocus();
          }

    function CompleteListOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        
        CustomerName.visible=false;
        CustName.visible=false;
        imageView.visible=false;
        listCustomerName.visible=false;
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
        if (IndividualList.selected==true and CustName.text == null)
        {
         FXinfo("Please Enter the Customer Name");
        }
        else
        {
        try
        {
        if(billWiseList.selected == true)
        {                
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/cust_osbillwise.jasper",params);
        }
        else if(IndividualList.selected == true and CustName.text != null)
        {
        params.put("list1",'individual_list');
        params.put("customer",CustName.text);
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/cust_os.jasper",params);
        }
        if(CompleteList.selected == true)
        {
        params.put("list1",'entire_list');
        params.put("customer",'');
        params.put("REPORTS_DIR",image);
        RepViewer.showReport("/reportfiles/cust_os.jasper",params);
        }        
       commonController.queryExecution("CALL pro_userlog('Customer Outstanding List','{button.text}')");        
        }

   catch (e:Exception)
    {
        var msg:String="Class : ReportCustomerOutstanding method : buttonAction()   = {e.getMessage()}";
        log.debug(msg);
        
    }
    }
    }  

}
