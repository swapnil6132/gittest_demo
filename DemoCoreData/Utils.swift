//
//  Utils.swift
//  SwiftDemo
//
//  Created by Redspark on 19/12/17.
//  Copyright © 2017 Redspark. All rights reserved.
//

import UIKit
import Foundation
import SystemConfiguration
import ANLoader

class Utils: NSObject
{
    
    func isInternetAvailable() -> Bool
    {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags = SCNetworkReachabilityFlags()
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags)
        {
            return false
        }
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        return (isReachable && !needsConnection)
        
    }
    
    func isConnectedToNetwork() -> Bool
    {
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        return (isReachable && !needsConnection)
    }
    
    func showAlert(_ message: String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            }))
        Constants.appDelegate.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    func showVCAlert(_ message: String, viewController: UIViewController){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
        }))
        viewController.present(alert, animated: true, completion: nil)
    }

    func ShowLoader(){
        ANLoader.showLoading("Loading", disableUI: true)
        ANLoader.activityColor = .darkGray
        ANLoader.activityBackgroundColor = .white
        ANLoader.activityTextColor = .black
    }
    
    func HideLoader(){
        ANLoader.hide()
    }
    
    func resizeImage(image: UIImage) -> UIImage
    {
        var actualHeight = Float(image.size.height)
        var actualWidth = Float(image.size.width)
        let maxHeight: Float = 300.0
        let maxWidth: Float = 400.0
        var imgRatio: Float = actualWidth / actualHeight
        let maxRatio: Float = maxWidth / maxHeight
        let compressionQuality: Float = 0.8
        //50 percent compression
        if actualHeight > maxHeight || actualWidth > maxWidth {
            if imgRatio < maxRatio {
                //adjust width according to maxHeight
                imgRatio = maxHeight / actualHeight
                actualWidth = imgRatio * actualWidth
                actualHeight = maxHeight
            }
            else if imgRatio > maxRatio {
                //adjust height according to maxWidth
                imgRatio = maxWidth / actualWidth
                actualHeight = imgRatio * actualHeight
                actualWidth = maxWidth
            }
            else {
                actualHeight = maxHeight
                actualWidth = maxWidth
            }
        }
        let rect = CGRect(x: 0.0, y: 0.0, width: CGFloat(actualWidth), height: CGFloat(actualHeight))
        UIGraphicsBeginImageContext(rect.size)
        image.draw(in: rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        let imageData = img!.jpegData(compressionQuality: CGFloat(compressionQuality))
        UIGraphicsEndImageContext()
        return UIImage(data: imageData!) ?? UIImage()
    }
    
    
    func getloggedinUserDict() -> [AnyHashable: Any]?
    {
        let dictionaryData = UserDefaults.standard.object(forKey: "LoggedInUserDict") as? Data
        var dictionary: [AnyHashable: Any]? = nil
        if let aData = dictionaryData {
            dictionary = NSKeyedUnarchiver.unarchiveObject(with: aData) as? [AnyHashable: Any]
        }
        return dictionary
    }
    
    func height(forText text: String?, font: UIFont?, withinWidth width: CGFloat) -> CGFloat {
        
        let constraint = CGSize(width: width, height: 20000.0)
        var size: CGSize
        var boundingBox: CGSize? = nil
        if let aFont = font {
            boundingBox = text?.boundingRect(with: constraint, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: aFont], context: nil).size
        }
        size = CGSize(width: ceil((boundingBox?.width)!), height: ceil((boundingBox?.height)!))
        return size.height
    }
    
    func NavigationSetup(bgColor : UIColor , textColor : UIColor)  {
        
        UINavigationBar.appearance().barTintColor = bgColor
        UINavigationBar.appearance().tintColor = textColor
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:textColor]

    }
    
    func setImageRender(imgview : UIImageView, color: UIColor)  {
        
        let image = imgview.image?.withRenderingMode(.alwaysTemplate)
        imgview.image = image
        imgview.tintColor = color
        
    }
    
    func setButtonImageRender(button : UIButton, color: UIColor)  {
        
        let image = button.image(for: .normal)?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = color
        
    }
    
    func setBarButtonImageRender(button : UIBarButtonItem)  {
        
        let image = button.image!.withRenderingMode(.alwaysTemplate)
        button.image = image
        
    }
    
    
    func setButtonFont(button : UIButton, style : String, size : CGFloat)  {
        
        button.titleLabel?.font =  UIFont(name: style, size: size)
        
    }
    
    func setLabelFont(label : UILabel, style : String, size : CGFloat)  {
        
        label.font =  UIFont(name: style, size: size)
        
    }
    
    func setTextFieldFont(textfield : UITextField, style : String, size : CGFloat)  {
        
        textfield.font =  UIFont(name: style, size: size)
        
    }
    
    
    func getCurrentDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd/MM/yyyy"
        let currentDate = inputFormatter.string(from: Date())
        return currentDate
    }
  
}
