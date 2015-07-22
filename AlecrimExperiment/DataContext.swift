//
//  ExperimextContext.swift
//  AlecrimExperiment
//
//  Created by Yury Lapitsky on 7/20/15.
//  Copyright (c) 2015 skyylex. All rights reserved.
//

import Foundation
import AlecrimCoreData

let dataContext = DataContext()!

class DataContext: Context {
    var people: Table<Account> { return Table<Account>(context: self) }
}