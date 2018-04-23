//
//  DataService.swift
//  DemoPList
//
//  Created by dinhphu on 4/23/18.
//  Copyright © 2018 dinhphu. All rights reserved.
//

import Foundation

class DataService {
    static let shared : DataService = DataService()
    
    var cityCodeSelected:Int?
    private var _cities : [City]?
    var cities: [City] {
        get {
            if _cities == nil {
                getDataCities()
            }
            return _cities ?? []
        }
        set {
            _cities = newValue
        }
    }
    private var _districts: [District]?
    var districts: [District] {
        get {
            if _districts == nil {
                getDataDistricts()
            }
            return _districts == nil ? [] : (_districts ?? []).filter({ $0.cityCode == cityCodeSelected!})
        }
        set {
            _districts = newValue
        }
    }
    func getDataCities() {
        _cities = []
        guard let dictionary = PlistService().getDataFromPlist(plist: "Cities.plist") else { return }
        guard let cityDictionaries = dictionary["Cities"] as? [Dictionary<String,Any>] else { return }
        for cityDictionary in cityDictionaries {
            if let city = City(dictionary: cityDictionary) {
                _cities?.append(city)
            }
        }
    }
    func getDataDistricts() {
        _districts = []
        guard let dictionary = PlistService().getDataFromPlist(plist: "Districts.plist") else { return  }
        guard let districtsDictionaries = dictionary["Districts"] as? [Dictionary<String,Any>] else { return }
        for districtsDictionary in districtsDictionaries {
            if let district = District(dictionary: districtsDictionary) {
                _districts?.append(district)
            }
        }
    }
}
