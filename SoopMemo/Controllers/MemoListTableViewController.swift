//
//  MemoListTableViewController.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/08.
//

import UIKit

class MemoListTableViewController: UITableViewController {
    @IBOutlet weak var todoImageView: UIImageView!
    @IBOutlet weak var todoNavi: UINavigationItem!
    let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .short
        return f
    } ()
    
    //뷰 그려주는 부분
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DataManager.shared.fetchMemo()
        tableView.reloadData()
    }
    
    var token: NSObjectProtocol?
    
    deinit {
        if let token = token {
            NotificationCenter.default.removeObserver(token)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell, let indexPath =
            tableView.indexPath(for: cell) {
            if let vc = segue.destination as? DetailViewController {
                vc.memo = DataManager.shared.memoList[indexPath.row]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageUrl = URL(string: "https://ifh.cc/g/4Vmy0F.jpg") {
            // URLSession을 사용하여 이미지 다운로드
            URLSession.shared.dataTask(with: imageUrl) { [weak self] data, response, error in
                if let error = error {
                    print("Error downloading image: \(error)")
                    return
                }
                
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.todoImageView.image = image
                    }
                }
            }.resume()
        }
        
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
                    .foregroundColor: UIColor.white, // 변경할 색상 지정
                    .font: UIFont.boldSystemFont(ofSize: 24) // 변경할 폰트와 크기 지정
                ]
                navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        
        token = NotificationCenter.default.addObserver(forName: ComposeViewController.newMemoDidInsert, object: nil, queue: OperationQueue.main) {[weak self] (noti) in self?.tableView.reloadData()}
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return DataManager.shared.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.numberOfRows(in: section)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let target = DataManager.shared.memoList[indexPath.row]
        cell.textLabel?.text = target.content
        cell.detailTextLabel?.text = formatter.string(for: target.insertDate)
        
        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerViewIdentifier")
        // 섹션에 맞는 헤더 뷰 구성 코드 추가
        headerView?.textLabel?.text = "안녕"
        headerView?.textLabel?.textColor = UIColor.white

        
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0 // 헤더 뷰 높이 조정
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt editingStyleForRowAtindexPath: IndexPath) -> UITableViewCell.EditingStyle {
        
        return .delete
    }
    

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let target = DataManager.shared.memoList[indexPath.row]
            DataManager.shared.deleteMemo(target)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }    
    }
    


}
