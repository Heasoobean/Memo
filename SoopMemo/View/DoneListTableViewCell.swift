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
    
    var task: Task?
    
    @IBAction func switchChanged(_ sender: Any) {
        guard let task else { return }
        if taskSwitch.isOn {
//            textLabel?.text = nil
            taskSwitch.isOn.toggle()
            TaskList.completeTask(task: task, isCompleted: true)
        } else {
//            textLabel?.attributedText = nil
//            textLabel?.text = task.title
            taskSwitch.isOn.toggle()
            TaskList.completeTask(task: task, isCompleted: false)
        }
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
