//
//  Constants.swift
//  Bankable Solution
//
//  Created by Appster on 09/05/17.
//  Copyright © 2017 alm. All rights reserved.
//
//com.googleusercontent.apps.313192316404-ghum6vmr956psnjv486841c1ut1pbsvf gmail URL type
import Foundation
import UIKit

class Constants {
    
    public static let FONT = "Muli"
    public static let Roboto_Light = "Muli-Light"
    public static let FONT_Bold = "Muli-bold"
    
    public static let BUTTON_FONT_REGULAR_FUTURA = "Futura"
    public static let BUTTON_FONT_MEDIUM_FUTURA = "Futura-Medium"
    public static let BUTTON_FONT_BOLD_FUTURA = "Futura-bold"
    
    public static let LABEL_FONT_REGULAR_MONTSERRAT = "Montserrat-Regular"
    public static let LABEL_FONT_MEDIUM_MONTSERRAT = "Montserrat-Medium"
    public static let LABEL_FONT_BOLD_MONTSERRAT = "Montserrat-bold"
    
    public static let TEXTFIELD_FONT_REGULAR_HELVETICA = "HelveticaNeue"
    public static let TEXTFIELD_FONT_MEDIUM_HELVETICA = "HelveticaNeue-Medium"
    public static let TEXTFIELD_FONT_BOLD_HELVETICA = "HelveticaNeue-bold"
    
    public static let BUTTON_FONT_SIZE = 16.0
    public static let LABEL_FONT_SIZE = 14.0
    public static let TEXTFIELD_FONT_SIZE = 14.0
    
    
    public static let GooglePlaceKey = "AIzaSyCQGN2AbXc2f03qHTVgtJZ5gDcDrYBFNF8"
    public static let NetworkUnavailable = "Network unavailable. Please check your internet connectivity"
    
    public static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    public static let USERDEFAULTS = UserDefaults.standard
    
    public static let APPSTORE_ID = 1237620237
    
   // let IS_IPHONE = (UI_USER_INTERFACE_IDIOM() == .phone)
    
    public static let device_type = "ios" // iOS = 2
    
   // public static let BASE_URL = "https://www.ordafood.com/index.php?route=rest/"
//    public static let BASE_URL = "http://redsparktech.a2hosted.com/insidesales/"
    public static let BASE_URL = "https://redspark.a2hosted.com/insidesales/"
    
   // LOGIN API
    public static let LOGIN  = "/inrest/login"
    public static let FORGOTPASS = "forgot_password/sendmail"
    
