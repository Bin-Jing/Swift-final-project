//
//  ViewController.swift
//  AAA
//
//  Created by CGLAB on 2017/5/17.
//  Copyright © 2017年 MAP_First. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func play(_ sender: Any) {
        //var width:CGFloat = textContent.frame.size.width;
        //var page :NSInteger = (textContent.contentOffset.x + (0.5 * width))/width;
        //self.scrollToPage(page: 2, animated: true)
    }
    
    
    
    
//    func scrollToPage(page: Int, animated: Bool) {
//        //CGRect frame = textcon.frame;
//        //textContent.frame
//        /*var frame: CGRect = self.textContent.frame
//        frame.origin.x = frame.size.width * CGFloat(page);
//        frame.origin.y = 0;
//        self.textContent.scrollRectToVisible(frame, animated: animated)
//       */
//        var frame :CGRect = textContent.frame;
//        frame.origin.x = frame.size.width * 2;
//        frame.origin.y = 0;
//        [scrollRectToVisible:frame animated:YES];
//
//    }
    
    //未作功能 當退出頁面時儲存目前讀到幾頁用
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    
    
    var fontSize:Double = 17.0
    @IBOutlet weak var textContent: UITextView!
    
    @IBOutlet weak var hideEditBtnOutlet: UIButton!
    @IBOutlet weak var editVeiw: UIView!
    func updateUIElements() {
        self.navigationItem.title = textUITableViewController.selectTitle
        self.textContent.text = textUITableViewController.selectText
        textContent.font = UIFont(name: "Charter",size: CGFloat(fontSize))
        fontAthelasOutlet.titleLabel?.font = UIFont(name: "Athelas",size: 17)
        fontCharterOutlet.titleLabel?.font = UIFont(name: "Charter", size: 17)
        fontSeravekOutlet.titleLabel?.font = UIFont(name: "Seravek", size: 17)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        self.updateUIElements()
        
    }
    
    
    
    
    
    //隱藏editView
    @IBAction func hideEditViewBtn(_ sender: Any) {
        if(editVeiw.isHidden == false){
            editVeiw.isHidden = true
            hideEditBtnOutlet.isHidden = true
        }
    }
    //字型
    @IBOutlet weak var fontAthelasOutlet: UIButton!
    
    @IBOutlet weak var fontCharterOutlet: UIButton!
    
    @IBOutlet weak var fontSeravekOutlet: UIButton!
    
    
    
    @IBAction func fontCharter(_ sender: Any) {
        textContent.font = UIFont(name: "Charter",size: CGFloat(fontSize))
    }
    
    @IBAction func fontAthelas(_ sender: Any) {
        textContent.font = UIFont(name: "Athelas",size: CGFloat(fontSize))
    }
    
    @IBAction func fontGeorgia(_ sender: Any) {
        textContent.font = UIFont(name: "Georgia",size: CGFloat(fontSize))
    }
    
    @IBAction func fontPalatino(_ sender: Any) {
        textContent.font = UIFont(name: "Palatino",size: CGFloat(fontSize))
    }
    @IBAction func fontSeravek(_ sender: Any) {
        textContent.font = UIFont(name: "Seravek",size: CGFloat(fontSize))
    }
    @IBAction func fontTimesRoman(_ sender: Any) {
        textContent.font = UIFont(name: "Times New Roman",size: CGFloat(fontSize))
    }
    
    //編輯按鈕
    @IBAction func editBtn(_ sender: Any) {

        if(editVeiw.isHidden){
            editVeiw.isHidden = false
            hideEditBtnOutlet.isHidden = false
        }else{
            editVeiw.isHidden = true
            hideEditBtnOutlet.isHidden = true
        }
    }
    //背景色
    @IBAction func BackgroundWhite(_ sender: Any) {
        textContent.backgroundColor = colorCahnge(rgbValue: 0xFFFFFF)
    }
    @IBAction func BackGroundCream(_ sender: Any) {
        textContent.backgroundColor = colorCahnge(rgbValue: 0xFFEE99)
    }
    
    //字體大小
    @IBAction func biggerFontSize(_ sender: Any) {
        if(fontSize >= 37){
            fontSize = 37
        }else{
            fontSize += 5
        }
        textContent.font = UIFont(name: (textContent.font?.fontName)!,size: CGFloat(fontSize))
    }
    
    
    
    @IBAction func smallerFontSize(_ sender: Any) {
        if(fontSize <= 12){
            fontSize = 12
        }else{
            fontSize -= 5
        }
        textContent.font = UIFont(name: (textContent.font?.fontName)!,size: CGFloat(fontSize))
    }
    
    //顏色處例
    func colorCahnge(rgbValue: UInt32)->UIColor{
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        return UIColor(red: red, green: green, blue: blue, alpha: CGFloat(1))
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

