//
//  ImageViewController.swift
//  HouseApp
//
//  Created by Fred Wirjo on 10/16/17.
//  Copyright © 2017 opfred. All rights reserved.
//

import UIKit

class ImageViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    
    // cell section insets
    let sectionInsets = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    
    // array of images for collection view cells
    var images = [UIImage]()
    
    // house passed from AddViewController
    var house: House!
    
    // imagePicker
    let imagePicker = UIImagePickerController()
    
    // save Button
    let nextButton : UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        button.setTitle("Save", for: .normal)
        button.backgroundColor = UIColor.black
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(save), for: .touchUpInside)
        return button
    }()
    
    // save button function
    @objc func save() {
        self.performSegue(withIdentifier: "unwindToHome", sender: self)
    }
     // MARK: PrepareForSegue
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     super.prepare(for: segue, sender: sender)

     // create POST request
     let postBody = ["id": house.id, "name": house.name, "price": house.price, "namech": house.namech, "imageurl": []] as [String: Any]
     let url = URL(string: "https://backend1239.herokuapp.com/api/createHouse")!
     var request = URLRequest(url: url)
     request.httpMethod = "POST"
     request.httpBody =  try? JSONSerialization.data(withJSONObject: postBody, options: [])
     let task = URLSession.shared.dataTask(with: request)
     task.resume()
     
     }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        let img = images[indexPath.row]
        cell.imageView.image = img
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(ImageCell.self, forCellWithReuseIdentifier: "ImageCell")
        
        // add default image to first cell
        let img = UIImage(named: "addImageDefault")!
        images.append(img)
        
        // setup imagePicker
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
        // setup nextButton
        view.addSubview(nextButton)
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
        // change back bar item
        self.navigationItem.backBarButtonItem?.title = ""
        self.navigationItem.title = "Add Images"
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow = 2
        let paddingSpace : CGFloat = sectionInsets.left * CGFloat(itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = CGFloat(availableWidth) / CGFloat(itemsPerRow)
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    // MARK: Image Picker Delegates
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // info dictionary always contains original image that was selected in the picker. It may also contain an edited version of that image, if one exists.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
    /*
        guard let selectedImageURL = info[UIImagePickerControllerImageURL] as? String else {
            return
        }
    */
        // add image to image array
        images.append(selectedImage)
        
        // add image URL to house
   //     house.imgURL = selectedImageURL
        
        // dismiss picker
        dismiss(animated: true, completion: nil)
        
        // reload view
        self.collectionView?.reloadData()
    }
}

class ImageCell : UICollectionViewCell {

    var imageView : UIImageView = {
        var img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
     
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
