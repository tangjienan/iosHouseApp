//
//  MasterViewController.swift
//  HouseApp
//
//  Created by Fred Wirjo on 10/2/17.
//  Copyright © 2017 opfred. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [Any]()
    var houseList = [House]()
    var images = [UIImage]()
    var newHouse: House?
    
    var switchToChinese: Bool = false
    
    @IBAction func changeLanguage(_ sender: UIBarButtonItem) {
        if switchToChinese {
            switchToChinese = false
            self.navigationItem.title = "Houses"
        } else {
            switchToChinese = true
            self.navigationItem.title = "房子"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register HouseCell
        self.tableView.register(HouseCell.self, forCellReuseIdentifier: "HouseCell")

        // URL
        let houses = URL()! //deleted
        // Make a request with the URL
        var request = URLRequest(url: houses)
        // Set HTTP method to GET
        request.httpMethod = "GET"
        // Execute HTTP Request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any] else {
                print("error parsing JSON object")
                return
            }
            guard let houseListing = json["data"] as? [[String: AnyObject]] else {
                print("no data key in JSON object")
                return
            }
            
            for each in houseListing {
                print(each)
                
                guard let id = each["id"] as? Int
                else {
                    print("Invalid!!!")
                    return
                }
                let name = each["name"] as? String
                let price = each["price"] as? String
                let imgURL = each["imageurl"] as? String
                let community = each["community"] as? String
                let beds = each["beds"] as? String
                let baths = each["baths"] as? String
                let homesize = each["homesize"] as? String
                let lotsize = each["lotsize"] as? String
                let description = each["description"] as? String
                let lastUpdate = each["lastupdate"] as? String
                let yearBuilt = each["yearbuilt"] as? String
                let status = each["status"] as? String
                let totalParking = each["totalparking"] as? String
                let garageSpace = each["GARAGESPACES"] as? String
                let schoolDistrict = each["schooldistrict"] as? String
                let associationAmenities = each["ASSOCIATIONAMENITIES"] as? String
                let associationFee = each["ASSOCIATIONFEE"] as? String
                let associationFeeFrequency = each["ASSOCIATIONFEEFREQUENCY"] as? String
                let commonWalls = each["COMMONWALLS"] as? String
                let communityFeatures =  each["COMMUNITYFEATURES"] as? String
                let cooling = each["COOLING"] as? String
                let country = each["COUNTRY"] as? String
                let countyOrPrarish  = each["COUNTYORPARISH"] as? String
                let elevationUnits   = each["ELEVATIONUNITS"] as? String
                let fireplaceFeature = each["FIREPLACEFEATURES"] as? String
                let floor = each["FLOORING"] as? String
                let heating = each["HEATING"] as? String
                let highschoolDistrict = each["HIGHSCHOOLDISTRICT"] as? String
                let landLeaseYN = each["LANDLEASEYN"] as? String
                let laundryFeatures = each["LAUNDRYFEATURES"] as? String
                let levels = each["LEVELS"] as? String
                let ListAgentAOR = each["LISTAGENTAOR"] as? String
                let LivingAreaUnits = each["LIVINGAREAUNITS"] as? String
                let lotFeatures = each["LOTFEATURES"] as? String
                let lotSizeSource = each["LOTSIZESOURCE"] as? String
                let lotsizeUnits  = each["LOTSIZEUNITS"] as? String
                let majorChangeType = each["MAJORCHANGETYPE"] as? String
                let MLSAreaMajor = each["MLSAREAMAJOR"] as? String
                let pricePerSquareFoot = each["PRICEPERSQUAREFOOT"] as? String
                let propertySubtype = each["PROPERTYSUBTYPE"] as? String
                let propertyType = each["PROPERTYTYPE"] as? String
                let roomType = each["ROOMTYPE"] as? String
                let spaFeatures  = each["SPAFEATURES"] as? String
                let standard = each["Standard"] as? String
                let stateOrProvince = each["STATEORPROVINCE"] as? String
                let streetSuffix = each["STREETSUFFIX"] as? String
                let view = each["VIEW"] as? String
                let waterSource = each["WATERSOURCE"] as? String
                let yearBuiltSource = each["YEARBUILTSOURCE"] as? String
                
                guard let house = House(
                    
                    id: id,
                    name: name!,
                    price: price,
                    community: community,
                    namech: nil,
                    imgURL: "https://res.cloudinary.com/df0ndpgr3/image/upload/v1508097880/id9_1_nxx8mb.jpg",
                    beds : beds,
                    baths : baths,
                    homesize: homesize,
                    lotsize : lotsize,
                    description : description,
                    lastUpdate : lastUpdate,
                    yearBuilt: yearBuilt,
                    status  : status,
                    totalParking : totalParking,
                    garageSpace :garageSpace,
                    schoolDistrict : schoolDistrict,
                    associationAmenities : associationAmenities,
                    associationFee : associationFee,
                    associationFeeFrequency : associationFeeFrequency,
                    commonWalls : commonWalls,
                    communityFeatures : communityFeatures,
                    cooling : cooling,
                    country : country,
                    countyOrPrarish : countyOrPrarish,
                    elevationUnits  :  elevationUnits,
                    fireplaceFeature : fireplaceFeature,
                    floor : floor,
                    heating : heating,
                    highschoolDistrict : highschoolDistrict,
                    landLeaseYN : landLeaseYN,
                    laundryFeatures : laundryFeatures,
                    levels : levels,
                    ListAgentAOR : ListAgentAOR,
                    LivingAreaUnits : LivingAreaUnits,
                    lotFeatures : lotFeatures,
                    lotSizeSource : lotSizeSource,
                    lotsizeUnits :  lotsizeUnits,
                    majorChangeType : majorChangeType,
                    MLSAreaMajor : MLSAreaMajor,
                    pricePerSquareFoot : pricePerSquareFoot,
                    propertySubtype : propertySubtype,
                    propertyType : propertyType,
                    roomType : roomType,
                    spaFeatures :spaFeatures,
                    standard : standard,
                    stateOrProvince : stateOrProvince,
                    streetSuffix : streetSuffix,
                    view : view,
                    waterSource : waterSource,
                    yearBuiltSource : yearBuiltSource
                 )
                    
                    
                    
                    
                    
                    
                    
                else {
                    print("cannot create house")
                    return
                }
                self.houseList.append(house)
            }
            
            DispatchQueue.main.async(execute: {
                self.tableView.reloadData()
            })
            
        }
        // resume task if suspended
        task.resume()
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Segues
    
    @IBAction func unwindToHouseList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? ImageViewController, let house = sourceViewController.house {
            houseList.append(house)
            self.tableView.reloadData()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddHouse" {
            let navController = segue.destination as! UINavigationController
            let viewController = navController.topViewController as! AddViewController
            viewController.isChinese = switchToChinese
        }
        
        if segue.identifier == "showHouse" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let controller = (segue.destination) as! DetailViewController
                let house = houseList[indexPath.row]
                controller.viewHouse = house
                controller.isChinese = switchToChinese
                controller.images = self.images
            }
        }
        
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! NSDate
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
            
        }
        
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houseList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HouseCell", for: indexPath) as? HouseCell else {
            fatalError("The dequeued cell is not an instance of HouseCell.")
        }

        let houseEntry = houseList[indexPath.row]
        
        // setup cell
        // get img asynchronously
        
        if houseEntry.imgURL != nil {
            
            let url = URL(string: houseEntry.imgURL!)!
            
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                if error != nil {
                    print(error ?? "")
                    return
                }
                guard let image = UIImage(data: data!) else {
                    return
                }
                DispatchQueue.main.async {
                    cell.img.image = image
                    self.images.append(image)
                }
            })
            task.resume()

        } else {
            cell.img.image = UIImage(named: "houseImage")
        }

        
        cell.name.text = houseEntry.name
        
        cell.price.text = "$" + (houseEntry.price!)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        self.performSegue(withIdentifier: "showHouse", sender: cell)
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            houseList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

