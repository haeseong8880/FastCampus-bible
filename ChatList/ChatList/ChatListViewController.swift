//
//  ChatListViewController.swift
//  ChatList
//
//  Created by haeseongJung on 2022/05/27.
//

import UIKit

class ChatListViewController: UIViewController {
    
    var chatList: [Chat] = Chat.list
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        chatList = chatList.sorted(by: { $0.date.compare($1.date) == .orderedDescending })
    }
}

extension ChatListViewController: UICollectionViewDataSource,
                                  UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatListCollectionViewCell", for: indexPath) as? ChatListCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configure(with: chatList[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: 100)
    }
}
