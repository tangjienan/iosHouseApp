//
//  House.swift
//  HouseApp
//
//  Created by Fred Wirjo on 10/8/17.
//  Copyright © 2017 opfred. All rights reserved.
//

import UIKit

class House {
    
    // MARK: Properties
    
    var id: Int
    var name: String?
    var price: String?
    var community: String?
    var namech: String?
    var imgURL: String?
    var beds : String?
    var baths : String?
    var homesize: String?
    var lotsize : String?
    var description : String?
    var lastUpdate : String?
    var yearBuilt: String?
    var status  : String?
    var totalParking : String?
    var garageSpace : String?
    var schoolDistrict : String?
    var associationAmenities : String?
    var associationFee : String?
    var associationFeeFrequency : String?
    var commonWalls : String?
    var communityFeatures : String?
    var cooling : String?
    var country: String?
    var countyOrPrarish : String?
    var elevationUnits  :  String?
    var fireplaceFeature : String?
    var floor : String?
    var heating : String?
    var highschoolDistrict : String?
    var landLeaseYN : String?
    var laundryFeatures : String?
    var levels : String?
    var ListAgentAOR : String?
    var LivingAreaUnits : String?
    var lotFeatures : String?
    var lotSizeSource : String?
    var lotsizeUnits :  String?
    var majorChangeType : String?
    var MLSAreaMajor : String?
    var pricePerSquareFoot : String?
    var propertySubtype : String?
    var propertyType : String?
    var roomType : String?
    var spaFeatures : String?
    var standard : String?
    var stateOrProvince : String?
    var streetSuffix : String?
    var view : String?
    var waterSource : String?
    var yearBuiltSource : String?
    
    // MARK: Initialization
    
    init?(
            id: Int,
            name: String,
            price: String?,
            community: String?,
            namech: String?,
            imgURL: String?,
            beds : String?,
            baths : String?,
            homesize: String?,
            lotsize : String?,
            description : String?,
            lastUpdate : String?,
            yearBuilt: String?,
            status  : String?,
            totalParking : String?,
            garageSpace : String?,
            schoolDistrict : String?,
            associationAmenities : String?,
            associationFee : String?,
            associationFeeFrequency : String?,
            commonWalls : String?,
            communityFeatures : String?,
            cooling : String?,
            country: String?,
            countyOrPrarish : String?,
            elevationUnits  :  String?,
            fireplaceFeature : String?,
            floor : String?,
            heating : String?,
            highschoolDistrict : String?,
            landLeaseYN : String?,
            laundryFeatures : String?,
            levels : String?,
            ListAgentAOR : String?,
            LivingAreaUnits : String?,
            lotFeatures : String?,
            lotSizeSource : String?,
            lotsizeUnits :  String?,
            majorChangeType : String?,
            MLSAreaMajor : String?,
            pricePerSquareFoot : String?,
            propertySubtype : String?,
            propertyType : String?,
            roomType : String?,
            spaFeatures : String?,
            standard : String?,
            stateOrProvince : String?,
            streetSuffix : String?,
            view : String?,
            waterSource : String?,
            yearBuiltSource : String?
        )
        {
        if (name.isEmpty) {
            return nil
        }
        self.id = id
        self.name = name
        self.price = price
        self.community = community
        self.namech = namech
        self.imgURL = imgURL
        self.baths = baths
        self.homesize = homesize
        self.lotsize = lotsize
        self.description = description
        self.lastUpdate = lastUpdate
        self.yearBuilt =  yearBuilt
        self.status  = status
        self.totalParking = totalParking
        self.garageSpace = garageSpace
        self.schoolDistrict = schoolDistrict
        self.associationAmenities = associationAmenities
        self.associationFee = associationFee
        self.associationFeeFrequency = associationFeeFrequency
        self.commonWalls = commonWalls
        self.communityFeatures = communityFeatures
        self.cooling = cooling
        self.country = country
        self.countyOrPrarish = countyOrPrarish
        self.elevationUnits  =  elevationUnits
        self.fireplaceFeature = fireplaceFeature
        self.floor = floor
        self.heating = heating
        self.highschoolDistrict = highschoolDistrict
        self.landLeaseYN = landLeaseYN
        self.laundryFeatures = laundryFeatures
        self.levels = levels
        self.ListAgentAOR = ListAgentAOR
        self.LivingAreaUnits = LivingAreaUnits
        self.lotFeatures = lotFeatures
        self.lotSizeSource = lotSizeSource
        self.lotsizeUnits =  lotsizeUnits
        self.majorChangeType = majorChangeType
        self.MLSAreaMajor = MLSAreaMajor
        self.pricePerSquareFoot = pricePerSquareFoot
        self.propertySubtype = propertySubtype
        self.propertyType = propertyType
        self.roomType = roomType
        self.spaFeatures = spaFeatures
        self.standard = standard
        self.stateOrProvince = stateOrProvince
        self.streetSuffix = streetSuffix
        self.view = view
        self.waterSource = waterSource
        self.yearBuiltSource = yearBuiltSource
    }
    
}
