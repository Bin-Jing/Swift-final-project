//
//  textUITableViewController.swift
//  AAA
//
//  Created by Mac on 2017/5/20.
//  Copyright © 2017年 MAP_First. All rights reserved.
//

import UIKit

class textUITableViewController: UITableViewController {
    static var selectText:String = ""
    var noteTitles = RootViewController.books
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return self.noteTitles.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "textTitleCell", for: indexPath)
        let noteTitle = cell.viewWithTag(1000) as! UILabel//table cell的標頭
        noteTitle.text = self.noteTitles[indexPath.row] as String
        return cell
    }
    

    //使用者選擇的table欄位時紀錄選的是哪一欄
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectFile = noteTitles
        textUITableViewController.selectText = selectFile[indexPath.row]
        
    }
}
