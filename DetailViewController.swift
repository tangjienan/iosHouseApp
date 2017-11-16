//
//  DetailViewController.swift
//  HouseApp
//
//  Created by Fred Wirjo on 10/2/17.
//  Copyright © 2017 opfred. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {
    
    var viewHouse: House!
    
    var isChinese: Bool!
    
    let scrollView = UIScrollView()
    
    var images = [UIImage]()
    
    let houseImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "houseImage")!
        image.contentMode = .scaleToFill
        return image
    }()
    
    //name
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "name"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()
    
    // price
    
    let priceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let priceLabel : UILabel = {
        let label = UILabel()
        label.text = "price"
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let communityLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let communityLabel : UILabel = {
        let label = UILabel()
        label.text = "community"
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //beds
    let bedsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bedsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var baths : String?
    let bathsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bathsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var homesize: String?
    let homesizeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let homesizeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var lotsize : String?
    let lotsizeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lotsizeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var description : String?
    let housedescriptionLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let housedescriptionLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
   // var lastUpdate : String?
    let lastUpdateLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lastUpdateLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //var yearBuilt: String?
    let yearBuiltLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let yearBuiltLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //var status  : String?
    let statusLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let statusLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //var totalParking : String?
    let totalParkingLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let totalParkingLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var garageSpace : String?/
    let garageSpaceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let garageSpaceLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var schoolDistrict : String?
    let schoolDistrictLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let schoolDistrictLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var associationAmenities : String?
    let associationAmenitiesLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let associationAmenitiesLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var associationFee
    let associationFeeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let associationFeeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    var associationFeeFrequency : String?
    let associationFeeFrequencyLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let associationFeeFrequencyLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var commonWalls : String?
    let commonWallsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let commonWallsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var communityFeatures : String?
    let communityFeaturesLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let communityFeaturesLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var cooling : String?
    let coolingLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let coolingLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var country: String?
    let countryLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let countryLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var countyOrPrarish : String?
    let countyOrPrarishLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let countyOrPrarishLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var elevationUnits  :  String?
    let elevationUnitsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let elevationUnitsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var fireplaceFeature : String?
    let fireplaceFeatureLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let fireplaceFeatureLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var floor : String?
    let floorLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let floorLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var heating : String?
    let heatingLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let heatingLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
///    var highschoolDistrict : String?
    let highschoolDistrictLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let highschoolDistrictLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var landLeaseYN : String?
    let landLeaseYNLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let landLeaseYNLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var laundryFeatures : String?
    let laundryFeaturesLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let laundryFeaturesLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var levels : String?
    let levelsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let levelsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var ListAgentAOR : String?
    let ListAgentAORLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let ListAgentAORLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//   var LivingAreaUnits : String?
    let LivingAreaUnitsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let LivingAreaUnitsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var lotFeatures : String?
    let lotFeaturesLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lotFeaturesLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var lotSizeSource : String?
    let lotSizeSourceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lotSizeSourceLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var lotsizeUnits :  String?
    let lotsizeUnitsLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lotsizeUnitsLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var majorChangeType : String?
    let majorChangeTypeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let majorChangeTypeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var MLSAreaMajor : String?
    let MLSAreaMajorLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let MLSAreaMajorLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var pricePerSquareFoot : String?
    let pricePerSquareFootLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let pricePerSquareFootLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var propertySubtype : String?
    let propertySubtypeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let propertySubtypeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var propertyType : String?
    let propertyTypeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let propertyTypeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var roomType : String?
    let roomTypeLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let roomTypeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var spaFeatures : String?
    let spaFeaturesLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let spaFeaturesLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 //   var standard : String?
    let standardLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let standardLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var stateOrProvince : String?
    let stateOrProvinceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let stateOrProvinceLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var streetSuffix : String?
    let streetSuffixLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let streetSuffixLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var view : String?
    let viewLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var waterSource : String?
    let waterSourceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let waterSourceLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    var yearBuiltSource : String?
    let yearBuiltSourceLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let yearBuiltSourceLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    
    @IBAction func editOrDelete(_ sender: UIBarButtonItem) {
        /*
        // create an instance of UIAlertController.
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        let editAction = UIAlertAction(title: "Edit", style: .default, handler: editPost)
        alertController.addAction(editAction)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: deletePost)
        alertController.addAction(deleteAction)
        
        present(alertController, animated: true)
 */
    }
    
    func editPost(action: UIAlertAction) {
        
    }
    
    func deletePost(action: UIAlertAction) {
        let alertController = UIAlertController(title: "Delete this listing?", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
  //      let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: confirmDelete)
//     alertController.addAction(deleteAction)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default) { (action) in
            let id = String(self.viewHouse.id)
            let url = URL(string: "https://backend1239.herokuapp.com/api/deleteHouse/\(id)")!
            var request = URLRequest(url: url)
            request.httpMethod = "Delete"
            let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
                if error != nil {
                    print(error ?? "")
                }
            })
            task.resume()
            self.navigationController?.popViewController(animated: true)
        }
        alertController.addAction(deleteAction)
        
        present(alertController, animated: true)
    }
