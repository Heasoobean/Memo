//
//  HomeMainViewController.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/08.
//



import UIKit

class HomeMainViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var todoButton: UIButton!
    @IBOutlet weak var mymemoText: UITextView! 
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var catButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // 저장된 메모 불러오기
        if let savedMemo = UserDefaults.standard.string(forKey: "userMemo") {
            mymemoText.text = savedMemo
        }
        
        mymemoText.delegate = self
        
        // profileButton에 탭 제스처를 추가하여 버튼을 누를 때 화면을 전환합니다.
        let profileButtonTapGesture = UITapGestureRecognizer(target: self, action: #selector(profileButtonTapped))
        profileButton.addGestureRecognizer(profileButtonTapGesture)
        
        let catButtonTapGesture = UITapGestureRecognizer(target: self, action: #selector(catButtonTapped))
        catButton.addGestureRecognizer(catButtonTapGesture)
    }
    
    @objc func profileButtonTapped() {
        // profileViewController 클래스의 인스턴스 생성
        let profileVC = ProfileViewController()
        
        // 화면을 전환합니다.
        self.navigationController?.pushViewController(profileVC, animated: true)
    }
    @objc func catButtonTapped() {
        // CatViewController 클래스의 인스턴스 생성
        let catVC = CatViewController()
        
        // 화면을 전환합니다.
        self.navigationController?.pushViewController(catVC, animated: true)
    }
}









