//
//  DoneListTableViewCell.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/10.
//

import UIKit

class DoneListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var doneLabel: UILabel!
    
    @IBOutlet weak var taskSwitch: UISwitch!
    
    let memo = DataManager.shared.memoList
    var index = 0
    
    @IBAction func switchChanged(_ sender: Any) {
        memo[index].isCompleted = taskSwitch.isOn
    }
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
