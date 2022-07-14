//
//  TrophyTblClnCell.swift
//  LoyalFoundry
//
//  Created by cst on 05/07/22.
//

import UIKit

class TrophyTblClnCell: UITableViewCell {
    
    @IBOutlet weak var trophyCollnView: UICollectionView!
    
    var slides : [String] = []
    
    var currentPage = 0 {
        didSet{
            if currentPage == slides.count - 1 {
                
            }else{
                
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        trophyCollnView.delegate = self
        trophyCollnView.dataSource = self
        trophyCollnView.registerNib(nib: TrophyCllnCell.className)
        slides = ["1","2","3"]
        // Initialization code
    }
    
}

//MARK: class extension
extension TrophyTblClnCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: trophyCollnView.bounds.width, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = trophyCollnView.dequeueReusableCell(withReuseIdentifier: "TrophyCllnCell", for: indexPath) as! TrophyCllnCell
        cell.leftBtnn.addTarget(self, action: #selector(leftBtnScroll), for: .touchUpInside)
        cell.rightBtnn.addTarget(self, action: #selector(rightBtnScrol), for: .touchUpInside)
        return cell
    }
    
    @objc func rightBtnScrol(_ sender: UIButton){
        if currentPage == slides.count - 1
        {
            print("Go To The Next Page")
            
        }else{
            currentPage += 1
            let indexpath = IndexPath(item: currentPage, section: 0 )
            trophyCollnView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true )
            let contentOFset = CGFloat(floor(self.trophyCollnView.contentOffset.x + trophyCollnView.bounds.width) )
            let frame = CGRect(x: contentOFset, y: self.trophyCollnView.contentOffset.y, width: trophyCollnView.frame.width, height: trophyCollnView.frame.height)
            self.trophyCollnView.scrollRectToVisible(frame, animated: true)
            trophyCollnView.reloadData()
        }
        
    }
    
    @objc func leftBtnScroll(_ sender: UIButton){
        
        if currentPage == 0
        {
            print("Go To The back Page")
            
        }else{
            
            currentPage -= 1
            let indexpath = IndexPath(item: currentPage, section: 0 )
            trophyCollnView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true )
            let contentOFset = CGFloat(floor(self.trophyCollnView.contentOffset.x + trophyCollnView.bounds.width) )
            let frame = CGRect(x: contentOFset, y: self.trophyCollnView.contentOffset.y, width: trophyCollnView.frame.width, height: trophyCollnView.frame.height)
            self.trophyCollnView.scrollRectToVisible(frame, animated: true)
            trophyCollnView.reloadData()
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
    
}
