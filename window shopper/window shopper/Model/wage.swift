//
//  wage.swift
//  window shopper
//
//  Created by Ghoul Mehdi on 27/06/2018.
//  Copyright © 2018 Ghoul Mehdi. All rights reserved.
//

import Foundation
class Wage {
    class func gethours (forwage wage: Double ,andPrice Price: Double) -> Int {
        return Int(ceil(Price/wage))
    }
}