/*
    func confirmDelete(action: UIAlertAction) {
        let alertController = UIAlertController(title: "Post Deleted", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        present(alertController, animated: true)
        
        // DispatchTime represents a point in time relative to the default clock with nanosecond precision.
        let when = DispatchTime.now() + 1 // change 1 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            alertController.dismiss(animated: true, completion: nil)
        }

    }
 */

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        
        images.append(UIImage(named: "houseImage")!)
        
        if isChinese {
                   priceLabel.text = "价钱: $" + (viewHouse.price ?? "0")
        } else {
                   priceLabel.text = "Price: $" + (viewHouse.price ?? "0")
        }
        nameLabel.text = viewHouse.name ?? "null"
        nameLabel.font = UIFont(name: "ChalkboardSE-Bold", size: 20)
 
        
        if isChinese {
            communityLabel.text = "社区: " + (viewHouse.community ?? "null")
        } else {
            communityLabel.text = "Community: " + (viewHouse.community ?? "null")
        }
        
        
        //beds : String?,
        
        if isChinese {
           bedsLabel.text = "床: " + (viewHouse.beds ?? "0 beds")
        } else {
            bedsLabel.text = "Beds: " + (viewHouse.beds ?? "0 beds")
        }
        
        //baths : String?,
        
        if isChinese {
            bathsLabel.text = "浴室: " + (viewHouse.baths ?? "")
        } else {
            bathsLabel.text = "Baths: " + (viewHouse.baths ?? "")
        }
        
        
        
        
        //homesize: String?,
        
        if isChinese {
            homesizeLabel.text = "住户人数: " + (viewHouse.homesize ?? "")
        } else {
            homesizeLabel.text = "Home Size: " + (viewHouse.homesize ?? "")
        }
        
        
        //lotsize : String?,
        
        if isChinese {
            lotsizeLabel.text = "占地面积: " + (viewHouse.lotsize ?? "")
        } else {
            lotsizeLabel.text = "Lot Size: " + (viewHouse.lotsize ?? "")
        }
        
        
        //description : String?,
        
        if isChinese {
            housedescriptionLabel.text = "简介: " + (viewHouse.description ?? "")
        } else {
            housedescriptionLabel.text = "Description: " + (viewHouse.description ?? "")
        }
        
        
        //lastUpdate : String?,
        
        if isChinese {
            lastUpdateLabel.text = "最后更新: " + (viewHouse.lastUpdate ?? "")
        } else {
            lastUpdateLabel.text = "Last Updated: " + (viewHouse.lastUpdate ?? "")
        }
        
        
        //yearBuilt: String?,
        
        if isChinese {
            yearBuiltLabel.text = "建造年份: " + (viewHouse.yearBuilt ?? "")
        } else {
            yearBuiltLabel.text = "Year Built: " + (viewHouse.yearBuilt ?? "")
        }
        
        
        
        //status  : String?,
        
        if isChinese {
            statusLabel.text = "状态: " + (viewHouse.status ?? "")
        } else {
            statusLabel.text = "Status: " + (viewHouse.status ?? "")
        }
        
        
        //totalParking : String?,
        
        if isChinese {
            totalParkingLabel.text = "停车数: " + (viewHouse.totalParking ?? "")
        } else {
            totalParkingLabel.text = "Total Parking: " + (viewHouse.totalParking ?? "")
        }
        
        //garageSpace : String?,
        
        if isChinese {
            garageSpaceLabel.text = "车库空间: " + (viewHouse.garageSpace ?? "")
        } else {
            garageSpaceLabel.text = "Garage Space: " + (viewHouse.garageSpace ?? "")
        }
        
        //schoolDistrict : String?,
        
        if isChinese {
            schoolDistrictLabel.text = "学区: " + (viewHouse.schoolDistrict ?? "")
        } else {
            schoolDistrictLabel.text = "School District: " + (viewHouse.schoolDistrict ?? "")
        }
        
        
        //associationAmenities : String?,
       
        if isChinese {
             associationAmenitiesLabel.text = "Association Amenities: " + (viewHouse.associationAmenities ?? "")
        } else {
             associationAmenitiesLabel.text = "Association Amenities: " + (viewHouse.associationAmenities ?? "")
        }
        
        
        
        
        //associationFee : String?,
        
        if isChinese {
            associationFeeLabel.text = "管理费: " + (viewHouse.associationFee ?? "")
        } else {
            associationFeeLabel.text = "Association Fee: " + (viewHouse.associationFee ?? "")
        }
        
        
        
        //associationFeeFrequency : String?,
        
        if isChinese {
            associationFeeFrequencyLabel.text = "Association Fee Frequency: " + (viewHouse.associationFeeFrequency ?? "")
        } else {
            associationFeeFrequencyLabel.text = "Association Fee Frequency: " + (viewHouse.associationFeeFrequency ?? "")
        }
        
        
        //commonWalls : String?,
        
        if isChinese {
           commonWallsLabel.text = "界墙: " + (viewHouse.commonWalls ?? "")
        } else {
            commonWallsLabel.text = "Common Walls: " + (viewHouse.commonWalls ?? "")
        }
        
        //communityFeatures : String?,
       
        if isChinese {
             communityFeaturesLabel.text = "Community Features: " + (viewHouse.communityFeatures ?? "")
        } else {
             communityFeaturesLabel.text = "Community Features: " + (viewHouse.communityFeatures ?? "")
        }
        
        //cooling : String?,
        
        if isChinese {
            coolingLabel.text = "Cooling: " + (viewHouse.cooling ?? "")
        } else {
            coolingLabel.text = "Cooling: " + (viewHouse.cooling ?? "")
        }
        
        //country: String?,
       
        if isChinese {
             countryLabel.text = "国家: " + (viewHouse.country ?? "")
        } else {
             countryLabel.text = "Country: " + (viewHouse.country ?? "")
        }
        
        //countyOrPrarish : String?,
       
        if isChinese {
             countyOrPrarishLabel.text = "County or Parish: " + (viewHouse.countyOrPrarish ?? "")
        } else {
             countyOrPrarishLabel.text = "County or Parish: " + (viewHouse.countyOrPrarish ?? "")
        }
        
        
        
        
        //elevationUnits  :  String?,
       
        if isChinese {
             elevationUnitsLabel.text = "海拔: " + (viewHouse.elevationUnits ?? "")
        } else {
             elevationUnitsLabel.text = "Elevation: " + (viewHouse.elevationUnits ?? "")
        }
        
        
        
        
        
        //fireplaceFeature : String?,
       
        if isChinese {
             fireplaceFeatureLabel.text = "壁炉: " + (viewHouse.fireplaceFeature ?? "")
        } else {
             fireplaceFeatureLabel.text = "Fireplace Feature: " + (viewHouse.fireplaceFeature ?? "")
        }
        
        
        
        
        
        //floor : String?,
        
        if isChinese {
            floorLabel.text = "地板: " + (viewHouse.floor ?? "")
        } else {
            floorLabel.text = "Floor: " + (viewHouse.floor ?? "")
        }
        
        
        
        //heating : String?,
       
        if isChinese {
            heatingLabel.text = "加热: " + (viewHouse.heating ?? "")
            
        } else {
            heatingLabel.text = "Heating: " + (viewHouse.heating ?? "")
            
        }
        
        
        
        
        
        //highschoolDistrict : String?,
        
        if isChinese {
            highschoolDistrictLabel.text = "高中校区: " + (viewHouse.highschoolDistrict ?? "")
            
        } else {
            highschoolDistrictLabel.text = "Highschool District: " + (viewHouse.highschoolDistrict ?? "")
            
        }
        
        
        
        //landLeaseYN : String?,
        
        if isChinese {
            landLeaseYNLabel.text = "Landlease YN: " + (viewHouse.landLeaseYN ?? "")
            
        } else {
            landLeaseYNLabel.text = "Landlease YN: " + (viewHouse.landLeaseYN ?? "")
            
        }
        
        
        
        
        
        //laundryFeatures : String?,
        
        if isChinese {
            laundryFeaturesLabel.text = "洗衣房: " + (viewHouse.laundryFeatures ?? "")
            
        } else {
            laundryFeaturesLabel.text = "Laundry Features: " + (viewHouse.laundryFeatures ?? "")
            
        }
        
        
        
        
        
        //levels : String?,
        
        if isChinese {
            levelsLabel.text = "层: " + (viewHouse.levels ?? "")
            
        } else {
            levelsLabel.text = "Levels: " + (viewHouse.levels ?? "")
            
        }
        
        
        
        //ListAgentAOR : String?,
       
        if isChinese {
             ListAgentAORLabel.text = "List Agent AOR: " + (viewHouse.ListAgentAOR ?? "")
            
        } else {
             ListAgentAORLabel.text = "List Agent AOR: " + (viewHouse.ListAgentAOR ?? "")
            
        }
        
        
        
        
        //LivingAreaUnits : String?,
        
        if isChinese {
            LivingAreaUnitsLabel.text = "Living Area: " + (viewHouse.LivingAreaUnits ?? "")
        } else {
            LivingAreaUnitsLabel.text = "Living Area: " + (viewHouse.LivingAreaUnits ?? "")
        }
        
        
        
        
        //lotFeatures : String?,
        
        
        
        if isChinese {
            lotFeaturesLabel.text = "Lot Features: " + (viewHouse.lotFeatures ?? "")
        } else {
            lotFeaturesLabel.text = "Lot Features: " + (viewHouse.lotFeatures ?? "")
        }
        
        
        
        //lotSizeSource : String?,
        
        if isChinese {
            lotSizeSourceLabel.text = "Lot Size Source: " + (viewHouse.lotSizeSource ?? "")
        } else {
            lotSizeSourceLabel.text = "Lot Size Source: " + (viewHouse.lotSizeSource ?? "")
        }
        
        
        
        
        //lotsizeUnits :  String?,
        
        if isChinese {
            lotsizeUnitsLabel.text = "占地面积单位: " + (viewHouse.lotsizeUnits ?? "")
        } else {
            lotsizeUnitsLabel.text = "Lot Size Units: " + (viewHouse.lotsizeUnits ?? "")
        }
        
        
        
        
        //majorChangeType : String?,
        
        if isChinese {
            majorChangeTypeLabel.text = "Major Change Type: " + (viewHouse.majorChangeType ?? "")
        } else {
            majorChangeTypeLabel.text = "Major Change Type: " + (viewHouse.majorChangeType ?? "")
        }
        
        
        
        
        
        //MLSAreaMajor : String?,
       
        if isChinese {
             MLSAreaMajorLabel.text = "MLS Area Major: " + (viewHouse.MLSAreaMajor ?? "")
        } else {
             MLSAreaMajorLabel.text = "MLS Area Major: " + (viewHouse.MLSAreaMajor ?? "")
        }
        
        
        
        
        //pricePerSquareFoot : String?,
       
        if isChinese {
             pricePerSquareFootLabel.text = "每平方英尺价钱: " + (viewHouse.pricePerSquareFoot ?? "")
        } else {
             pricePerSquareFootLabel.text = "Price Per Sq Ft: " + (viewHouse.pricePerSquareFoot ?? "")
        }
        
        
        
        
        //propertySubtype : String?,
        
        
        if isChinese {
            propertySubtypeLabel.text = "Property SubType: " + (viewHouse.propertySubtype ?? "")
        } else {
            propertySubtypeLabel.text = "Property SubType: " + (viewHouse.propertySubtype ?? "")
        }
        
        
        
        
        //propertyType : String?,
        
        if isChinese {
            propertyTypeLabel.text = "Property Type: " + (viewHouse.propertyType ?? "")
        } else {
            propertyTypeLabel.text = "Property Type: " + (viewHouse.propertyType ?? "")
        }
        
        
        
        
        //roomType : String?,
        
        if isChinese {
            roomTypeLabel.text = "房屋类型: " + (viewHouse.roomType ?? "")
        } else {
            roomTypeLabel.text = "Room Type: " + (viewHouse.roomType ?? "")
        }
        
        
        
        //spaFeatures : String?,
        
        if isChinese {
            spaFeaturesLabel.text = "Spa Features: " + (viewHouse.spaFeatures ?? "")
        } else {
            spaFeaturesLabel.text = "Spa Features: " + (viewHouse.spaFeatures ?? "")
        }
        
        
        //standard : String?,
       
        if isChinese {
             standardLabel.text = "Standard: " + (viewHouse.standard ?? "")
        } else {
             standardLabel.text = "Standard: " + (viewHouse.standard ?? "")
        }
        
        
        //stateOrProvince : String?,
        
        if isChinese {
            stateOrProvinceLabel.text = "State or Province: " + (viewHouse.stateOrProvince ?? "")
        } else {
            stateOrProvinceLabel.text = "State or Province: " + (viewHouse.stateOrProvince ?? "")
        }
        
        
        //streetSuffix : String?,
        
        if isChinese {
            streetSuffixLabel.text = "Street Stuffix: " + (viewHouse.streetSuffix ?? "")
        } else {
            streetSuffixLabel.text = "Street Stuffix: " + (viewHouse.streetSuffix ?? "")
        }
        
        
        
        //view : String?,
        
        if isChinese {
            viewLabel.text = "View: " + (viewHouse.view ?? "")
        } else {
            viewLabel.text = "View: " + (viewHouse.view ?? "")
        }
        
        //waterSource : String?,
        
        if isChinese {
           waterSourceLabel.text = "水源: " + (viewHouse.waterSource ?? "")
        } else {
            waterSourceLabel.text = "Water Source: " + (viewHouse.waterSource ?? "")
        }
        
        //yearBuiltSource : String?
        
        if isChinese {
            yearBuiltSourceLabel.text = "建筑时间来源: " + (viewHouse.yearBuiltSource ?? "")
        } else {
            yearBuiltSourceLabel.text = "Year Built Source: " + (viewHouse.yearBuiltSource ?? "")
        }
        
        // get img synchronously
        
        if let imgurl = viewHouse.imgURL {
            let url = URL(string: imgurl)!
            
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                if error != nil {
                    print(error ?? "")
                    return
                }
                guard let image = UIImage(data: data!) else {
                    return
                }
                DispatchQueue.main.async {
                    self.houseImage.image = image
                }

            })
            task.resume()
            
        }
        
        detailDescriptionLabel.isHidden = true
        
        //set scrollView properties
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1800)
        scrollView.frame = view.bounds
        
        view.addSubview(scrollView)
        
        // setup view to hold contents
        let contentView = UIView()
        contentView.frame = CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height)
        
        // add contentView to scrollView
        scrollView.addSubview(contentView)
        
        // scrollView for house images
        let imgScroll = UIScrollView()
        imgScroll.showsHorizontalScrollIndicator = true
        imgScroll.showsVerticalScrollIndicator = false
        imgScroll.delegate = self
        imgScroll.isPagingEnabled = true
        
        for index in 0..<images.count {
            // create the frame
            var frame: CGRect = CGRect(x: 0, y: 0, width: view.frame.width, height: 128)
            // set frame origin
            frame.origin.x = view.frame.width * CGFloat(index)
            // create an imageView with specified frame
            let img = UIImageView(frame: frame)
            // add image to imageView
            img.image = images[index]
            //add imageView to the scrollView
            imgScroll.addSubview(img)
        }
        
        imgScroll.contentSize = CGSize(width: view.frame.width * CGFloat(images.count), height: 128)
        imgScroll.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 128)
        
        contentView.addSubview(imgScroll)
        
        // add contents
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLine)
        contentView.addSubview(priceLabel)
        contentView.addSubview(communityLine)
        contentView.addSubview(communityLabel)
        
        //beds : String?,
        contentView.addSubview(bedsLine)
        contentView.addSubview(bedsLabel)
        //baths : String?,
        contentView.addSubview(bathsLine)
        contentView.addSubview(bathsLabel)
        //homesize: String?,
        contentView.addSubview(homesizeLine)
        contentView.addSubview(homesizeLabel)
        //lotsize : String?,
        contentView.addSubview(lotsizeLine)
        contentView.addSubview(lotsizeLabel)
        //description : String?,
        contentView.addSubview(housedescriptionLine)
        contentView.addSubview(housedescriptionLabel)
        //lastUpdate : String?,
        contentView.addSubview(lastUpdateLine)
        contentView.addSubview(lastUpdateLabel)
        //yearBuilt: String?,
        contentView.addSubview(yearBuiltLine)
        contentView.addSubview(yearBuiltLabel)
        //status  : String?,
        contentView.addSubview(statusLine)
        contentView.addSubview(statusLabel)
        //totalParking : String?,
        contentView.addSubview(totalParkingLine)
        contentView.addSubview(totalParkingLabel)
        //garageSpace : String?,
        contentView.addSubview(garageSpaceLine)
        contentView.addSubview(garageSpaceLabel)
        //schoolDistrict : String?,
        contentView.addSubview(schoolDistrictLine)
        contentView.addSubview(schoolDistrictLabel)
        //associationAmenities : String?,
        contentView.addSubview(associationAmenitiesLine)
        contentView.addSubview(associationAmenitiesLabel)
        //associationFee : String?,
        contentView.addSubview(associationFeeLine)
        contentView.addSubview(associationFeeLabel)
        //associationFeeFrequency : String?,
        contentView.addSubview(associationFeeFrequencyLine)
        contentView.addSubview(associationFeeFrequencyLabel)
        //commonWalls : String?,
        contentView.addSubview(commonWallsLine)
        contentView.addSubview(commonWallsLabel)
        //communityFeatures : String?,
        contentView.addSubview(communityFeaturesLine)
        contentView.addSubview(communityFeaturesLabel)
        //cooling : String?,
        contentView.addSubview(coolingLine)
        contentView.addSubview(coolingLabel)
        //country: String?,
        contentView.addSubview(countryLine)
        contentView.addSubview(countryLabel)
        //countyOrPrarish : String?,
        contentView.addSubview(countyOrPrarishLine)
        contentView.addSubview(countyOrPrarishLabel)
        //elevationUnits  :  String?,
        contentView.addSubview(elevationUnitsLine)
        contentView.addSubview(elevationUnitsLabel)
        //fireplaceFeature : String?,
        contentView.addSubview(fireplaceFeatureLine)
        contentView.addSubview(fireplaceFeatureLabel)
        //floor : String?,
        contentView.addSubview(floorLine)
        contentView.addSubview(floorLabel)
        //heating : String?,
        contentView.addSubview(heatingLine)
        contentView.addSubview(heatingLabel)
        //highschoolDistrict : String?,
        contentView.addSubview(highschoolDistrictLine)
        contentView.addSubview(highschoolDistrictLabel)
        //landLeaseYN : String?,
        contentView.addSubview(landLeaseYNLine)
        contentView.addSubview(landLeaseYNLabel)
        //laundryFeatures : String?,
        contentView.addSubview(laundryFeaturesLine)
        contentView.addSubview(laundryFeaturesLabel)
        //levels : String?,
        contentView.addSubview(levelsLine)
        contentView.addSubview(levelsLabel)
       // ListAgentAOR : String?,
        contentView.addSubview(ListAgentAORLine)
        contentView.addSubview(ListAgentAORLabel)
        //LivingAreaUnits : String?,
        contentView.addSubview(LivingAreaUnitsLine)
        contentView.addSubview(LivingAreaUnitsLabel)
        //lotFeatures : String?,
        contentView.addSubview(lotFeaturesLine)
        contentView.addSubview(lotFeaturesLabel)
        //lotSizeSource : String?,
        contentView.addSubview(lotSizeSourceLabel)
        contentView.addSubview(lotSizeSourceLine)
        //lotsizeUnits :  String?,
        contentView.addSubview(lotsizeUnitsLine)
        contentView.addSubview(lotsizeUnitsLabel)
        //majorChangeType : String?,
        contentView.addSubview(majorChangeTypeLine)
        contentView.addSubview(majorChangeTypeLabel)
        //MLSAreaMajor : String?,
        contentView.addSubview(MLSAreaMajorLine)
        contentView.addSubview(MLSAreaMajorLabel)
        //pricePerSquareFoot : String?,
        contentView.addSubview(pricePerSquareFootLine)
        contentView.addSubview(pricePerSquareFootLabel)
        //propertySubtype : String?,
        contentView.addSubview(propertySubtypeLine)
        contentView.addSubview(propertySubtypeLabel)
        //propertyType : String?,
        contentView.addSubview(propertyTypeLine)
        contentView.addSubview(propertyTypeLabel)
        //roomType : String?,
        contentView.addSubview(roomTypeLine)
        contentView.addSubview(roomTypeLabel)
        //spaFeatures : String?,
        contentView.addSubview(spaFeaturesLine)
        contentView.addSubview(spaFeaturesLabel)
        //standard : String?,
        contentView.addSubview(standardLine)
        contentView.addSubview(standardLabel)
        //stateOrProvince : String?,
        contentView.addSubview(stateOrProvinceLine)
        contentView.addSubview(stateOrProvinceLabel)
        //streetSuffix : String?,
        contentView.addSubview(streetSuffixLabel)
        contentView.addSubview(streetSuffixLine)
        //view : String?,
        contentView.addSubview(viewLine)
        contentView.addSubview(viewLabel)
        //waterSource : String?,
        contentView.addSubview(waterSourceLabel)
        contentView.addSubview(waterSourceLine)
        //yearBuiltSource : String?
        contentView.addSubview(yearBuiltSourceLabel)
        contentView.addSubview(yearBuiltSourceLine)
    
        nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        nameLabel.topAnchor.constraint(equalTo: imgScroll.bottomAnchor).isActive = true
        //nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        priceLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        priceLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        priceLine.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        priceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        priceLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        priceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        priceLabel.topAnchor.constraint(equalTo: priceLine.bottomAnchor).isActive = true
        //priceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        communityLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        communityLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        communityLine.topAnchor.constraint(equalTo: priceLabel.bottomAnchor).isActive = true
        communityLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        communityLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        communityLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        communityLabel.topAnchor.constraint(equalTo: communityLine.bottomAnchor).isActive = true
        //communityLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true

        bedsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        bedsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        bedsLine.topAnchor.constraint(equalTo: communityLabel.bottomAnchor).isActive = true
        bedsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        bedsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        bedsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        bedsLabel.topAnchor.constraint(equalTo: bedsLine.bottomAnchor).isActive = true
        //bedsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        bathsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        bathsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        bathsLine.topAnchor.constraint(equalTo: bedsLabel.bottomAnchor).isActive = true
        bathsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        bathsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        bathsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        bathsLabel.topAnchor.constraint(equalTo: bathsLine.bottomAnchor).isActive = true
        //bathsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        homesizeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        homesizeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        homesizeLine.topAnchor.constraint(equalTo: bathsLabel.bottomAnchor).isActive = true
        homesizeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        homesizeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        homesizeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        homesizeLabel.topAnchor.constraint(equalTo: homesizeLine.bottomAnchor).isActive = true
       // homesizeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ////
        lotsizeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotsizeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotsizeLine.topAnchor.constraint(equalTo: homesizeLabel.bottomAnchor).isActive = true
        lotsizeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        lotsizeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotsizeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotsizeLabel.topAnchor.constraint(equalTo: lotsizeLine.bottomAnchor).isActive = true
       // lotsizeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ////
        housedescriptionLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        housedescriptionLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        housedescriptionLine.topAnchor.constraint(equalTo: lotsizeLabel.bottomAnchor).isActive = true
        housedescriptionLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        housedescriptionLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        housedescriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        housedescriptionLabel.topAnchor.constraint(equalTo: housedescriptionLine.bottomAnchor).isActive = true
        //housedescriptionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ////
        lastUpdateLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lastUpdateLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lastUpdateLine.topAnchor.constraint(equalTo: housedescriptionLabel.bottomAnchor).isActive = true
        lastUpdateLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        lastUpdateLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lastUpdateLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lastUpdateLabel.topAnchor.constraint(equalTo: lastUpdateLine.bottomAnchor).isActive = true
       // lastUpdateLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ///
        yearBuiltLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        yearBuiltLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        yearBuiltLine.topAnchor.constraint(equalTo: lastUpdateLabel.bottomAnchor).isActive = true
        yearBuiltLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        yearBuiltLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        yearBuiltLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        yearBuiltLabel.topAnchor.constraint(equalTo: yearBuiltLine.bottomAnchor).isActive = true
      //  yearBuiltLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        /////
        statusLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        statusLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        statusLine.topAnchor.constraint(equalTo: yearBuiltLabel.bottomAnchor).isActive = true
        statusLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        statusLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        statusLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        statusLabel.topAnchor.constraint(equalTo: statusLine.bottomAnchor).isActive = true
       // statusLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ////
        totalParkingLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        totalParkingLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        totalParkingLine.topAnchor.constraint(equalTo: statusLabel.bottomAnchor).isActive = true
        totalParkingLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        totalParkingLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        totalParkingLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        totalParkingLabel.topAnchor.constraint(equalTo: totalParkingLine.bottomAnchor).isActive = true
    //    totalParkingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        garageSpaceLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        garageSpaceLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        garageSpaceLine.topAnchor.constraint(equalTo: totalParkingLabel.bottomAnchor).isActive = true
        garageSpaceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        garageSpaceLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        garageSpaceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        garageSpaceLabel.topAnchor.constraint(equalTo: garageSpaceLine.bottomAnchor).isActive = true
      //  garageSpaceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        schoolDistrictLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        schoolDistrictLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        schoolDistrictLine.topAnchor.constraint(equalTo: garageSpaceLabel.bottomAnchor).isActive = true
        schoolDistrictLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        schoolDistrictLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        schoolDistrictLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        schoolDistrictLabel.topAnchor.constraint(equalTo: schoolDistrictLine.bottomAnchor).isActive = true
     //   schoolDistrictLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        /////
        
        associationAmenitiesLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        associationAmenitiesLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        associationAmenitiesLine.topAnchor.constraint(equalTo: schoolDistrictLabel.bottomAnchor).isActive = true
        associationAmenitiesLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        associationAmenitiesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        associationAmenitiesLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        associationAmenitiesLabel.topAnchor.constraint(equalTo: associationAmenitiesLine.bottomAnchor).isActive = true
    //    associationAmenitiesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //
        
        associationFeeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        associationFeeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        associationFeeLine.topAnchor.constraint(equalTo: associationAmenitiesLabel.bottomAnchor).isActive = true
        associationFeeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        associationFeeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        associationFeeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        associationFeeLabel.topAnchor.constraint(equalTo: associationFeeLine.bottomAnchor).isActive = true
   //     associationFeeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        
        associationFeeFrequencyLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        associationFeeFrequencyLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        associationFeeFrequencyLine.topAnchor.constraint(equalTo: associationFeeLabel.bottomAnchor).isActive = true
        associationFeeFrequencyLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        associationFeeFrequencyLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        associationFeeFrequencyLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        associationFeeFrequencyLabel.topAnchor.constraint(equalTo: associationFeeFrequencyLine.bottomAnchor).isActive = true
    //    associationFeeFrequencyLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        commonWallsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        commonWallsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        commonWallsLine.topAnchor.constraint(equalTo: associationFeeFrequencyLabel.bottomAnchor).isActive = true
        commonWallsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        commonWallsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        commonWallsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        commonWallsLabel.topAnchor.constraint(equalTo: commonWallsLine.bottomAnchor).isActive = true
     //   commonWallsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        communityFeaturesLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        communityFeaturesLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        communityFeaturesLine.topAnchor.constraint(equalTo: commonWallsLabel.bottomAnchor).isActive = true
        communityFeaturesLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        communityFeaturesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        communityFeaturesLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        communityFeaturesLabel.topAnchor.constraint(equalTo: communityFeaturesLine.bottomAnchor).isActive = true
  //      communityFeaturesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        coolingLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        coolingLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        coolingLine.topAnchor.constraint(equalTo: communityFeaturesLabel.bottomAnchor).isActive = true
        coolingLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        coolingLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        coolingLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        coolingLabel.topAnchor.constraint(equalTo: coolingLine.bottomAnchor).isActive = true
  //      coolingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        
        countryLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        countryLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        countryLine.topAnchor.constraint(equalTo: coolingLabel.bottomAnchor).isActive = true
        countryLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        countryLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        countryLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        countryLabel.topAnchor.constraint(equalTo: countryLine.bottomAnchor).isActive = true
   //     countryLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        countyOrPrarishLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        countyOrPrarishLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        countyOrPrarishLine.topAnchor.constraint(equalTo: countryLabel.bottomAnchor).isActive = true
        countyOrPrarishLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        countyOrPrarishLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        countyOrPrarishLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        countyOrPrarishLabel.topAnchor.constraint(equalTo: countyOrPrarishLine.bottomAnchor).isActive = true
   //     countyOrPrarishLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        elevationUnitsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        elevationUnitsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        elevationUnitsLine.topAnchor.constraint(equalTo: countyOrPrarishLabel.bottomAnchor).isActive = true
        elevationUnitsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        elevationUnitsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        elevationUnitsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        elevationUnitsLabel.topAnchor.constraint(equalTo: elevationUnitsLine.bottomAnchor).isActive = true
     //   elevationUnitsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        
        fireplaceFeatureLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        fireplaceFeatureLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        fireplaceFeatureLine.topAnchor.constraint(equalTo: elevationUnitsLabel.bottomAnchor).isActive = true
        fireplaceFeatureLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        fireplaceFeatureLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        fireplaceFeatureLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        fireplaceFeatureLabel.topAnchor.constraint(equalTo: fireplaceFeatureLine.bottomAnchor).isActive = true
 //       fireplaceFeatureLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //
        
        floorLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        floorLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        floorLine.topAnchor.constraint(equalTo: fireplaceFeatureLabel.bottomAnchor).isActive = true
        floorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        floorLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        floorLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        floorLabel.topAnchor.constraint(equalTo: floorLine.bottomAnchor).isActive = true
  //      floorLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        
        heatingLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        heatingLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        heatingLine.topAnchor.constraint(equalTo: floorLabel.bottomAnchor).isActive = true
        heatingLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        heatingLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        heatingLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        heatingLabel.topAnchor.constraint(equalTo: heatingLine.bottomAnchor).isActive = true
   //     heatingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        highschoolDistrictLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        highschoolDistrictLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        highschoolDistrictLine.topAnchor.constraint(equalTo: heatingLabel.bottomAnchor).isActive = true
        highschoolDistrictLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        highschoolDistrictLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        highschoolDistrictLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        highschoolDistrictLabel.topAnchor.constraint(equalTo: highschoolDistrictLine.bottomAnchor).isActive = true
  //      highschoolDistrictLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        landLeaseYNLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        landLeaseYNLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        landLeaseYNLine.topAnchor.constraint(equalTo: highschoolDistrictLabel.bottomAnchor).isActive = true
        landLeaseYNLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        landLeaseYNLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        landLeaseYNLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        landLeaseYNLabel.topAnchor.constraint(equalTo: landLeaseYNLine.bottomAnchor).isActive = true
    //    landLeaseYNLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        /////
        
        laundryFeaturesLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        laundryFeaturesLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        laundryFeaturesLine.topAnchor.constraint(equalTo: landLeaseYNLabel.bottomAnchor).isActive = true
        laundryFeaturesLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        laundryFeaturesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        laundryFeaturesLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        laundryFeaturesLabel.topAnchor.constraint(equalTo: laundryFeaturesLine.bottomAnchor).isActive = true
 //       laundryFeaturesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ////
        
        levelsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        levelsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        levelsLine.topAnchor.constraint(equalTo: laundryFeaturesLabel.bottomAnchor).isActive = true
        levelsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        levelsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        levelsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        levelsLabel.topAnchor.constraint(equalTo: levelsLine.bottomAnchor).isActive = true
   //     levelsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        ListAgentAORLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        ListAgentAORLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        ListAgentAORLine.topAnchor.constraint(equalTo: levelsLabel.bottomAnchor).isActive = true
        ListAgentAORLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        ListAgentAORLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        ListAgentAORLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        ListAgentAORLabel.topAnchor.constraint(equalTo: ListAgentAORLine.bottomAnchor).isActive = true
   //     ListAgentAORLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        LivingAreaUnitsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        LivingAreaUnitsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        LivingAreaUnitsLine.topAnchor.constraint(equalTo: ListAgentAORLabel.bottomAnchor).isActive = true
        LivingAreaUnitsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        LivingAreaUnitsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        LivingAreaUnitsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        LivingAreaUnitsLabel.topAnchor.constraint(equalTo: LivingAreaUnitsLine.bottomAnchor).isActive = true
  //      LivingAreaUnitsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        lotFeaturesLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotFeaturesLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotFeaturesLine.topAnchor.constraint(equalTo: LivingAreaUnitsLabel.bottomAnchor).isActive = true
        lotFeaturesLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        lotFeaturesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotFeaturesLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotFeaturesLabel.topAnchor.constraint(equalTo: lotFeaturesLine.bottomAnchor).isActive = true
   //     lotFeaturesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    ///
        
        lotSizeSourceLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotSizeSourceLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotSizeSourceLine.topAnchor.constraint(equalTo: lotFeaturesLabel.bottomAnchor).isActive = true
        lotSizeSourceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        lotSizeSourceLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotSizeSourceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotSizeSourceLabel.topAnchor.constraint(equalTo: lotSizeSourceLine.bottomAnchor).isActive = true
  //      lotSizeSourceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        lotsizeUnitsLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotsizeUnitsLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotsizeUnitsLine.topAnchor.constraint(equalTo: lotSizeSourceLabel.bottomAnchor).isActive = true
        lotsizeUnitsLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        lotsizeUnitsLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        lotsizeUnitsLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        lotsizeUnitsLabel.topAnchor.constraint(equalTo: lotsizeUnitsLine.bottomAnchor).isActive = true
  //      lotsizeUnitsLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        
        majorChangeTypeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        majorChangeTypeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        majorChangeTypeLine.topAnchor.constraint(equalTo: lotsizeUnitsLabel.bottomAnchor).isActive = true
        majorChangeTypeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        majorChangeTypeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        majorChangeTypeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        majorChangeTypeLabel.topAnchor.constraint(equalTo: majorChangeTypeLine.bottomAnchor).isActive = true
 //       majorChangeTypeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///
        
        MLSAreaMajorLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        MLSAreaMajorLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        MLSAreaMajorLine.topAnchor.constraint(equalTo: majorChangeTypeLabel.bottomAnchor).isActive = true
        MLSAreaMajorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        MLSAreaMajorLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        MLSAreaMajorLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        MLSAreaMajorLabel.topAnchor.constraint(equalTo: MLSAreaMajorLine.bottomAnchor).isActive = true
  //      MLSAreaMajorLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        /// price per square foot  pricePerSquareFoot
        
        pricePerSquareFootLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        pricePerSquareFootLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        pricePerSquareFootLine.topAnchor.constraint(equalTo: MLSAreaMajorLabel.bottomAnchor).isActive = true
        pricePerSquareFootLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        pricePerSquareFootLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        pricePerSquareFootLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        pricePerSquareFootLabel.topAnchor.constraint(equalTo: pricePerSquareFootLine.bottomAnchor).isActive = true
 //       pricePerSquareFootLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        ///propertySubtype
        
        propertySubtypeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        propertySubtypeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        propertySubtypeLine.topAnchor.constraint(equalTo: pricePerSquareFootLabel.bottomAnchor).isActive = true
        propertySubtypeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        propertySubtypeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        propertySubtypeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        propertySubtypeLabel.topAnchor.constraint(equalTo: propertySubtypeLine.bottomAnchor).isActive = true
  //      propertySubtypeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //propertyType
        
        propertyTypeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        propertyTypeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        propertyTypeLine.topAnchor.constraint(equalTo: propertySubtypeLabel.bottomAnchor).isActive = true
        propertyTypeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        propertyTypeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        propertyTypeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        propertyTypeLabel.topAnchor.constraint(equalTo: propertyTypeLine.bottomAnchor).isActive = true
   //     propertyTypeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //roomType
        roomTypeLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        roomTypeLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        roomTypeLine.topAnchor.constraint(equalTo: propertyTypeLabel.bottomAnchor).isActive = true
        roomTypeLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        roomTypeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        roomTypeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        roomTypeLabel.topAnchor.constraint(equalTo: roomTypeLine.bottomAnchor).isActive = true
