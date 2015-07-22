//
//  Account.swift
//  AlecrimExperiment
//
//  Created by Yury Lapitsky on 7/20/15.
//  Copyright (c) 2015 skyylex. All rights reserved.
//

import Foundation
import CoreData
import AlecrimCoreData

class Account: NSManagedObject {
    @NSManaged var name: String?
    @NSManaged var nickname: String?
    @NSManaged var age: NSNumber?
}


extension Account {
    static let name = AlecrimCoreData.Attribute<String>("name")
    static let nickname = AlecrimCoreData.Attribute<String>("nickname")
    static let age = AlecrimCoreData.Attribute<NSNumber>("age")
}