    // HOME API
    public static let GET_BANNERS = "inrest/get_banners"
    public static let GET_HOTELS = "inrest/get_hotels"
    public static let GET_HOTEL_DETAILS = "inrest/get_hoteldetails"
    public static let GET_RESTAURANTS = "inrest/get_restaurants"
    public static let GET_RESTAURANTDETAILS = "inrest/get_restaurantdetails"
    public static let GET_SHOP_DETAILS = "inrest/get_shopdetails"
    public static let GET_TOUR_DETAILS = "inrest/get_tourdetails"
    public static let GET_OTHER_DETAILS = "inrest/get_otherdetails"
    public static let GET_FORTUNES = "inrest/get_fortunes"
    public static let GET_UPDATES = "inrest/get_updates"
    public static let GET_FORTUNE_DETAIL = "inrest/get_fortunedetails"
    public static let GET_UPDATE_DETAIL = "inrest/get_updatedetails"
    public static let TERMS_COND = "inrest/terms"
    public static let PRIVACY_POLICY = "inrest/privacy"
    public static let FAQ = "inrest/faq"
    public static let GET_HOME_DATA = "inrest/get_home_data"
    public static let GET_SECURITY_QUESTIONS = "/inrest/getquestions"
    public static let REGISTER = "/inrest/register"
    public static let RESET_PASSWORD = "/inrest/resetpassword"
    public static let LOGIN_CHECK = "/inrest/logincheckwithpassword"
    public static let CHECK_MOBILE = "/inrest/checkmobile"
    public static let UPDATE_MOBILE = "/inrest/updatemobile"
    public static let GET_TEAMHEAD_PROFILE = "/inrest/get_teamhead_profile"
    public static let EDIT_TEAMHEAD_PROFILE = "/inrest/edit_teamhead_profile"
    public static let ADD_MORE_STAFF = "/inrest/addmorestaff"
    public static let GET_STAFF_LIST = "/inrest/getstafflist"
    public static let EDIT_STAFF = "/inrest/editstaff"
    public static let CUSTOMERS = "/inrest/customers"
    public static let CUSTOMERS_BY_ID = "/inrest/customerbyid"
    public static let ADD_CUSTOMERS = "/inrest/addcustomer"
    public static let EDIT_CUSTOMERS = "/inrest/editcustomer"
    public static let GET_PLANS = "inrest/getplans"
    public static let CONTACT_US = "inrest/contactusdetail"
    public static let ADD_NEW_GAME = "inrest/addgame"
    public static let FORGOT_PASSWORD = "inrest/forgotpassword"
    public static let FORGOT_PASSWORD_ATTEMPT = "inrest/forgotpasswordattempt"
    public static let UPDATE_PASSWORD = "inrest/updatepassword"
    public static let PAUSE_GAME = "inrest/pausegame"
    public static let START_GAME = "inrest/startgame"
    public static let GET_GAME = "inrest/getgame"
    public static let GAME_LIST = "inrest/gamelisting"
    public static let ADD_CUST_TO_GAME = "inrest/addcustomertogame"
    public static let GAME_CUST_LIST = "inrest/getcustomersofgame"
    public static let FIRST_TIME_LOGIN = "inrest/firstimelogin"
    public static let MATCH_OTP = "inrest/matchotp"
    public static let EDIT_SALES_PROFILE = "inrest/editsalesprofile"
    public static let ADD_BOOKMARK = "inrest/addbookmark"
    public static let BOOKMARK_LIST = "inrest/bookmarklist"
    public static let CHECK_STAFF_VALID = "inrest/checkstaffvalid"
    public static let VALID_AMOUNT = "inrest/validamount"
    public static let VALID_MOBILE_TH = "inrest/validate_mobile"
    public static let VALID_ACCOUNT_ID_TH = "inrest/validate_account_id"
    public static let FEEDBACK = "inrest/feedback"
    public static let GET_CURRENCY = "inrest/get_currency"
    public static let CASINO_HOTEL_LIST = "inrest/casino_hotel_list"
    public static let SAVE_GAME_AFTER_UPDATE = "inrest/savegameafterupdate"
    public static let GET_EXPENSE_BY_CUSTOMER = "inrest/getexpensebycustomer"
    public static let ADD_EXPENSE = "inrest/addexpense"
    public static let EDIT_EXPENSE = "inrest/editexpense"
    public static let GET_EXPENSE_BY_ID = "inrest/getexpensebyid"
    public static let ROLLING_LIST = "inrest/rollinglist"
    public static let ADD_ROLLING_AMOUNT = "inrest/addrollingamount"
    public static let OTHER_SERVICE = "inrest/otherservice"
    public static let FINISH_GAME = "inrest/finishgame"
    public static let ADDING_DEBT = "inrest/addingdebt"
    public static let GET_DEBT_LIST = "inrest/getdebtslist"
    public static let GET_DEBT_BY_CUSTOMER = "inrest/getdebtsbycustomer"
    public static let LOCK_UNLOCK_EMPLOYEE = "inrest/lockunlock"
    public static let CUSTOMER_STATS = "inrest/customerstats"
    public static let STATS_HOME = "inrest/statshome"
    public static let EXPENSE_STATS = "inrest/expensestats"
    public static let CASHOUT_STATS = "inrest/cashoutstats"
    public static let LOGOUT = "inrest/logout"
    public static let RENEW_PLAN = "inrest/renewplan"
    public static let ACCOUNT_STATS = "inrest/accountstats"
    public static let GET_DATA_PLAN = "inrest/getdataplan"
    public static let TEAM_HEAD_PLANS = "inrest/teamheadplans"
    public static let GAME_ENTRY_LOG = "inrest/gameEntrylog"
    public static let DISTRIBUTE_PRINCIPAL = "inrest/distributeprincipal"
    public static let ROUND_REMARKS = "inrest/roundremarks"
    public static let LOCKUNLOCK_STATUS = "inrest/lockunlock_status"
    public static let POPUP_AD_BANNER = "inrest/pop_up_ad_banner"
    public static let GET_SWITCH_ACCOUNT_LIST = "inrest/getswitchaccountlist"
    public static let SWITCH_ACCOUNT_LOGIN = "inrest/switchaccountlogin"
    public static let GET_NOTIFICATION = "inrest/get_notification"
    public static let T_ACCEPT = "inrest/tcaccept"
    public static let GET_CUSTOMERS_NOT_IN_GAME = "inrest/getcustomersnotingame"
}