//        roomTypeLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //spaFeatures
        spaFeaturesLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        spaFeaturesLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        spaFeaturesLine.topAnchor.constraint(equalTo: roomTypeLabel.bottomAnchor).isActive = true
        spaFeaturesLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        spaFeaturesLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        spaFeaturesLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        spaFeaturesLabel.topAnchor.constraint(equalTo: spaFeaturesLine.bottomAnchor).isActive = true
  //      spaFeaturesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //standard
        standardLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        standardLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        standardLine.topAnchor.constraint(equalTo: spaFeaturesLabel.bottomAnchor).isActive = true
        standardLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        standardLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        standardLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        standardLabel.topAnchor.constraint(equalTo: standardLine.bottomAnchor).isActive = true
   //     standardLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //stateOrProvince
        stateOrProvinceLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        stateOrProvinceLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        stateOrProvinceLine.topAnchor.constraint(equalTo: standardLabel.bottomAnchor).isActive = true
        stateOrProvinceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        stateOrProvinceLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        stateOrProvinceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        stateOrProvinceLabel.topAnchor.constraint(equalTo: stateOrProvinceLine.bottomAnchor).isActive = true
   //     stateOrProvinceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //streetSuffix
        streetSuffixLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        streetSuffixLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        streetSuffixLine.topAnchor.constraint(equalTo: stateOrProvinceLabel.bottomAnchor).isActive = true
        streetSuffixLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        streetSuffixLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        streetSuffixLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        streetSuffixLabel.topAnchor.constraint(equalTo: streetSuffixLine.bottomAnchor).isActive = true
 //       streetSuffixLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //view
        
        viewLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        viewLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        viewLine.topAnchor.constraint(equalTo: streetSuffixLabel.bottomAnchor).isActive = true
        viewLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        viewLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        viewLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        viewLabel.topAnchor.constraint(equalTo: viewLine.bottomAnchor).isActive = true
  //      viewLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //waterSource
        waterSourceLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        waterSourceLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        waterSourceLine.topAnchor.constraint(equalTo: viewLabel.bottomAnchor).isActive = true
        waterSourceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        waterSourceLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        waterSourceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        waterSourceLabel.topAnchor.constraint(equalTo: waterSourceLine.bottomAnchor).isActive = true
 //       waterSourceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //yearBuiltSource
        
        yearBuiltSourceLine.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        yearBuiltSourceLine.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        yearBuiltSourceLine.topAnchor.constraint(equalTo: waterSourceLabel.bottomAnchor).isActive = true
        yearBuiltSourceLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        yearBuiltSourceLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12).isActive = true
        yearBuiltSourceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12).isActive = true
        yearBuiltSourceLabel.topAnchor.constraint(equalTo: yearBuiltSourceLine.bottomAnchor).isActive = true
  //      yearBuiltSourceLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}
/*
class InsetLabel: UILabel {
    
    override func drawText(in rect: CGRect) {
        let insets: UIEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
}
*/
extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

