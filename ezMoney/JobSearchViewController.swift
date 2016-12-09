//
//  JobSearchViewController.swift
//  ezMoney
//
//  Created by Ian Li on 12/6/16.
//  Copyright © 2016 Ian Li. All rights reserved.
//

import UIKit

class JobSearchViewController: UIViewController {
    
    var searchHolder: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Search"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "cross"), style: .plain, target: self, action: #selector(JobSearchViewController.closeSearch(sender:)) )
        var positionSearch = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        var locationSearch = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        
        positionSearch = Helper.drawBottomLine(optionView: positionSearch)
        locationSearch = Helper.drawBottomLine(optionView: locationSearch)
        
        let imageView1 = UIImageView(frame: CGRect(x: 10, y: 15, width: 20, height: 20))
        imageView1.image = UIImage(named: "search")
        
        let imageView2 = UIImageView(frame: CGRect(x: 10, y: 15, width: 20, height: 20))
        imageView2.image = UIImage(named: "search_location")
        
        let searchField = UITextField(frame: CGRect(x: 40, y: 15, width: view.frame.width - 20, height: 20))
        let locationField = UITextField(frame: CGRect(x: 40, y: 15, width: view.frame.width - 20, height: 20))
        searchField.placeholder = "Search (e.g. cook, retail, hostess)"
        locationField.text = "90007"
        positionSearch.addSubview(imageView1)
        locationSearch.addSubview(imageView2)
        positionSearch.addSubview(searchField)
        locationSearch.addSubview(locationField)
        
        positionSearch.backgroundColor = UIColor.white
        locationSearch.backgroundColor = UIColor.white
        
        
        
        
    
        searchHolder = UIStackView(frame: CGRect(x: 0, y: -100, width: view.frame.width, height: 100))
        searchHolder.addArrangedSubview(positionSearch)
        searchHolder.addArrangedSubview(locationSearch)
        searchHolder.distribution = .fillEqually
        searchHolder.axis = .vertical
        searchHolder.alignment = .fill
        
        
        view.addSubview(searchHolder)
        
    
    }
    
    
    
    override func viewWillLayoutSubviews() {
        self.navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    override func viewDidAppear(_ animated: Bool) {
      
        
        UIView.animate(withDuration: 0.44, delay: 0, options: .curveLinear, animations: {
            
            self.searchHolder.frame.origin.y = 64
          
        }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeSearch(sender: UIBarButtonItem) {
       
        let controller = self.navigationController
        _ = controller?.popViewController(animated: true)
        
    }
}


