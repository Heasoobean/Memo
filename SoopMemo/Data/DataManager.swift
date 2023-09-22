//
//  DataManager.swift
//  SoopMemo
//
//  Created by 허수빈 on 2023/08/08.
//

import Foundation
import CoreData

class DataManager {
    static let shared = DataManager()
    private init() {
        
    }
    
    var mainContenxt: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    
    var memoList = [Memo]()
    
    func fetchMemo() {
        let request: NSFetchRequest<Memo> = Memo.fetchRequest()
        
        let sortByDateDesc = NSSortDescriptor(key: "insertDate", ascending: false)
        request.sortDescriptors = [sortByDateDesc]
        
        do {
            memoList = try mainContenxt.fetch(request)
        } catch {
            print(error)
        }
    }
    
    func addNewMemo(_ memo: String?) {
        let newMemo = Memo(context: mainContenxt)
        newMemo.content = memo
        newMemo.insertDate = Date()
        
        memoList.insert(newMemo, at: 0)
        
        saveContext()
    }
    
    func deleteMemo(_ memo: Memo?) {
        if let memo = memo {
            mainContenxt.delete(memo)
            saveContext()
        }
    }
    
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
      
        let container = NSPersistentContainer(name: "SoopMemo")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func numberOfSections() -> Int {
        // 여기에 섹션 개수를 반환하는 로직을 구현해야 합니다.
        // 예시로 1을 반환하도록 설정합니다.
        return 1
    }
    
    func numberOfRows(in section: Int) -> Int {
        // 여기에 해당 섹션의 행 개수를 반환하는 로직을 구현해야 합니다.
        // 예시로 memoList의 개수를 반환하도록 설정합니다.
        return memoList.count
    }
}
