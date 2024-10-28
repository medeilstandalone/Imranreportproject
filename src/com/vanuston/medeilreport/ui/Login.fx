package com.vanuston.medeilreport.ui;
import java.lang.*;
import javafx.scene.layout.LayoutInfo;
import javafx.scene.control.Keystroke;
import javafx.scene.Scene;
import javafx.scene.input.KeyCode;
import com.vanuston.medeilreport.util.GetUserInfo;
import com.vanuston.medeilreport.util.GetINetDetails;
import com.vanuston.medeilreport.util.CommonDeclare;
import com.vanuston.medeilreport.util.DateUtils;
import com.vanuston.medeilreport.util.Logger;
import com.vanuston.medeilreport.util.LogReg;
import com.vanuston.medeilreport.util.GetProductInfo;
import com.vanuston.medeilreport.util.AdminAuth;
import com.vanuston.medeilreport.util.Theme;
import com.vanuston.medeilreport.util.Tools;
import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;
public var content : Scene;


public class Login {
    def MessageBox = MessageBox{};
    var log: Logger = Logger.getLogger(Login.class, "Home");
    var today:String = DateUtils.now("yyy-MM-dd");
    var ScreenWidth = bind CommonDeclare.ScreenWidth;
    var ScreenHeight = bind  CommonDeclare.ScreenHeight;
    var getProductInfo:GetProductInfo = new GetProductInfo();
    var getUserInfo:GetUserInfo = new GetUserInfo();
    var adminAuth:AdminAuth = new AdminAuth();
    public var fss : Boolean = false;
    public var uname: String = "" ;
    var listH : Float= 0.0;
    var listW : Float= 0.0;
    var ExitMedeil:Boolean=false;
    public var ses_id="";

    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:main
    public-read def rectangle: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        styleClass: "DialogBox"
        strokeWidth: 4.0
        width: bind ScreenWidth
        height: bind ScreenHeight
    }
    
    public-read def rectBgControlbuttons: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: 0.75
        layoutX: bind rectBgControlbuttonsLX
        layoutY: bind rectBgControlbuttonsLY
        fill: javafx.scene.paint.Color.WHITE
        width: 100.0
        height: 35.0
        arcWidth: 5.0
        arcHeight: 5.0
    }
    
    def __layoutInfo_separator: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 365.0
        height: 1.0
    }
    public-read def separator: javafx.scene.control.Separator = javafx.scene.control.Separator {
        layoutX: 80.0
        layoutY: 50.0
        layoutInfo: __layoutInfo_separator
    }
    
    def __layoutInfo_listUser: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind listW
        height: bind listH
    }
    public-read def listUser: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        opacity: 0.5
        layoutX: 413.0
        layoutY: 6.0
        layoutInfo: __layoutInfo_listUser
        items: null
    }
    
    public-read def loginProgress: javafx.scene.control.ProgressIndicator = javafx.scene.control.ProgressIndicator {
        visible: false
        layoutX: 380.0
        layoutY: 129.0
    }
    
    public-read def lblRemainingDays: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
    }
    
    public-read def lblRemainWarning: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: 180.0
        layoutY: 22.0
        graphic: lblRemainingDays
    }
    
    public-read def label5: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        text: "Label"
    }
    
    public-read def label6: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: 41.0
        layoutY: 78.0
        text: "Label"
    }
    
    public-read def label7: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        text: "Label"
    }
    
    public-read def label8: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: 49.0
        layoutY: 98.0
        text: "Label"
    }
    
    public-read def label9: javafx.scene.control.Label = javafx.scene.control.Label {
        visible: false
        layoutX: 38.0
        layoutY: 147.0
        text: "Label"
    }
    
    public-read def pwdReset: javafx.scene.control.PasswordBox = javafx.scene.control.PasswordBox {
        visible: false
        layoutX: 154.0
        layoutY: 98.0
    }
    
    public-read def pwdResetConfirm: javafx.scene.control.PasswordBox = javafx.scene.control.PasswordBox {
        visible: false
        layoutX: 181.0
        layoutY: 147.0
    }
    
    public-read def txtfgtUser: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: false
        layoutX: 137.0
        layoutY: 51.0
    }
    
    def __layoutInfo_listFUser: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: bind listW
        height: bind listH
    }
    public-read def listFUser: javafx.scene.control.ListView = javafx.scene.control.ListView {
        visible: false
        layoutX: 43.0
        layoutY: 211.0
        layoutInfo: __layoutInfo_listFUser
        items: null
    }
    
    public-read def panelfgtpwd: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: 61.0
        layoutY: 124.0
        content: [ label7, label8, label9, pwdReset, pwdResetConfirm, txtfgtUser, listFUser, ]
    }
    
    public-read def pwdAdmin: javafx.scene.control.PasswordBox = javafx.scene.control.PasswordBox {
        visible: false
        layoutX: 179.0
        layoutY: 84.0
    }
    
    public-read def separator2: javafx.scene.control.Separator = javafx.scene.control.Separator {
        visible: false
        layoutX: 28.0
        layoutY: 109.0
    }
    
    public-read def btnBack: javafx.scene.control.Button = javafx.scene.control.Button {
        visible: false
        layoutX: 86.0
        layoutY: 280.0
        text: "Button"
    }
    
    public-read def btnReset: javafx.scene.control.Button = javafx.scene.control.Button {
        visible: false
        layoutX: 187.0
        layoutY: 274.0
        text: "Button"
        action: btnResetAction
    }
    
    public-read def btnResetCancel: javafx.scene.control.Button = javafx.scene.control.Button {
        visible: false
        layoutX: 312.0
        layoutY: 274.0
        text: "Button"
        action: btnResetCancelAction
    }
    
    public-read def btnGo: javafx.scene.control.Button = javafx.scene.control.Button {
        visible: false
        text: "Button"
    }
    
    public-read def panelMsgBox: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: bind panelMsgBoxLX
        layoutY: bind panelMsgBoxLY
        blocksMouse: true
    }
    
    public-read def Violet: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.011764706
        green: 0.5019608
        blue: 0.7607843
    }
    
    public-read def linearGradient: javafx.scene.paint.LinearGradient = javafx.scene.paint.LinearGradient {
        stops: [ javafx.scene.paint.Stop { offset: 0.0, color: javafx.scene.paint.Color.web ("#ffffff") }, javafx.scene.paint.Stop { offset: 1.0, color: javafx.scene.paint.Color.web ("#e4f0f4") }, ]
    }
    
    public-read def Arial_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
    }
    
    def __layoutInfo_txtPassword: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: 25.0
    }
    public-read def txtPassword: javafx.scene.control.PasswordBox = javafx.scene.control.PasswordBox {
        layoutX: 180.0
        layoutY: 100.0
        layoutInfo: __layoutInfo_txtPassword
        onKeyPressed: txtPasswordOnKeyPressed
        text: ""
        promptText: "* * * * * * * * * *"
        selectOnFocus: true
        font: Arial_12
    }
    
    public-read def chkrememberpwd: javafx.scene.control.CheckBox = javafx.scene.control.CheckBox {
        visible: false
        layoutX: 181.0
        layoutY: 131.0
        styleClass: "check-box"
        text: "Remember me"
        font: Arial_12
    }
    
    public-read def Arial_Bold_12: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
    }
    
    public-read def Arial_14: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 14.0
    }
    
    def __layoutInfo_txtUser: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 200.0
        height: 25.0
    }
    public-read def txtUser: javafx.scene.control.TextBox = javafx.scene.control.TextBox {
        visible: true
        layoutX: 180.0
        layoutY: 65.0
        layoutInfo: __layoutInfo_txtUser
        onKeyPressed: txtUserOnKeyPressed
        text: ""
        promptText: ""
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
    
    public-read def Arial_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial "
        size: 18.0
    }
    
    public-read def Arial_Bold_18: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
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
    
    def __layoutInfo_btnCancel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 100.0
        height: 30.0
    }
    public-read def btnCancel: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: 300.0
        layoutY: 163.0
        layoutInfo: __layoutInfo_btnCancel
        styleClass: "button"
        onKeyPressed: btnCancelOnKeyPressed
        effect: reflectionEffect
        text: "Cancel"
        font: Arial_Bold_14
        action: btnCancelAction
    }
    
    def __layoutInfo_btnLogin: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 100.0
        height: 30.0
    }
    public-read def btnLogin: javafx.scene.control.Button = javafx.scene.control.Button {
        layoutX: 180.0
        layoutY: 163.0
        layoutInfo: __layoutInfo_btnLogin
        styleClass: "button"
        onKeyPressed: btnLoginOnKeyPressed
        effect: reflectionEffect
        text: "Login"
        font: Arial_Bold_14
        action: btnLoginAction
    }
    
    public-read def toggleGroup: javafx.scene.control.ToggleGroup = javafx.scene.control.ToggleGroup {
    }
    
    public-read def Arial_25: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial"
        size: 25.0
    }
    
    public-read def label: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 80.0
        layoutY: 13.0
        text: "Login"
        font: Arial_25
        textFill: javafx.scene.paint.Color.BLACK
    }
    
    public-read def DarkGray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.2
        green: 0.2
        blue: 0.2
    }
    
    public-read def rectForgotPasswordBg: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        visible: false
        layoutX: 13.0
        layoutY: 4.0
        styleClass: "DialogBox"
        stroke: DarkGray
        width: 500.0
        height: 350.0
    }
    
    public-read def panelForgotPassword: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: bind panelFgtPwdLX
        layoutY: bind panelFgtPwdLY
        blocksMouse: true
        content: [ rectForgotPasswordBg, label5, label6, panelfgtpwd, pwdAdmin, separator2, btnBack, btnReset, btnResetCancel, btnGo, ]
    }
    
    public-read def label3: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 100.0
        layoutY: 100.0
        text: "Password"
        font: Arial_14
        textFill: DarkGray
    }
    
    public-read def label2: javafx.scene.control.Label = javafx.scene.control.Label {
        layoutX: 100.0
        layoutY: 65.0
        text: "Username"
        font: Arial_14
        textFill: DarkGray
    }
    
    public-read def Green: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.4
        green: 0.6
    }
    
    public-read def lblEdition: javafx.scene.control.Label = javafx.scene.control.Label {
        opacity: 1.0
        layoutX: bind imgLogoLX+85.0
        layoutY: bind imgLogoLY+45.0
        text: ""
        font: Arial_Bold_14
        hpos: javafx.geometry.HPos.LEFT
        graphicHPos: javafx.geometry.HPos.CENTER
        textFill: Green
    }
    
    public-read def color: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 1.0
        green: 0.4
    }
    
    public-read def Gray: javafx.scene.paint.Color = javafx.scene.paint.Color {
        red: 0.4
        green: 0.4
        blue: 0.4
    }
    
    public-read def dropShadowEffect: javafx.scene.effect.DropShadow = javafx.scene.effect.DropShadow {
    }
    
    public-read def rectLoginBG: javafx.scene.shape.Rectangle = javafx.scene.shape.Rectangle {
        opacity: 1.0
        layoutX: 0.0
        styleClass: "LoginBox"
        effect: dropShadowEffect
        fill: linearGradient
        stroke: DarkGray
        strokeWidth: 4.0
        width: 500.0
        height: 225.0
        arcWidth: 10.0
        arcHeight: 10.0
    }
    
    public-read def lightingEffect: javafx.scene.effect.Lighting = javafx.scene.effect.Lighting {
    }
    
    public-read def imageUserLogin: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/UserLogin.png"
    }
    
    public-read def imageView: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: 8.0
        layoutY: 0.0
        image: imageUserLogin
        fitWidth: 102.0
        fitHeight: 90.0
    }
    
    public-read def panelLogin: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        visible: false
        layoutX: bind panelLoginLX
        layoutY: bind panelLoginLY
        onKeyPressed: panelLoginOnKeyPressedAtLogin
        blocksMouse: true
        content: [ rectLoginBG, label, label2, label3, txtUser, btnLogin, btnCancel, chkrememberpwd, txtPassword, imageView, separator, listUser, loginProgress, lblRemainWarning, ]
    }
    
    public-read def login: Keystroke = Keystroke {
        code: javafx.scene.input.KeyCode.VK_F2
    }
    
    public-read def imageMedilLogin: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}MedilTheme/{Theme.getStyle()}.png"
    }
    
    def __layoutInfo_imageBackground: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
        width: 0.0
    }
    public-read def imageBackground: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        visible: true
        layoutX: 0.0
        layoutY: 0.0
        layoutInfo: __layoutInfo_imageBackground
        onMouseClicked: imageBackgroundOnMouseClicked
        image: imageMedilLogin
        fitWidth: bind ScreenWidth
        fitHeight: bind ScreenHeight
        preserveRatio: false
    }
    
    public-read def imageLogin: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Login.png"
    }
    
    public-read def imageLogo: javafx.scene.image.Image = javafx.scene.image.Image {
        url: "{__DIR__}images/Medil Logo.png"
    }
    
    public-read def imgLogo: javafx.scene.image.ImageView = javafx.scene.image.ImageView {
        layoutX: bind imgLogoLX
        layoutY: bind imgLogoLY
        image: imageLogo
    }
    
    def __layoutInfo_panel: javafx.scene.layout.LayoutInfo = javafx.scene.layout.LayoutInfo {
    }
    public-read def panel: javafx.scene.layout.Panel = javafx.scene.layout.Panel {
        layoutInfo: __layoutInfo_panel
        blocksMouse: true
        content: [ rectangle, imageBackground, rectBgControlbuttons, lblEdition, imgLogo, panelLogin, panelForgotPassword, panelMsgBox, ]
    }
    
    public-read def Arial_Bold_40: javafx.scene.text.Font = javafx.scene.text.Font {
        name: "Arial Bold"
        size: 40.0
    }
    
    public-read def currentState: org.netbeans.javafx.design.DesignState = org.netbeans.javafx.design.DesignState {
        names: [ "Login", ]
        actual: 0
        timelines: [
            javafx.animation.Timeline {
                keyFrames: [
                    javafx.animation.KeyFrame {
                        time: 0ms
                        action: function() {
                            rectBgControlbuttons.opacity = 0.9;
                            rectLoginBG.opacity = 0.5;
                            rectLoginBG.effect = null;
                            rectLoginBG.fill = null;
                            txtUser.promptText = "press down key to select user";
                            btnLogin.styleClass = "button";
                            btnCancel.styleClass = "button";
                            btnCancel.action = btnCancelActionAtLogin;
                            imageView.layoutX = 10.0;
                            imageView.layoutY = 5.0;
                            imageView.fitWidth = 64.0;
                            imageView.fitHeight = 64.0;
                            listUser.opacity = 0.75;
                            lblRemainingDays.visible = true;
                            lblRemainingDays.font = Arial_Bold_40;
                            lblRemainWarning.visible = true;
                            lblRemainWarning.layoutX = 240.0;
                            lblRemainWarning.layoutY = 10.0;
                            lblRemainWarning.font = Arial_Bold_20;
                            lblRemainWarning.graphicHPos = javafx.geometry.HPos.RIGHT;
                            lblRemainWarning.textFill = Gray;
                            panelLogin.visible = true;
                            panelLogin.onKeyPressed = panelLoginOnKeyPressedAtLogin;
                            rectForgotPasswordBg.effect = null;
                            label5.font = null;
                            __layoutInfo_panel.width = 1024.0;
                            __layoutInfo_panel.height = 768.0;
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
     var panelMsgBoxLX=bind CommonDeclare.panelMsgBoxLX;
     var panelMsgBoxLY=bind CommonDeclare.panelMsgBoxLY;

    var panelLoginLX= bind (ScreenWidth-Login.rectLoginBG.width-((7.8125*ScreenWidth)/100));
    var panelLoginLY= bind ScreenHeight-Login.rectLoginBG.height-((13.02083333*ScreenHeight)/100);

    var panelFgtPwdLX=bind (ScreenWidth-Login.rectForgotPasswordBg.width-((7.8125*ScreenWidth)/100));
    var panelFgtPwdLY= bind (ScreenHeight-Login.rectForgotPasswordBg.height-((13.02083333*ScreenHeight)/100));

    var imgLogoLX=bind CommonDeclare.imgLogoLX;
    var imgLogoLY=bind CommonDeclare.imgLogoLY;
    var rectBgControlbuttonsLX= bind (ScreenWidth-100);
    var rectBgControlbuttonsLY=0.0;
    var commonController = RegistryFactory.getClientStub("CommonImplementStub") as CommonImplements;

    def CustomAlert = CustomAlert {};

    function showAlertbox(): Void {
        panelMsgBox.visible = true;
        delete  panelMsgBox.content;
        insert CustomAlert.getDesignRootNodes() into panelMsgBox.content;
        CustomAlert.show();
    }
    public var status:String="" on replace{
        if(not status.equals("")){
        CustomAlert.ShowInfo("Login", status);
        showAlertbox();
        status="";
        }
    }

    function btnCancelOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
      if(event.code==KeyCode.VK_ENTER){
        Msgbox("Confirm", "Are you sure you want to Exit Medeil? ");
      } else if(event.code==KeyCode.VK_TAB){
            txtUser.requestFocus();
            if(event.shiftDown){
                btnLogin.requestFocus();
            }
        }
    }
    function btnLoginOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        if(event.code==KeyCode.VK_ENTER) {
            userLogin();
        } else if(event.code==KeyCode.VK_TAB){
            btnCancel.requestFocus();
            if(event.shiftDown){
                txtPassword.requestFocus();
            }
        }
    }
    function imageBackgroundOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        listFUser.visible=false;
        listUser.visible=false;
         }
    function txtPasswordOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        listUser.visible = false;
         if (event.code == KeyCode.VK_ENTER) {
            userLogin();
         } else if(event.code == KeyCode.VK_TAB){
             btnLogin.requestFocus();
             if(event.shiftDown){
                 txtUser.requestFocus();
             }
         }
         }
    function btnCancelAction(): Void {
               Msgbox("Confirm", "Are you sure you want to Exit Medeil? ");
         }

    function btnCancelActionAtLogin(): Void {
         Msgbox("Confirm", "Are you sure you want to Exit Medeil? ");
         }

    function panelLoginOnKeyPressedAtLogin(event: javafx.scene.input.KeyEvent): Void {
            if(event.code == KeyCode.VK_F2)
            {
                userLogin();
            }
         }
    function btnResetAction(): Void {
     if(panelForgotPassword.visible)
        {
            var uname = txtfgtUser.rawText.trim();
            var pass = pwdReset.rawText.trim();
             if(not getUserInfo.checkName(uname))
             {
                 if(pass.equals(pwdResetConfirm.rawText.trim()))
                 {
                     var retVal = commonController.queryExecution("UPDATE user_info SET password='{pass}' WHERE user_name='{uname}'");
                     status="Password for {uname} has been modified successfully";
                     if(retVal==1)
                     {
                         currentState.actual = currentState.findIndex("Login");
                         txtUser.requestFocus();
                     }
                 }else{
                   status="Confirm password does not match with Password ..!";
                 }
             }else{
                 status="Invalid User name ..!";
             }
        }
    }

    function btnResetCancelAction(): Void {
        if(panelForgotPassword.visible)
        {
            txtfgtUser.text = "";
            pwdReset.text = "";
            pwdResetConfirm.text = "";
            txtfgtUser.requestFocus();
        }
    }
    function txtUserOnKeyPressed(event: javafx.scene.input.KeyEvent): Void {
        getUsers(event);
        if(event.code==KeyCode.VK_DOWN){
            listUser.visible = true;
            listUser.requestFocus();
            listUser.selectFirstRow();
        }else if(event.code==KeyCode.VK_ENTER or event.code==KeyCode.VK_TAB){
            listUser.visible = false;
            txtPassword.requestFocus();
            if(event.shiftDown){
                btnCancel.requestFocus();
            }
        }
    }

    function btnLoginAction(): Void {
         userLogin();
         }
        
 function getUsers(evt: javafx.scene.input.KeyEvent):Void{
    listH = 0.0 ;
    listW = 0.0 ;
    listUser.visible = true;

    listUser.layoutX =  txtUser.layoutX;
    listUser.layoutY =  txtUser.layoutY + txtUser.height- 2.5;

    listW =  txtUser.width ;
     listUser.items = getUserInfo.getUserName(txtUser.rawText.trim()).toArray();


    listUser.onKeyPressed = function(e){
        if(e.code==KeyCode.VK_ENTER or e.code==KeyCode.VK_TAB)
        {

               if (not listUser.selectedItem.equals(null)){
               txtUser.text = "{listUser.selectedItem}";
                listUser.visible = false;
                txtPassword.requestFocus();
}
        }
        if(e.code==KeyCode.VK_ESCAPE)
        {
            listUser.visible = false;
            txtUser.requestFocus();
        }
    }
    listUser.onMouseClicked= function(e){
            txtUser.text = "{listUser.selectedItem}";
            listUser.visible = false;
            txtPassword.requestFocus();
    }



    for(i in[1..listUser.items.size()])
    {
        listH+= 26.0;
    }
if(evt.code==KeyCode.VK_ESCAPE)
    listUser.visible = false;

}
 
 function  userLogin():Void {
    try{
        if (new LogReg().setExpireDate() >=1 ) {
            Msgbox("Warning", "Your system date has been changed. Please revert to the correct date and restart MEDEIL-E again.");
        } else if(new LogReg().loginCheck()<=0) {
            Msgbox("Warning", "Your system date has been changed. Please revert to the correct date and restart MEDEIL-L again.");
        } else { 
            if(getProductInfo.CheckActivate()==false and getProductInfo.configurated()==false and LogReg.getRemainingDays()<=0){
                Msgbox("Warning", "Error: Unable to launch Medeil.Please contact www.medeil.com . ");
            } else {
				uname = txtUser.rawText.trim();
				var pwd   = txtPassword.rawText.trim();
				var users:String = getUserInfo.getUsers(uname);
				if(uname!=null and pwd!=null and uname!="" and pwd!="") {
					if(uname.equalsIgnoreCase(users) and pwd.equals(getUserInfo.getPassword(uname))){
						LoginSuccess();
					} else if(uname.equalsIgnoreCase("MedeilAdmin") and pwd.equals(adminAuth .getAdminpwd())){
						LoginSuccess();
					} else { 
						status="Invalid User name or Password !";
						txtPassword.requestFocus();
						loginProgress.visible = false;
					}
				} else {
					status="Please enter a valid User name and Password to Login..!";
				}
			}
		}
	} catch(ex : Exception) {
		var msg: String = "Class : Login Method : userLogin()   = {ex.getMessage()}";
		log.debug(msg);
    }
 }
function LoginSuccess():Void{
            CommonDeclare.user=uname;
            CommonDeclare.userType=getUserInfo.getUserType(uname);;
            CommonDeclare.tin=getUserInfo.getTIN();
            ResetAll();
            panel.visible=false;
            var lIP = GetINetDetails.getLocalIP();
            ses_id = commonController.getSessionID();
            var query = "CALL pro_userLogin('{uname}','{ses_id}', '{lIP}')";
            commonController.queryExecution(query);
            fss = true;
            //GetInformation.StockMaintenanceInsert(today);
}




public function ResetAll():Void{
    txtUser.requestFocus();
    txtUser.text="";
    txtPassword.text="";
    pwdAdmin.text="";
    txtfgtUser.text="";
    pwdReset.text="";
    pwdResetConfirm.text="";
    }

public function Msgbox(type:String,Message:String):Void{
    panelMsgBox.visible=true;
    delete panelMsgBox.content;
     MessageBox.MsgBox("Login",type,Message);
     insert MessageBox.getDesignRootNodes() into panelMsgBox.content;
     ExitMedeil=true;
}
 var msgOutput:Integer=bind MessageBox.msgboxOutput  on replace{
       if(msgOutput==1 and ExitMedeil==true){
            Tools.Reset_Reports_Launch();
            javafx.lang.FX.exit();
     }
 }
    public function callLogin():Void {        
        currentState.actual = currentState.findIndex("Login");
        panel.visible=true;
        txtUser.requestFocus();
    }
    public function Startup():Void {
//        panel.visible=false;
        var RDays=LogReg.getRemainingDays();
        if(RDays>0 and getProductInfo.getStatus().equals("Trial")){
            lblRemainWarning.text="Trial Days Left :";
            lblRemainingDays.text="{RDays}";
        }
    }
    


}
