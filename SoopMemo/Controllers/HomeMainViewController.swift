//
//  HomeMainViewController.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/08.
//



import UIKit

class HomeMainViewController: UIViewController {
    @IBOutlet weak var todoButton: UIButton!
    @IBOutlet weak var mymemoText: UITextView! 
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.sendSubviewToBack(backgroundImage)
        
        // 저장된 메모 불러오기
        if let savedMemo = UserDefaults.standard.string(forKey: "userMemo") {
            mymemoText.text = savedMemo
        }
        
             mymemoText.delegate = self
    }
}

extension HomeMainViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        // 메모가 변경되었을 때 호출되는 메서드
        // 변경된 메모를 UserDefaults에 저장
        UserDefaults.standard.set(textView.text, forKey: "userMemo")
    }
}









