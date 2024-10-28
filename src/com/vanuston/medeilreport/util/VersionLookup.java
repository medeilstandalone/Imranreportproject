package com.vanuston.medeilreport.util;

import com.vanuston.medeilreport.client.RegistryFactory;
import com.vanuston.medeilreport.implementation.CommonImplements;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class VersionLookup {
static Logger log = Logger.getLogger(VersionLookup.class, "Utilities");

private HashMap getModules(String obj,String module) {
        HashMap privilage = new HashMap();
        try {
            GetProductInfo getProductInfo = new GetProductInfo();
            String version = getProductInfo.getStatus().toLowerCase();
            CommonImplements commonController = (CommonImplements) RegistryFactory.getClientStub("CommonImplementStub");
            privilage = commonController.getModules(version, obj, module);
        } catch (Exception ex) {
            String ss = "Class:VersionLookup  Method : getModules    Exception :" + ex.getMessage();
            log.debug(ss);
        }
        return privilage;
    }
    private List<Integer> getHashResult(String obj,String module,String[] form_list){
        List<Integer> lst=new ArrayList<Integer>();
        try {
        HashMap privilage = getModules(obj,module);        
        String modules_list[]=form_list;
        for (int i = 0;i < modules_list.length;i++ ){
            if(Integer.parseInt(privilage.get(modules_list[i]).toString())==1){
                lst.add(i,3);
            }else{
                lst.add(i,0);
            }
        }
        } catch (Exception ex) {
            String ss = "Class:VersionLookup  Method : getHashResult    Exception :" + ex.getMessage();
            log.debug(ss);
            ex.printStackTrace();
        }
        return lst ;
    }
    
    public List Sales_Report(){
        String modules_list[]={"Sales_Detail",
                               "Sales_Register",
                               "Sales_Return",
                               "Customer_Sales",
                               "Customer_Receipts",
                               "CancelledBill_List",
                               "DummyBill_List",
                               "Sales_Location",
                               "Prescription_List",
        };
        return getHashResult("Reports","Sales_Report", modules_list);
    }
    
    public List Purchase_Report(){
        String modules_list[]={"Purchase_Detail",
                               "Purchase_Register",
                               "PurchaseOrder_List",
                               "Purchase_Return",
                               "SentPurchase_Orders",
                               "Purchase_Margin",
                               "Purchase_Search",
        };
        return getHashResult("Reports","Purchase_Report", modules_list);
    }
    public List Product_Report(){
        String modules_list[]={"Product_Sales",
                               "ProductOffer_List",
                               "BannedDrug_List",
                               "Drug_Schedule",
                               "Product_Margin",
        };
        return getHashResult("Reports","Product_Report", modules_list);
    }
    public List Stock_Report(){
        String modules_list[]={"Consolidated_Stock",
                               "Current_Stock",
                               "Damaged_Stock",
                               "Expiry_Stock",
                               "ShortExpiry_List",
                               "Stock_Activity",
                               "ExpiryReturn_Stock",
        };
        return getHashResult("Reports","Stock_Report", modules_list);
    }
    public List StockAnalysis_Report(){
        String modules_list[]={"FastMoving_Items",
                               "SlowMoving_items",
                               "Minimum_Stock",
                               "OutofStock",
                               "Excessive_Stock",
                               "Immovable_Stock",
                               "Stock_Register"
        };
        return getHashResult("Reports","StockAnalysis_Report", modules_list);
    }
    public List Masters_Report(){
        String modules_list[]={"Manufacturer_List",
                               "Distributor_List",
                               "Distributor_Purchase",
                               "Distributor_Payments",
                               "Dist_Outstanding",
                               "Doctor_Charges",
                               "Doctor_List",
                               "Employee_List",
                               "Employee_salary",
                               "Hospital_List",
                               "User_Log",
                               "User_Log",
        };
        return getHashResult("Reports","Masters_Report", modules_list);
    }
    public List Financial_Report(){
       List<Integer> lst=new ArrayList<Integer>();
       lst.add(0,F_Report(Financial_Cash_Report()));
       lst.add(1,F_Report(Financial_Ledger_Report()));
       lst.add(2,F_Report(Financial_Note_Report()));
       lst.add(3,F_Report(Financial_PaymentReceipt_Report()));
       lst.add(4,F_Report(Financial_Statement_Report()));
       lst.add(5,F_Report(Financial_BankTxn_Report()));
       return lst;
    }
    public Integer F_Report(List<Integer> report){
       for (int i = 0;i <report.size();i++ ){
            if(report.get(i)!=0){
                return 1;
            }}
        return 0;
    }
        public List Financial_Cash_Report(){
        String modules_list[]={"Cash_Withdrawal",
                               "Daly_CashBook",
                               "Open_Close_Balance",
                               "Maintanance_costs",
        };
        return getHashResult("Reports","Financial_Report", modules_list);
    }
        public List Financial_Ledger_Report(){
        String modules_list[]={"Customer_Ledger",
                               "Distributor_Ledger",
        };
        return getHashResult("Reports","Financial_Report", modules_list);
    }
        public List Financial_Note_Report(){
        String modules_list[]={"Credit_Notes",
                               "Debit_Notes",
        };
        return getHashResult("Reports","Financial_Report", modules_list);
    }
        public List Financial_PaymentReceipt_Report(){
        String modules_list[]={"Payments",
                               "Payment_Transactions",
                               "Receipts",
                               "Receipt_Transactions",
        };
        return getHashResult("Reports","Financial_Report", modules_list);
    }
        public List Financial_Statement_Report(){
        String modules_list[]={"Cash_Flow",
                               "Balance_Sheet",
                               "ProfitandLoss",
                               "VAT",
        };
        return getHashResult("Reports","Financial_Report", modules_list);
        }
        public List Financial_BankTxn_Report(){
        String modules_list[]={"Complete_Summary",
                               "Accountwise_Summary",
                               "Account_Deposit",
                               "Account_Withdrawal",
                               "Cheque_Transactions",
                               "Card_Transactions",
        };
        return getHashResult("Reports","Financial_Report", modules_list);
    }
        public List CRM_Report(){
        String modules_list[]={"Customer_List",
                               "Cust_Outstanding",
                               "Complaint_List",
        };
        return getHashResult("Reports","CRM_Report", modules_list);
    }
}
