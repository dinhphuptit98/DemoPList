//
//  District.swift
//  DemoPList
//
//  Created by dinhphu on 4/23/18.
//  Copyright © 2018 dinhphu. All rights reserved.
//

import Foundation

class District {
    var cityCode: Int
    var districtCode: Int
    var name: String
    
    init(name: String, cityCode:Int, districtCode: Int) {
        self.cityCode = cityCode
        self.districtCode = districtCode
        self.name = name
    }
    
    convenience init?(dictionary: DIC) {
        guard let name = dictionary["Name"] as? String, let cityCode = dictionary["CityCode"] as? Int, let districtCode = dictionary["DistrictCode"] as? Int else { return nil }
        self.init(name: name, cityCode: cityCode, districtCode: districtCode)
    }
}
