//
//  AddViewController.swift
//  HouseApp
//
//  Created by Fred Wirjo on 10/8/17.
//  Copyright © 2017 opfred. All rights reserved.
//

import UIKit

class AddViewController : UIViewController, UITextFieldDelegate, UIScrollViewDelegate {
    
    // MARK: Properties
    
    // language set to chinese?
    var isChinese: Bool!
    
    // scrollView
    let scrollView = UIScrollView()
    
    // labels
    let nameLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let communityLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let namechLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bedroomLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    // textfields
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Enter name", attributes: [NSAttributedStringKey.font: UIFont(name: "ChalkboardSE-Light", size: 14)!])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let priceTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Enter price", attributes: [NSAttributedStringKey.font: UIFont(name: "ChalkboardSE-Light", size: 14)!])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()

    let communityTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Enter community", attributes: [NSAttributedStringKey.font: UIFont(name: "ChalkboardSE-Light", size: 14)!])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let namechTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Enter Chinese", attributes: [NSAttributedStringKey.font: UIFont(name: "ChalkboardSE-Light", size: 14)!])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let bedroomTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "Number of Bedrooms", attributes: [NSAttributedStringKey.font: UIFont(name: "ChalkboardSE-Light", size: 14)!])
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    // lines
    let nameLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let priceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let communityLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let namechLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let bedroomLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // buttons
    let nextButton : UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        button.setTitle("Next", for: .normal)
        button.backgroundColor = UIColor.black
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(selectHouseImage), for: .touchUpInside)
        return button
    }()
    
    @objc func selectHouseImage() {
        self.performSegue(withIdentifier: "selectImages", sender: self)
    }
    
    // prepareforSegue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let nextVC = segue.destination as? ImageViewController else {
            return
        }
        /*
        let house = House(id: 2, name: nameTextField.text ?? "", price: priceTextField.text ?? "", community: communityTextField.text ?? "", namech: namechTextField.text ?? "", imgURL: "")
        nextVC.house = house
         */
        
    }
    
    // MARK: TextField Delegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == nameTextField {
            nameTextField.text = textField.text
        } else if textField == priceTextField {
            priceTextField.text = textField.text
        } else if textField == communityTextField {
            communityTextField.text = textField.text
        } else if textField == namechTextField {
            namechTextField.text = textField.text
        } else if textField == bedroomTextField {
            bedroomTextField.text = textField.text
        } else {
            print("not a valid textfield.")
        }
    }
    
    // cancel button
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: ViewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set delegates
        nameTextField.delegate = self
        priceTextField.delegate = self
        communityTextField.delegate = self
        namechTextField.delegate = self
        
        // setup any language changes neccesary
        if isChinese {
            nameLabel.text = "房子的名字"
            priceLabel.text = "房價"
            communityLabel.text = "房子地區"
            namechLabel.text = "中文"
            bedroomLabel.text = "幾個房間"
            self.navigationItem.leftBarButtonItem?.title = "取消"
        } else {
            nameLabel.text = "What do you want to name your listing?"
            priceLabel.text = "Set a price"
            communityLabel.text = "Housing Community?"
            namechLabel.text = "Translation to Chinese"
            bedroomLabel.text = "Number of Bedrooms"
            self.navigationItem.leftBarButtonItem?.title = "Cancel"
        }
        
        // setup view layout
        setupViews()
        
        // setup keyboard observers
        keyboardObservers()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func keyboardObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            let edgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
            scrollView.contentInset = edgeInsets
            scrollView.scrollIndicatorInsets = edgeInsets
        }
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        if self.view.frame.origin.y != 0 {
            scrollView.contentInset = UIEdgeInsets.zero
            scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
            
        }
    }
    
    func setupViews() {
        
        //set scrollView properties
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1000)
        scrollView.frame = view.bounds
        
        // add scrollView to base View
        view.addSubview(scrollView)
        //next button
        view.addSubview(nextButton)
        
        // setup inputView to hold view contents
        let inputsView = UIView()
        inputsView.frame = CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height)
        
        // add inputView to scrollView
        scrollView.addSubview(inputsView)
        
        // add contents
        inputsView.addSubview(nameLabel)
        inputsView.addSubview(nameTextField)
        inputsView.addSubview(nameLine)
        inputsView.addSubview(priceLabel)
        inputsView.addSubview(priceTextField)
        inputsView.addSubview(priceLine)
        inputsView.addSubview(communityLabel)
        inputsView.addSubview(communityTextField)
        inputsView.addSubview(communityLine)
        inputsView.addSubview(namechLabel)
        inputsView.addSubview(namechTextField)
        inputsView.addSubview(namechLine)
        inputsView.addSubview(bedroomLabel)
        inputsView.addSubview(bedroomTextField)
        inputsView.addSubview(bedroomLine)
        
        // setup constraints for each content
        // need x, y, width, and height constraints
        nameLabel.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: inputsView.topAnchor).isActive = true
        nameLabel.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        nameTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        nameLine.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        nameLine.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        nameLine.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        priceLabel.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        priceLabel.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        priceLabel.topAnchor.constraint(equalTo: nameLine.bottomAnchor).isActive = true
        priceLabel.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        priceTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        priceTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        priceTextField.topAnchor.constraint(equalTo: priceLabel.bottomAnchor).isActive = true
        priceTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        priceLine.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        priceLine.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        priceLine.topAnchor.constraint(equalTo: priceTextField.bottomAnchor).isActive = true
        priceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        communityLabel.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        communityLabel.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        communityLabel.topAnchor.constraint(equalTo: priceLine.bottomAnchor).isActive = true
        communityLabel.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        communityTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        communityTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        communityTextField.topAnchor.constraint(equalTo: communityLabel.bottomAnchor).isActive = true
        communityTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        communityLine.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        communityLine.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        communityLine.topAnchor.constraint(equalTo: communityTextField.bottomAnchor).isActive = true
        communityLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        namechLabel.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        namechLabel.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        namechLabel.topAnchor.constraint(equalTo: communityLine.bottomAnchor).isActive = true
        namechLabel.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        namechTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        namechTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        namechTextField.topAnchor.constraint(equalTo: namechLabel.bottomAnchor).isActive = true
        namechTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        namechLine.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        namechLine.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        namechLine.topAnchor.constraint(equalTo: namechTextField.bottomAnchor).isActive = true
        namechLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        bedroomLabel.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        bedroomLabel.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        bedroomLabel.topAnchor.constraint(equalTo: namechLine.bottomAnchor).isActive = true
        bedroomLabel.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        bedroomTextField.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        bedroomTextField.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        bedroomTextField.topAnchor.constraint(equalTo: bedroomLabel.bottomAnchor).isActive = true
        bedroomTextField.heightAnchor.constraint(equalTo: inputsView.heightAnchor, multiplier: 1/10).isActive = true
        
        bedroomLine.leftAnchor.constraint(equalTo: inputsView.leftAnchor, constant: 12).isActive = true
        bedroomLine.widthAnchor.constraint(equalTo: inputsView.widthAnchor).isActive = true
        bedroomLine.topAnchor.constraint(equalTo: bedroomTextField.bottomAnchor).isActive = true
        bedroomLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
}
