//
//  HomeMainViewController.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/08.
//



//홈 화면에 버튼 스타일 지정. 그림자 준 것.
import UIKit

class HomeMainViewController: UIViewController {
    @IBOutlet weak var todoButton: UIButton!
    

    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoButton.layer.shadowColor = UIColor.black.cgColor // 색깔
        todoButton.layer.masksToBounds = false
        todoButton.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치조정
        todoButton.layer.shadowRadius = 5 // 반경
        todoButton.layer.shadowOpacity = 0.3
     
        doneButton.layer.shadowColor = UIColor.black.cgColor // 색깔
        doneButton.layer.masksToBounds = false
        doneButton.layer.shadowOffset = CGSize(width: 0, height: 4) // 위치조정
        doneButton.layer.shadowRadius = 5 // 반경
        doneButton.layer.shadowOpacity = 0.3
        
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
