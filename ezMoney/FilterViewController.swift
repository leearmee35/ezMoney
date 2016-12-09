//
//  FilterViewController.swift
//  ezMoney
//
//  Created by Ian Li on 12/6/16.
//  Copyright © 2016 Ian Li. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var FromLabel: UIButton!
    @IBOutlet weak var ToLabel: UIButton!
    @IBOutlet weak var distance: UILabel!
    
    var dateHandler = "From"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Filter"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "500 jobs", style: .plain, target: self, action: #selector(FilterViewController.endFilter(sender:)) )
        self.navigationItem.rightBarButtonItem?.setTitleTextAttributes([NSFontAttributeName:UIFont(
            name: "Arial",
            size: 14.0)!], for: .normal)
        
       
    }
    
    override func viewWillLayoutSubviews() {
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.backItem?.title = "Back"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func endFilter(sender: UIBarButtonItem) {
        let controller = self.navigationController
        _ = controller?.popViewController(animated: true)
    }
  
    @IBAction func setFromDate(_ sender: UIButton) {
        self.dateHandler = "From"
        UIView.animate(withDuration: 0.44, delay: 0.2, usingSpringWithDamping: 10.0, initialSpringVelocity: 10.0, options: .curveEaseInOut, animations: {
            self.datePicker.frame.origin.y = self.view.frame.height - self.datePicker.frame.height - 20
        }, completion: nil)
    }
    @IBAction func setToDate(_ sender: Any) {
        self.dateHandler = "To"
        UIView.animate(withDuration: 0.44, delay: 0.2, usingSpringWithDamping: 10.0, initialSpringVelocity: 10.0, options: .curveEaseInOut, animations: {
            self.datePicker.frame.origin.y = self.view.frame.height - self.datePicker.frame.height - 20
        }, completion: nil)
    }
  
    @IBAction func setDate(_ sender: UIDatePicker) {
        let date = datePicker.date.description.characters.split(separator: " ").map(String.init)[0]
        if(dateHandler == "From"){
            FromLabel.setTitle(date, for: .normal)
        } else {
            ToLabel.setTitle(date, for: .normal)
        }
        
    }
    
    @IBAction func setWorkingDistance(_ sender: UISlider) {
        distance.text = "\((Int)(sender.value)) miles"
    }

}

