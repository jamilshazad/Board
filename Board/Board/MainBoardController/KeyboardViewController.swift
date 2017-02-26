//
//  KeyboardViewController.swift
//  MainBoardController
//
//  Created by Muhammad Jamil on 22/02/2017.
//  Copyright © 2017 Shazad. All rights reserved.
//

import UIKit
private let reuseIdentifier = "CustomMenueCell"

class KeyboardViewController: UIInputViewController {

    @IBOutlet weak var uperMenueCollectionView : UICollectionView!
    
    @IBOutlet var nextKeyboardButton: UIButton!
    var heightConstraint: NSLayoutConstraint!

    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        // Add custom view sizing constraints here
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view?.addConstraint(self.heightConstraint)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
         loadInterface()
        
//        let controller = UperMenueCollectionViewController(nibName:"UperMenueCollectionViewController" , bundle:nil) as UperMenueCollectionViewController
//        addChildViewController(controller)
//        controller.view.frame = CGRect(x: 50.0, y: 70.0, width: 300.0, height: 40.0)
//        view.addSubview(controller.view)
//        controller.didMove(toParentViewController: self)
        // Register cell classes
        let nibName = UINib(nibName: "CustomCollectionViewCell", bundle:nil)
        uperMenueCollectionView!.register(nibName, forCellWithReuseIdentifier: reuseIdentifier)
       
        
        let height : CGFloat = 300
        
        self.heightConstraint = NSLayoutConstraint( item:view ?? 200, attribute:.height, relatedBy:.equal, toItem:nil, attribute:.notAnAttribute, multiplier:0.0, constant:height)
    
    }
    
    //MARK:loadInterface
    func loadInterface() {
        // load the nib file
        let nib = UINib(nibName: "KeyboardView", bundle: nil)
        let objects = nib.instantiate(withOwner: self, options: nil)
        view = objects[0] as! UIView;
        nextKeyboardButton.addTarget(self, action: #selector(UIInputViewController.advanceToNextInputMode), for: .touchUpInside)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
     }

}

extension KeyboardViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    
     func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 7
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCollectionViewCell
        cell.menueIcon.image = UIImage(named: "search")
        // Configure the cell
        
        return cell
    }
    
    
    
    
}
