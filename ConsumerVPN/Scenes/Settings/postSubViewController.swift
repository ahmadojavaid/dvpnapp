//
//  postSubViewController.swift
//  DorkVPN
//
//  Created by Jobesk Inc on 18/09/2019.
//  Copyright © 2019 NetProtect. All rights reserved.
//

import UIKit


import StoreKit

class postSubViewController: UIViewController, UIScrollViewDelegate, SKProductsRequestDelegate, SKPaymentTransactionObserver
{
    
    var tag = 0
    
    
    let logoimage : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "banner")
        img.contentMode = UIView.ContentMode.scaleAspectFill
        
        return img
    }()
    
    
    let activeview : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "bluesection")
        img.contentMode = UIView.ContentMode.scaleToFill
        
        return img
    }()
    
    let onemonthlabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "1 Month"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.systemFont(ofSize: 25)
        
        
        return label
    }()
    
    let greenline : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "blueline")
        img.contentMode = UIView.ContentMode.scaleToFill
        
        return img
    }()
    
    let greenboxprice : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "$11.99"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.boldSystemFont(ofSize: 35)
        
        
        return label
    }()
    
    let greenbtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "buybtn"), for: .normal)
        
        btn.addTarget(self, action: #selector(onemonth(_:)), for: .touchUpInside)
        btn.imageView?.contentMode = UIView.ContentMode.scaleToFill
        btn.tag = 1
        return btn
    }()
    
    
    let threemonthview : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "bluesection")
        img.contentMode = UIView.ContentMode.scaleToFill
        
        return img
    }()
    
    let threemonthlabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "3 Month"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.systemFont(ofSize: 25)
        
        
        return label
    }()
    
    let threemonthline : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "blueline")
        img.contentMode = UIView.ContentMode.scaleToFill
        
        return img
    }()
    
    let threemonthprice : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "$29.99"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.boldSystemFont(ofSize: 35)
        
        return label
    }()
    
    let threemonthbtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "buybtn"), for: .normal)
        btn.imageView?.contentMode = UIView.ContentMode.scaleToFill
        btn.addTarget(self, action: #selector(threemonth(_:)), for: .touchUpInside)
        btn.tag = 2
        return btn
    }()
    
    
    let oneyearthview : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "bluesection")
        img.contentMode = UIView.ContentMode.scaleToFill
        
        return img
    }()
    
    let  oneyearlabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "1 Year"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.systemFont(ofSize: 25)
        
        
        return label
    }()
    
    let  oneyearline : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "blueline")
        img.contentMode = UIView.ContentMode.scaleToFill
        
        return img
    }()
    
    let  oneyearprice : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "$79.99"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.boldSystemFont(ofSize: 35)
        
        
        return label
    }()
    
    let  oneyearbtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "buybtn"), for: .normal)
        btn.imageView?.contentMode = UIView.ContentMode.scaleToFill
        btn.addTarget(self, action: #selector(oneYear(_:)), for: .touchUpInside)
        btn.tag = 3
        return btn
    }()
    
    let oneYeardate : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Renewal Date: 11/09/2019"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        
        return label
    }()
    
    
    let greenboxdate : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Renewal Date: 11/09/2019"
        label.textAlignment = .center
        label.textColor = .white
        
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        
        return label
    }()
    let threemonthdate : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Renewal Date: 11/09/2019"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        
        return label
    }()
    let purchasedbtn : UIButton = {
        let btn = UIButton()
         btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Already have an acoount?", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(dismissme), for: .touchUpInside)
        return btn
    }()
    var product_id: NSString?
    var defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        //Jun 21, 2017, 7:18 PM
        
        
      
        let dateString = Date()
        let dateFromStringFormatter = DateFormatter()
        dateFromStringFormatter.dateFormat = "YYYY-MM-dd"
        
        let today = Date()
        let thirtyDaysBeforeToday = Calendar.current.date(byAdding: .day, value: +30, to: today)
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.none
        dateFormatter.dateStyle = DateFormatter.Style.short
        print( dateFormatter.string(from: thirtyDaysBeforeToday!))
        
        
        threemonthdate.isHidden  = true
        oneYeardate.isHidden = true
        greenboxdate.isHidden = true
        
        
        
        product_id = "YOUR_PRODUCT_ID"
        SKPaymentQueue.default().add(self)
        
        //Check if product is purchased
         UserDefaults.standard.set(nil, forKey: Theme.firstConnectKey)
        
        let Button = UIButton()
        Button.setTitle("Restore", for: .normal)
        Button.addTarget(self, action: #selector(restore), for: .touchUpInside)
        Button.tintColor = UIColor.black
        Button.setTitleColor(.red, for: .normal)
        let sharebarButton = UIBarButtonItem(customView: Button)
        self.navigationItem.rightBarButtonItem = sharebarButton
        
        
        let leftButton = UIButton()
        leftButton.setImage(UIImage(named: "back"), for: .normal)
        leftButton.addTarget(self, action: #selector(dismissme), for: .touchUpInside)
        leftButton.tintColor = UIColor.black
        leftButton.setTitleColor(.white, for: .normal)
        let leftButtonsharebarButton = UIBarButtonItem(customView: leftButton)
        self.navigationItem.leftBarButtonItem = leftButtonsharebarButton
      
        view.backgroundColor = UIColor.init(hexColorString: "#1F232F")
        setupNavigationItem()
        self.navigationController?.navigationBar.barTintColor = UIColor.init(hexColorString: "#212735")
        self.navigationController?.navigationBar.barStyle  = .blackTranslucent
        //        212735
        let scrollview = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        scrollview.delegate = self
      
        self.navigationController?.navigationBar.isTranslucent = false
        view.addSubview(scrollview)
        scrollview.addSubview(logoimage)
        scrollview.addSubview(activeview)
        activeview.addSubview(onemonthlabel)
        activeview.addSubview(greenline)
        activeview.addSubview(greenboxprice)
        scrollview.addSubview(greenbtn)
        activeview.addSubview(greenboxdate)
        scrollview.addSubview(threemonthview)
        threemonthview.addSubview(threemonthlabel)
        threemonthview.addSubview(threemonthline)
        threemonthview.addSubview(threemonthprice)
        threemonthview.addSubview(threemonthdate)
        scrollview.addSubview(threemonthbtn)
        scrollview.addSubview(oneyearthview)
        oneyearthview.addSubview(oneyearlabel)
        oneyearthview.addSubview(oneyearline)
        oneyearthview.addSubview(oneyearprice)
        scrollview.addSubview(oneyearbtn)
        oneyearthview.addSubview(oneYeardate)
        scrollview.addSubview(purchasedbtn)
        
        
        logoimage.topAnchor.constraint(equalTo: scrollview.topAnchor, constant: 30).isActive = true
        logoimage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoimage.widthAnchor.constraint(equalToConstant: 300).isActive = true
        logoimage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        activeview.topAnchor.constraint(equalTo: logoimage.bottomAnchor, constant: 30).isActive = true
        activeview.heightAnchor.constraint(equalToConstant: 250).isActive = true
        activeview.widthAnchor.constraint(equalToConstant: 250).isActive = true
        activeview.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        
        onemonthlabel.topAnchor.constraint(equalTo: activeview.topAnchor, constant: 20).isActive = true
        onemonthlabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        onemonthlabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        onemonthlabel.centerXAnchor.constraint(equalTo: activeview.centerXAnchor).isActive = true
        
        greenline.topAnchor.constraint(equalTo: onemonthlabel.bottomAnchor, constant: 10).isActive = true
        greenline.heightAnchor.constraint(equalToConstant: 1).isActive = true
        greenline.widthAnchor.constraint(equalTo: activeview.widthAnchor, multiplier: 0.80).isActive = true
        greenline.centerXAnchor.constraint(equalTo: activeview.centerXAnchor).isActive = true
        
        
        greenboxprice.topAnchor.constraint(equalTo: greenline.bottomAnchor, constant: 10).isActive = true
        greenboxprice.heightAnchor.constraint(equalToConstant: 50).isActive = true
        greenboxprice.widthAnchor.constraint(equalToConstant: 200).isActive = true
        greenboxprice.centerXAnchor.constraint(equalTo: activeview.centerXAnchor).isActive = true
        
        
        greenbtn.topAnchor.constraint(equalTo: greenboxprice.bottomAnchor, constant: 20).isActive = true
        greenbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        greenbtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        greenbtn.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        
        greenboxdate.bottomAnchor.constraint(equalTo: activeview.bottomAnchor, constant: -25).isActive = true
        greenboxdate.heightAnchor.constraint(equalToConstant: 10).isActive = true
        greenboxdate.widthAnchor.constraint(equalToConstant: 200).isActive = true
        greenboxdate.centerXAnchor.constraint(equalTo: activeview.centerXAnchor).isActive = true
        
        
        threemonthview.topAnchor.constraint(equalTo: activeview.bottomAnchor, constant: 30).isActive = true
        threemonthview.heightAnchor.constraint(equalToConstant: 250).isActive = true
        threemonthview.widthAnchor.constraint(equalToConstant: 250).isActive = true
        threemonthview.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        
        threemonthlabel.topAnchor.constraint(equalTo: threemonthview.topAnchor, constant: 20).isActive = true
        threemonthlabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        threemonthlabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        threemonthlabel.centerXAnchor.constraint(equalTo: threemonthview.centerXAnchor).isActive = true
        
        threemonthline.topAnchor.constraint(equalTo: threemonthlabel.bottomAnchor, constant: 10).isActive = true
        threemonthline.heightAnchor.constraint(equalToConstant: 1).isActive = true
        threemonthline.widthAnchor.constraint(equalTo: threemonthview.widthAnchor, multiplier: 0.80).isActive = true
        threemonthline.centerXAnchor.constraint(equalTo: threemonthview.centerXAnchor).isActive = true
        
        
        threemonthprice.topAnchor.constraint(equalTo: threemonthline.bottomAnchor, constant: 10).isActive = true
        threemonthprice.heightAnchor.constraint(equalToConstant: 50).isActive = true
        threemonthprice.widthAnchor.constraint(equalToConstant: 200).isActive = true
        threemonthprice.centerXAnchor.constraint(equalTo: threemonthview.centerXAnchor).isActive = true
        
        
        threemonthbtn.topAnchor.constraint(equalTo: threemonthprice.bottomAnchor, constant: 20).isActive = true
        threemonthbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        threemonthbtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        threemonthbtn.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        threemonthdate.bottomAnchor.constraint(equalTo: threemonthview.bottomAnchor, constant: -25).isActive = true
        threemonthdate.heightAnchor.constraint(equalToConstant: 10).isActive = true
        threemonthdate.widthAnchor.constraint(equalToConstant: 200).isActive = true
        threemonthdate.centerXAnchor.constraint(equalTo: threemonthview.centerXAnchor).isActive = true
        oneyearthview.topAnchor.constraint(equalTo: threemonthview.bottomAnchor, constant: 30).isActive = true
        oneyearthview.heightAnchor.constraint(equalToConstant: 250).isActive = true
        oneyearthview.widthAnchor.constraint(equalToConstant: 250).isActive = true
        oneyearthview.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        
        oneyearlabel.topAnchor.constraint(equalTo: oneyearthview.topAnchor, constant: 20).isActive = true
        oneyearlabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        oneyearlabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        oneyearlabel.centerXAnchor.constraint(equalTo: oneyearthview.centerXAnchor).isActive = true
        
        oneyearline.topAnchor.constraint(equalTo: oneyearlabel.bottomAnchor, constant: 10).isActive = true
        oneyearline.heightAnchor.constraint(equalToConstant: 1).isActive = true
        oneyearline.widthAnchor.constraint(equalTo: oneyearthview.widthAnchor, multiplier: 0.80).isActive = true
        oneyearline.centerXAnchor.constraint(equalTo: oneyearthview.centerXAnchor).isActive = true
        
        
        oneyearprice.topAnchor.constraint(equalTo: oneyearline.bottomAnchor, constant: 10).isActive = true
        oneyearprice.heightAnchor.constraint(equalToConstant: 50).isActive = true
        oneyearprice.widthAnchor.constraint(equalToConstant: 200).isActive = true
        oneyearprice.centerXAnchor.constraint(equalTo: oneyearthview.centerXAnchor).isActive = true
        
        
        oneyearbtn.topAnchor.constraint(equalTo: oneyearprice.bottomAnchor, constant: 20).isActive = true
        oneyearbtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        oneyearbtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        oneyearbtn.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        
        oneYeardate.bottomAnchor.constraint(equalTo: oneyearthview.bottomAnchor, constant: -25).isActive = true
        oneYeardate.heightAnchor.constraint(equalToConstant: 10).isActive = true
        oneYeardate.widthAnchor.constraint(equalToConstant: 200).isActive = true
        oneYeardate.centerXAnchor.constraint(equalTo: oneyearthview.centerXAnchor).isActive = true
        
        purchasedbtn.topAnchor.constraint(equalTo: oneyearthview.bottomAnchor, constant: 10).isActive = true
        purchasedbtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        purchasedbtn.widthAnchor.constraint(equalToConstant: 300).isActive = true
        purchasedbtn.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        
        
        if (defaults.bool(forKey: "purchased")){
            // Hide a view or show content depends on your requirement
            //        ove?rlayView.ishidden = true
            
            if defaults.string(forKey: "period") ?? "" == "one"
            {onemonthlay()
                
            }
                
            else    if defaults.string(forKey: "period") ?? "" == "three"
            {threemonthlay()}
            else    if defaults.string(forKey: "period") ?? "" == "twelve"
            {
                oneyearlay()
                
            }
            
        }
        
        
        scrollview.contentSize = CGSize(width: view.frame.width, height: 790 + 300)
        // Do any additional setup after loading the view.
    }
   @objc func restore()
    {
        SKPaymentQueue.default().add(self)
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
    
    
    
  @objc  func dismissme()
    {
        defaults.set(true, forKey: "purchased")
        self.dismiss(animated: true, completion: nil)
    }
    func onemonthlay()
    {
        
        
        
        
        if greenbtn.imageView?.frame.height ==      42.0
            
        {
            let today = Date()
            let thirtyDaysBeforeToday = Calendar.current.date(byAdding: .day, value: +30, to: today)
            
            
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = DateFormatter.Style.none
            dateFormatter.dateStyle = DateFormatter.Style.short
            print( dateFormatter.string(from: thirtyDaysBeforeToday!))
            
            greenboxdate.text = "Renewal Date: \(dateFormatter.string(from: thirtyDaysBeforeToday!))"
            greenboxdate.isHidden = false
            threemonthdate.isHidden = true
            oneYeardate.isHidden = true
            greenbtn.setImage(UIImage(named: "active"), for: .normal)
            greenline.image = UIImage(named: "greenline")
            activeview.image = UIImage(named: "greensection")
            
            
            threemonthbtn.setImage(UIImage(named: "upgradebtn"), for: .normal)
            threemonthline.image = UIImage(named: "blueline")
            threemonthview.image = UIImage(named: "bluesection")
            
            oneyearbtn.setImage(UIImage(named: "upgradebtn"), for: .normal)
            oneyearline.image = UIImage(named: "blueline")
            oneyearthview.image = UIImage(named: "bluesection")
            
        }
            
        else
        {
            
        }
        
    }
    
    func threemonthlay()
    {
        
        
        
        if threemonthbtn.imageView?.frame.height ==       42.0
            
        {
            
            let today = Date()
            let thirtyDaysBeforeToday = Calendar.current.date(byAdding: .day, value: +90, to: today)
            
            
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = DateFormatter.Style.none
            dateFormatter.dateStyle = DateFormatter.Style.short
            print( dateFormatter.string(from: thirtyDaysBeforeToday!))
            
            threemonthdate.text = "Renewal Date: \(dateFormatter.string(from: thirtyDaysBeforeToday!))"
            
            greenboxdate.isHidden = true
            threemonthdate.isHidden = false
            oneYeardate.isHidden = true
            threemonthbtn.setImage(UIImage(named: "active"), for: .normal)
            threemonthline.image = UIImage(named: "greenline")
            threemonthview.image = UIImage(named: "greensection")
            
            
            greenbtn.setImage(UIImage(named: "upgradebtn"), for: .normal)
            greenline.image = UIImage(named: "blueline")
            activeview.image = UIImage(named: "bluesection")
            
            oneyearbtn.setImage(UIImage(named: "upgradebtn"), for: .normal)
            oneyearline.image = UIImage(named: "blueline")
            oneyearthview.image = UIImage(named: "bluesection")
            
            
        }
            
        else
        {
            
        }
        
        
    }
    
    func oneyearlay()
        
    {
        
        if oneyearbtn.imageView?.frame.height ==       42.0
            
        {
            
            let today = Date()
            let thirtyDaysBeforeToday = Calendar.current.date(byAdding: .day, value: +365, to: today)
            
            
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = DateFormatter.Style.none
            dateFormatter.dateStyle = DateFormatter.Style.short
            print( dateFormatter.string(from: thirtyDaysBeforeToday!))
            
            oneYeardate.text = "Renewal Date: \(dateFormatter.string(from: thirtyDaysBeforeToday!))"
            greenboxdate.isHidden = true
            threemonthdate.isHidden = true
            oneYeardate.isHidden = false
            oneyearbtn.setImage(UIImage(named: "active"), for: .normal)
            oneyearline.image = UIImage(named: "greenline")
            oneyearthview.image = UIImage(named: "greensection")
            
            
            greenbtn.setImage(UIImage(named: "upgradebtn"), for: .normal)
            greenline.image = UIImage(named: "blueline")
            activeview.image = UIImage(named: "bluesection")
            
            threemonthbtn.setImage(UIImage(named: "upgradebtn"), for: .normal)
            threemonthline.image = UIImage(named: "blueline")
            threemonthview.image = UIImage(named: "bluesection")
            
            
        }
        else
        {
            
        }
        
    }
    @objc func    onemonth (_ Sender : UIButton)
    {
        
        self.view.loadingIndicator(show: true)
        self.tag = Sender.tag
        product_id = "DVPN_1M"
        SKPaymentQueue.default().add(self)
        
        //Check if product is purchased
        
        if (defaults.bool(forKey: "purchased")){
            // Hide a view or show content depends on your requirement
            //        ove?rlayView.ishidden = true
            
        } else if (!defaults.bool(forKey: "stonerPurchased")) {
            print("false")
        }
        
        
        print("About to fetch the products")
        
        // We check that we are allow to make the purchase.
        if (SKPaymentQueue.canMakePayments()) {
            var productID:NSSet = NSSet(object: self.product_id!);
            var productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>);
            productsRequest.delegate = self;
            productsRequest.start();
            print("Fetching Products");
            defaults.set("one", forKey: "period")
            
            print(defaults.string(forKey: "period"))
            
        } else {
            print("can't make purchases");
        }
        
    }
    
    @objc func threemonth(_ sender : UIButton)
    {
        
        
        
        self.view.loadingIndicator(show: true)
        
        self.tag = sender.tag
        
        product_id = "DVPN_3M"
        SKPaymentQueue.default().add(self)
        
        //Check if product is purchased
        
        if (defaults.bool(forKey: "purchased")){
            // Hide a view or show content depends on your requirement
            //        ove?rlayView.ishidden = true
        } else if (!defaults.bool(forKey: "stonerPurchased")) {
            print("false")
        }
        
        
        print("About to fetch the products")
        
        // We check that we are allow to make the purchase.
        if (SKPaymentQueue.canMakePayments()) {
            var productID:NSSet = NSSet(object: self.product_id!);
            var productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>);
            productsRequest.delegate = self;
            productsRequest.start();
            print("Fetching Products");
            defaults.set("three", forKey: "period")
        } else {
            print("can't make purchases");
        }
    }
    
    
    @objc func oneYear(_ sender : UIButton)
    {
        
        
        self.view.loadingIndicator(show: true)
        self.tag = sender.tag
        product_id = "DVPN_1Yr"
        SKPaymentQueue.default().add(self)
        
        //Check if product is purchased
        
        if (defaults.bool(forKey: "purchased")){
            // Hide a view or show content depends on your requirement
            //        ove?rlayView.ishidden = true
        } else if (!defaults.bool(forKey: "stonerPurchased")) {
            print("false")
        }
        
        
        print("About to fetch the products")
        
        // We check that we are allow to make the purchase.
        if (SKPaymentQueue.canMakePayments()) {
            var productID:NSSet = NSSet(object: self.product_id!);
            var productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as! Set<String>);
            productsRequest.delegate = self;
            productsRequest.start();
            print("Fetching Products");
            defaults.set("twelve", forKey: "period")
        } else {
            print("can't make purchases");
        }
    }
    func buyProduct(product: SKProduct) {
        
        print("Sending the Payment Request to Apple");
        var payment = SKPayment(product: product)
        SKPaymentQueue.default().add(payment);
    }
    
    
    
    
    func setupNavigationItem() {
        self.setupTitleView(title: "Subscription Plans")
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    func setupTitleView(title: String) {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = UIColor.white
        navigationItem.titleView = titleLabel
    }
    @objc func back()
    {
        if self.isModal
        {
            self.dismiss(animated: true, completion: nil)
            
        }
            
        else
            
            
        {
            
            self.navigationController?.popViewController(animated: true)
            
        }
        
        if let navigationController = self.navigationController, navigationController.isBeingPresented {
            
            
            
        }
        else{
            
        }
        
        
    }
    
    
    func productsRequest (_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        var count : Int = response.products.count
        if (count>0) {
            var validProducts = response.products
            var validProduct: SKProduct = response.products[0] as SKProduct
            if (validProduct.productIdentifier == String(self.product_id!)) {
                print(validProduct.localizedTitle)
                print(validProduct.localizedDescription)
                print(validProduct.price)
                
                defaults.set(validProduct.price, forKey: "price")
                
                
                buyProduct(product: validProduct);
            } else {
                print(validProduct.productIdentifier)
            }
        } else {
            print("nothing")
        }
    }
    
    private func request(request: SKRequest!, didFailWithError error: NSError!) {
        print("Error Fetching product information");
    }
    
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        print("Received Payment Transaction Response from Apple");
        
        
        for transaction:AnyObject in transactions {
            if let trans:SKPaymentTransaction = transaction as? SKPaymentTransaction{
                
                self.view.loadingIndicator(show: false)
                switch trans.transactionState {
                case .purchased:
                    
                    
                    
                    if self.tag == 1
                    {
                        print("Product Purchased");
                        SKPaymentQueue.default().finishTransaction(transaction as! SKPaymentTransaction)
                        defaults.set(true , forKey: "purchased")
                        onemonthlay()
                    }
                    else       if self.tag == 2
                        
                    {
                        print("Product Purchased");
                        SKPaymentQueue.default().finishTransaction(transaction as! SKPaymentTransaction)
                        defaults.set(true , forKey: "purchased")
                        threemonthlay()
                    }
                        
                    else       if self.tag == 3
                    {
                        print("Product Purchased");
                        SKPaymentQueue.default().finishTransaction(transaction as! SKPaymentTransaction)
                        defaults.set(true , forKey: "purchased")
                        oneyearlay()
                    }
                    
                    let alertController = UIAlertController(title: "Conratulations", message: "You have Purchased selected subscription successfully", preferredStyle: .alert)
                    let cancelAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alertController.addAction(cancelAction)
                    self.present(alertController, animated: true, completion: nil)
                    //                    ove.hidden = true
                    break;
                case .failed:
                    print("Purchased Failed");
                    let alertController = UIAlertController(title: "Invalid Treansection", message: "Your purchasing process has been canceled", preferredStyle: .alert)
                    let cancelAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alertController.addAction(cancelAction)
                    self.present(alertController, animated: true, completion: nil)
                    SKPaymentQueue.default().finishTransaction(transaction as! SKPaymentTransaction)
                    break;
                case .restored:
                    print("Already Purchased");
                    let alertController = UIAlertController(title: "Congratulations", message: "Your subscription has been restored", preferredStyle: .alert)
                    let cancelAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                    alertController.addAction(cancelAction)
                    self.present(alertController, animated: true, completion: nil)
                    SKPaymentQueue.default().restoreCompletedTransactions()
                default:
                    break;
                }
            }
        }
    }
    
    
    private func paymentQueue(queue: SKPaymentQueue!, updatedTransactions transactions: [AnyObject]!)    {
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
