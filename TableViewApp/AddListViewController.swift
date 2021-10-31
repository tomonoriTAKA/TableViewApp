//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 高橋知憲 on 2021/10/31.
//

import UIKit

class AddListViewController: UIViewController {

    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = [] //追加したリストを格納する配列
    
    //画面が読み込まれ、表示する前に一度だけ呼ばれる関数です
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: "add") != nil {
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
    }
    
    @IBAction func addTask(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        taskArray.append(addTextField.text!)
        userDefaults.set(taskArray, forKey: "add")
        self.navigationController?.popViewController(animated: true)
        
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
