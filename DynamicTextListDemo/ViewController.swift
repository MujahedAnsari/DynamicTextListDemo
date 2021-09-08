//
//  ViewController.swift
//  DynamicTextListDemo
//
//  Created by Mujahed Ansari on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    let dataArray = RowTextData.shared.dataArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RowTextCVCell", for: indexPath) as! RowTextCVCell
        cell.datatext_lbl.text = dataArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthsize = (dataArray[indexPath.row].count * 9)
        print(widthsize)
        return CGSize(width: widthsize, height: 50)
    }
}

class RowTextCVCell: UICollectionViewCell {
    @IBOutlet weak var datatext_lbl: UILabel!
    
}


struct RowTextData {
    static let shared = RowTextData()
    private init() {}
    
    let dataArray = ["Hi", "Hello", "I am Mujahed Ansari","Hello","iOS Developer", "Mujahed Ansari","Hi", "Hello", "I am Mujahed Ansari", "Mujahed Ansari", "Maruti Suzuki Swift price starts at ₹ 5.85 Lakh", "₹ 5.85 Lakh", "Sorted ride and handling", "Car"]
}
