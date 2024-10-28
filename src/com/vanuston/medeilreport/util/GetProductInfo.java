package com.vanuston.medeilreport.util;


import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;


public class GetProductInfo {

    public Integer install = 0;
    CommonImplements commonController;    
    DateUtils dutil = new DateUtils();
    static Logger log = Logger.getLogger(GetProductInfo.class, "Utilities");


public Integer getValidity(){
        Integer validity = 0;
        String query = "select validity from license_details";        
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            validity = commonController.getQueryWitCol(query, "validity");
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getValidity    Exception :" + ex + " Query :" + query;
            log.debug(ss);
        }        
        return validity;
    }


public String getStatus() {
        String Status = "";
        String query = "select mode from license_details";        
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            Status = commonController.getQueryValue(query);
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getStatus    Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return Status;
    }

public Integer getLicenceCount() {
        Integer cnt = 0;
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            cnt = commonController.selectCountQuryExe("select count(*) from license_details");
        } catch (Exception e) {
            log.debug("Method:getLicenceCount Exception:"+e.getMessage());
        }
        return cnt;
    }
public String getLicenceHolder() {
        String licenceTo = "";
        String query = "select lic_holder_name from license_details";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            licenceTo = commonController.getQueryValue(query);
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getLicenceHolder    Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return licenceTo;
    }

    public String getActivationCode() {
        String act_code = "";
        String query = "select act_code from license_details";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            act_code = commonController.getQueryValue(query);
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getLicenceHolder    Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return act_code;
    }


    public Integer getRemainingDays() {
        int RemainingDays = 0;
        String installedDate = null;
        try {
            installedDate = getInstallDate();
            int valid = getValidity();
            Date insdDate = dutil.chngeFormatStringToDate(installedDate);
            Date currDate = dutil.chngeFormatStringToDate(dutil.now("yyyy-MM-dd"));
            Long DaysUsed = currDate.getTime() - insdDate.getTime();
            DaysUsed /= (24 * 60 * 60 * 1000);
            RemainingDays = (valid - 1) - DaysUsed.intValue();
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getExpiryDate    Exception :" + ex;
            log.debug(ss);
        }
        return RemainingDays;
    }

    public String getInstallDate() {
        String date_time = "Nil";
        String query = "select date_time from license_details";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            date_time = commonController.getQueryValue(query);
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getInstallDate    Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return date_time;
    }

    public String getExpiryDate() {
        String date_time = null;
        String query = "select validity,date_time from license_details";
        try {
            int valid = getValidity();
            Date Expiry = dutil.chngeFormatStringToDate(getInstallDate());
            Calendar c = Calendar.getInstance();
            c.setTime(Expiry);
            c.add(Calendar.DATE, valid);
            date_time = dutil.changeFormatDate(c.getTime());
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : getExpiryDate    Exception :" + ex.getMessage() + " Query :" + query;
            log.debug(ss);
        }
        return date_time;
    }

public Boolean CheckActivate() {
        Boolean act = false;
        try {
            LogReg logR = new LogReg();
            Integer RemainingDays = logR.getRemainingDays();
            Integer getLice = getLicenceCount();
            if (getLice <= 0) {
                log.debug("Class:GetProductInfo   Licence details not available in database");
            } else {
                WinRegistry winReg = new WinRegistry();
                install = getLicenceCount();
                String mode = getStatus();
                String licence_holder = getLicenceHolder();
                String activation_code = getActivationCode();

                if (mode.equals("Trial")) {
                    if (RemainingDays >= 0) {
                        act = true;
                    }
                } else if (mode.equals("Professional") || mode.equals("Standard") || mode.equals("Express")) {
                    if (activation_code.equals("") || activation_code == null || licence_holder.equals("") || licence_holder == null) {
                        act = true;
                    } else {
                        ArrayList regVal = winReg.getValue();
                        if (regVal.get(0) == "NA") {
                            act = false;
                        } else {
                            if (activation_code.equals(winReg.convertHexToString(regVal.get(2).toString())) && licence_holder.equals(winReg.convertHexToString(regVal.get(3).toString()))) {
                                if (RemainingDays >= 0) {
                                 //   act = new CheckValid().isValid(licence_holder, activation_code);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo Method : CheckActivate    Exception " + ex.getMessage();
            log.debug(ss);
        }
        return act;
    }

    public Integer get_shop_flag_id() {
        Integer flag = 0;
        String query = "select flag_id from shop_information";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            flag = commonController.getQueryWitCol(query, "flag_id");
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : get_shop_flag_id    Exception :" + ex.getMessage();
            log.debug(ss);
        }
        return flag;
    }

    public Integer get_settings_flag_id() {
        Integer flag = 0;
        String query = "select flag_id from settings_config";
        try {
            commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            flag = commonController.getQueryWitCol(query, "flag_id");
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : get_settings_flag_id    Exception :" + ex.getMessage();
            log.debug(ss);
        }
        return flag;
    }

   public Boolean configurated() {
        Boolean result = false;
        try {
            if (get_shop_flag_id() == 1 && get_settings_flag_id() == 1 && install > 0) {
                result = true;
            }
        } catch (Exception ex) {
            String ss = "Class:GetProductInfo  Method : configurated    Exception :" + ex.getMessage();
            log.debug(ss);
        }
        return result;
    }

}
