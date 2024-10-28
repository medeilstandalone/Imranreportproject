package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import java.util.*;
import java.text.SimpleDateFormat;
import java.io.File;
import javafx.scene.image.Image;
import com.vanuston.medeilreport.ui.calendar.view.FXCalendar;
import com.vanuston.medeilreport.ui.calendar.theme.GrayTheme;
import com.vanuston.medeilreport.util.DateUtils;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;

public class ReportPrescription
{
var panelW=bind CommonDeclare.panelFormW;
var panelH=bind CommonDeclare.panelFormH;
var seperatorW=bind CommonDeclare.seperatorW;
var Type2TextboxW=bind CommonDeclare.Type2TextboxW;
var Type3TextboxW=bind CommonDeclare.Type3TextboxW;
var C1LX=bind(38.88182973*panelW)/100;
var panelCalenderLX:Number;
var panelCalenderLY:Number;
var ImageCalenderLX=bind C1LX+125+Type3TextboxW+2 on replace{
    panelCalenderLX = ImageCalenderLX + 30.0;
    };
var botton2LX=bind CommonDeclare.botton32LX;
var bottonLY=bind CommonDeclare.panelButtonsLY;
var bottonImageW=bind CommonDeclare.bottonImageW;
var bottonImageH=bind CommonDeclare.bottonImageH;
var bottonW=bind CommonDeclare.bottonW;//bind (16.5184*panelW)/100;
var bottonH=bind CommonDeclare.bottonH;
var panelAlertLX= bind (panelW-500)/2;
var panelAlertLY= bind (panelH-150)/2;
var listH=0.0;

var dir1 = new File(".");
var path:String=dir1.getCanonicalFile().toString();
var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;
var sd:String;
var ed:String;

var sdf = new SimpleDateFormat("dd-MM-yyyy");
var sdf1 = new SimpleDateFormat("yyyy-MM-dd");
var frmFlag: Boolean=false;
var toFlag: Boolean=false;
var fxCalendar = FXCalendar {
    theme:GrayTheme{};
    };
var log:Logger=Logger.getLogger(ReportPrescription.class,"Reports");
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def FromPanel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutX: bind panelCalenderLX
        layoutY: bind panelCalenderLY
        blocksMouse: true
    }
    
    def __layoutInfo_listName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
        height: bind listH
    }
    public-read def listName: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: bind C1LX+125
        layoutY: 280.0
        layoutInfo: __layoutInfo_listName
        onKeyPressed: listNameOnKeyPressed
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
    
    def __layoutInfo_Name: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 220.0
    }
    public-read def Name: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-100
        layoutY: 255.0
        layoutInfo: __layoutInfo_Name
        text: "Enter Patient Name/Prescription ID"
        font: Arial_14
    }
    
    def __layoutInfo_txtName: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type2TextboxW
    }
    public-read def txtName: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 255.0
        layoutInfo: __layoutInfo_txtName
        onKeyPressed: txtNameOnKeyPressed
        onKeyReleased: txtNameOnKeyReleased
        text: ""
        font: Arial_14
    }
    
    def __layoutInfo_txtToDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtToDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: bind C1LX+125
        layoutY: 355.0
        layoutInfo: __layoutInfo_txtToDate
        onKeyPressed: txtToDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    def __layoutInfo_txtFromDate: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind Type3TextboxW
    }
    public-read def txtFromDate: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        managed: true
        layoutX: bind C1LX+125
        layoutY: 305.0
        layoutInfo: __layoutInfo_txtFromDate
        onKeyPressed: txtFromDateOnKeyPressed
        editable: false
        font: Arial_14
    }
    
    public-read def FromDate: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-100
        layoutY: 305.0
        text: "From Date"
        font: Arial_14
    }
    
    public-read def ToDate: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: true
        layoutX: bind C1LX-100
        layoutY: 355.0
        text: "To Date"
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
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def rdoAllergiesHealthConditions: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+250
        layoutY: 150.0
        onMouseClicked: rdoAllergiesHealthConditionsOnMouseClicked
        text: "Patient Allergies & Health Conditions"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoPatientSymptoms: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        visible: true
        disable: false
        opacity: 1.0
        layoutX: bind C1LX+250
        layoutY: 100.0
        onMouseClicked: rdoPatientSymptomsOnMouseClicked
        text: "Patient Symptoms"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoCompletePrescription: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 200.0
        onMouseClicked: rdoCompletePrescriptionOnMouseClicked
        text: "Complete Prescription"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoDoctorPrescription: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        visible: true
        layoutX: bind C1LX+50
        layoutY: 150.0
        onMouseClicked: rdoDoctorPrescriptionOnMouseClicked
        text: "Doctorwise Prescription"
        font: Arial_14
        toggleGroup: toggleGroup
    }
    
    public-read def rdoPatientPrescription: javafx.scene.control.RadioButton = javafx.scene.control.RadioButton {
        layoutX: bind C1LX+50
        layoutY: 100.0
        onKeyPressed: rdoPatientPrescriptionOnKeyPressed
        onMouseClicked: rdoPatientPrescriptionOnMouseClicked
        text: "Patientwise Prescription"
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
        text: "Prescription Summary"
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
        visible: true
        layoutX: bind C1LX+125+Type2TextboxW-2
        layoutY: 255.0
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
        onKeyReleased: buttonOnKeyReleased
        graphic: imageView2
        text: "Report [F10]"
        font: Arial_Bold_14
        action: buttonAction
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#FFFFFF") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#000000") }, ]
    }
    
    public-read def image: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Calender.png"
    }
    
    public-read def imgTo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        disable: false
        layoutX: bind ImageCalenderLX
        layoutY: 355.0
        onMouseClicked: imgToOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def imgFrom: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: bind ImageCalenderLX
        layoutY: 305.0
        onMouseClicked: imgFromOnMouseClicked
        blocksMouse: true
        image: image
        fitWidth: 25.0
        fitHeight: 25.0
    }
    
    public-read def PanelCustomerLedger: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        content: [ label, ToDate, FromDate, txtFromDate, txtToDate, button, txtName, Name, imgFrom, imgTo, FromPanel, listName, imageView, rdoPatientPrescription, rdoDoctorPrescription, rdoCompletePrescription, rdoPatientSymptoms, rdoAllergiesHealthConditions, panelAlert, panel, ]
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

    function rdoAllergiesHealthConditionsOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        Name.visible=true;
        Name.text="Enter Patient Name";
        FromDate.visible=true;
        ToDate.visible=true;
        txtFromDate.visible=true;
        txtToDate.visible=true;
        imgFrom.visible=true;
        imgTo.visible=true;
        txtName.visible=true;
        FromPanel.visible=false;
        imageView.visible=true;
        listName.visible=false;
     }

    function rdoPatientSymptomsOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
    rdoPatientPrescriptionOnMouseClicked(event);
    }


    function rdoCompletePrescriptionOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        FromDate.visible=true;
        ToDate.visible=true;
        txtFromDate.visible=true;
        txtToDate.visible=true;
        imgTo.visible=true;
        imgFrom.visible=true;
        txtName.visible=false;
        FromPanel.visible=false;
        imageView.visible=false;
        Name.visible=false;
        listName.visible=false;
      }

    function buttonOnKeyReleased(event: javafx.scene.input.KeyEvent): Void {
        if(event.code==KeyCode.VK_ENTER)
        {
        buttonAction();
        }
        else
        {
            shortcut(event.code);
        }
         }

    function rectangle2OnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        FromPanel.visible=false;
        listName.visible=false;
    }
    var KyEvent=bind CommonDeclare.currKyEvent on replace{
            if(CommonDeclare.currModule==7 and CommonDeclare.currRep.equals("MR6".trim())){
            shortcut(KyEvent.code);
            }
            }
    function rdoPatientPrescriptionOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function txtToDateOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        shortcut(event.code);
         }

    function txtFromDateOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
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
    def CustomAlert = CustomAlert {};
    function FXinfo(msg: String): Void {
        CustomAlert.ShowInfo("Prescription", msg);
        showAlertbox();
    }

    function showAlertbox(): Void {
        panelAlert.visible = true;
        delete  panelAlert.content;
        insert CustomAlert.getDesignRootNodes() into panelAlert.content;
        CustomAlert.show();
    }

    function imageViewOnMouseClicked (event: javafx.scene.input.MouseEvent): Void {
        getList(KeyCode.VK_DOWN,"");
    }

    function listNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        if(listName.focused)
        if (event.code == KeyCode.VK_DOWN)
        listName.selectFirstRow();
    }
     function getList(kcode: javafx.scene.input.KeyCode,dname:String) {
       var name: String[] = [];
       listName.visible = true;
       if(rdoDoctorPrescription.selected==true)
       {
       name =  commonController.DoctorName(dname);
       }
       else if(rdoPatientPrescription.selected==true or rdoPatientSymptoms.selected==true)
       {
       name =  commonController.prescriptionList(dname);
       }
       else if(rdoAllergiesHealthConditions.selected==true)
       {
       name =  commonController.CustomerName(dname);
       }
       listName.clearSelection();
       listName.items = name;
       var size = listName.items.size();
       listName.onKeyPressed = function(e) {
                    if (e.code == KeyCode.VK_ENTER) {
                        txtName.text = "{listName.selectedItem}";
                        listName.visible = false;
                        txtFromDate.requestFocus();
                    } else if (e.code == KeyCode.VK_DOWN) {
                        if (listName.selectedIndex == 0) {
                           listName.selectFirstRow();

                        }
                    } else if (e.code == KeyCode.VK_ESCAPE) {
                       listName.visible = false;
                        txtName.requestFocus();
                    }
                };
       listName.onMouseClicked = function(e) {
                   txtName.text = "{listName.selectedItem}";
                   listName.visible = false;
                    txtFromDate.requestFocus();
                }
        if(size<12)
         {
            listH=size*25;
            if(size>5)
                listH-=5;
            if(size==0)
                listName.visible=false;
         }else{
             listH = 295;
         }
        if (kcode == KeyCode.VK_ESCAPE or kcode == KeyCode.VK_TAB)
           listName.visible = false;
       txtName.requestFocus();
    }

    
   function txtNameOnKeyReleased (event: javafx.scene.input.KeyEvent): Void {
        if (event.code != KeyCode.VK_F10)
         {
         getList(event.code,txtName.rawText.trim());
            if (event.code == KeyCode.VK_DOWN)
                listName.requestFocus();
                listName.selectFirstRow();
    }
    else if (event.code == KeyCode.VK_ESCAPE or event.code == KeyCode.VK_TAB)
          {
            listName.visible = false;
           }

    }

    function txtNameOnKeyPressed (event: javafx.scene.input.KeyEvent): Void {
        if (event.code == KeyCode.VK_ENTER or event.code == KeyCode.VK_TAB) {
        txtFromDate.requestFocus();
        }shortcut(event.code);
    }

    function imgFromOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
      FromPanel.visible=true;
      toFlag=false;
      if(not frmFlag)
        {
            panelCalenderLX =imgFrom.layoutX + 30.0;
            panelCalenderLY =imgFrom.layoutY - 20.0;

            if(txtFromDate.rawText.trim()!=null)
            {
                var dat = txtFromDate.rawText.trim().split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);
            }
            else{
                var dat = DateUtils.now("dd-MM-yyyy").split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);

            }
            fxCalendar.visible=true;
            frmFlag=true;
        }else
        {
            fxCalendar.visible=false;

         }
         }

    function imgToOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        FromPanel.visible=true;
        frmFlag=false;
        if(not toFlag)
        {
            panelCalenderLX = imgTo.layoutX + 30.0;
            panelCalenderLY = imgTo.layoutY-30.0;
            if(txtToDate.rawText.trim()!=null)
            {
                var dat = txtToDate.rawText.trim().split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);
            }
            else{
                var dat = DateUtils.now("dd-MM-yyyy").split("-");
                var d = Integer.parseInt(dat[0]);
                var m = Integer.parseInt(dat[1])-1;
                var y = Integer.parseInt(dat[2]);
                fxCalendar.set(y,m,d);

            }
            fxCalendar.visible=true;
            toFlag=true;
        }else
        {
            fxCalendar.visible=false;
         }
     }

    function rdoPatientPrescriptionOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        Name.visible=true;
        Name.text="Enter Patient Name/Prescription ID";
        FromDate.visible=true;
        ToDate.visible=true;
        txtFromDate.visible=true;
        txtToDate.visible=true;
        imgFrom.visible=true;
        imgTo.visible=true;
        txtName.visible=true;
        FromPanel.visible=false;
        imageView.visible=true;
        listName.visible=false;
      }

    function rdoDoctorPrescriptionOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        Name.visible=true;
        Name.text="Enter Doctor Name";
        FromDate.visible=true;
        ToDate.visible=true;
        txtFromDate.visible=true;
        txtToDate.visible=true;
        imgFrom.visible=true;
        imgTo.visible=true;
        txtName.visible=true;
        FromPanel.visible=false;
        imageView.visible=true;
        listName.visible=false;
        
     }
         function insRep():Void{
        delete panel.content;
        insert RepViewer.getDesignRootNodes() into panel.content;
        }

     function buttonAction(): Void {        
        var image:String="{path}""/reportfiles/Medil Logo.png";
        var params  = new HashMap();        
        try
        {
        if(rdoPatientPrescription.selected == true or rdoPatientSymptoms.selected==true)
        {
        if (txtFromDate.text == null or txtFromDate.text.trim().length() == 0) {
            FXinfo("Please Enter the From Date");   
        } else if (txtToDate.text == null or txtToDate.text.trim().length() == 0) {
            FXinfo("Please Enter the To Date");
        } else if (txtName.text == null or txtName.text.trim().length() == 0) {
            FXinfo("Please Enter the Patient Name/Prescription ID");
        }
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        if(rdoPatientSymptoms.selected==true)
        {
        params.put("billmodel",'Symptoms');
        }
        else
        {
        params.put("billmodel",'Patient');
        }
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("name",txtName.text);
        insRep();
        panel.visible = true;
        if(rdoPatientSymptoms.selected==true)
        {
        RepViewer.showReport("/reportfiles/Patient_Symptoms.jasper",params);
        }
        else
        {
        RepViewer.showReport("/reportfiles/Doctor_Patient_Prescription.jasper",params);
        }

        }
        }
        else if(rdoDoctorPrescription.selected == true)
        {
        if (txtFromDate.text == null or txtFromDate.text.trim().length() == 0) {
            FXinfo("Please Enter the From Date");
        } else if (txtToDate.text == null or txtToDate.text.trim().length() == 0) {
            FXinfo("Please Enter the To Date");
        } else if (txtName.text == null or txtName.text.trim().length() == 0) {
            FXinfo("Please Enter the Doctor Name");
        }
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        params.put("billmodel",'Doctor');
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("name",txtName.text);
        insRep();
        panel.visible = true;
        RepViewer.showReport("/reportfiles/Doctor_Patient_Prescription.jasper",params);
        }
        }
        else if (rdoCompletePrescription.selected == true){
         if (txtFromDate.text == null or txtFromDate.text.trim().length() == 0) {
            FXinfo("Please Enter the From Date");
        } else if (txtToDate.text == null or txtToDate.text.trim().length() == 0) {
            FXinfo("Please Enter the To Date");

        } 
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        params.put("billmodel",'Complete');
        params.put("fromdate",sd);
        params.put("todate",ed);
        params.put("name",'');
        insRep();
        panel.visible = true;
        RepViewer.showReport("/reportfiles/Complete_Prescription.jasper",params);
        }
        }
        else if (rdoAllergiesHealthConditions.selected == true){
         if (txtFromDate.text == null or txtFromDate.text.trim().length() == 0) {
            FXinfo("Please Enter the From Date");
        } else if (txtToDate.text == null or txtToDate.text.trim().length() == 0) {
            FXinfo("Please Enter the To Date");
        }else if (txtName.text == null or txtName.text.trim().length() == 0) {
            FXinfo("Please Enter the Patient Name");
        }
        else
        {
        sd=sdf1.format(sdf.parse(txtFromDate.text));
        ed=sdf1.format(sdf.parse(txtToDate.text));
        params.put("custname",txtName.rawText.trim());
        params.put("fromdate",sd);
        params.put("todate",ed);
        insRep();
        panel.visible = true;
        RepViewer.showReport("/reportfiles/Patient_Allergies_Health_Conditions.jasper",params);
        }
        }
        commonController.queryExecution("CALL pro_userlog('Prescription Report','{button.text}')");
        }

   catch (e:Exception)
    {
        var msg:String="Class : ReportPrescription method : buttonAction()   = {e.getMessage()}";
        log.debug(msg);        
    }    
    }
    

public function Startup() : Void {
     fxCalendar.visible=false;
     FromPanel.content=[fxCalendar,];
}
var visit = bind fxCalendar.visible on replace{
    if(frmFlag and not visit)
    {
        getDate(0);
    }else if(toFlag and not visit)
    {
        getDate(1);
    }
 };
function getDate(i : Integer)
{
    if(i==0)
    {
                txtFromDate.text=fxCalendar.getSelectedDate();
                toFlag=false;
                frmFlag=false;
                txtFromDate.requestFocus();
    }
    else if(i==1)
    {
                txtToDate.text=fxCalendar.getSelectedDate();
                frmFlag=false;
                toFlag=false;
                txtToDate.requestFocus();
    }
  }
}

