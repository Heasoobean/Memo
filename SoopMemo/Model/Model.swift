//
//  Model.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/07.
//

import Foundation

class Memo {
    var content: String
    var insertDate: Date
    
    init(content: String) {
        self.content = content
        insertDate = Date()
    }
    
    static var dummyMemoList = [
        Memo(content: "Lorem Ipsum"),
        Memo(content: "Scbscribe")
    ]
}
