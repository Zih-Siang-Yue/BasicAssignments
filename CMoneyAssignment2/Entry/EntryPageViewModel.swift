//
//  EntryPageViewModel.swift
//  CMoneyAssignment2
//
//  Created by Sean.Yue on 2021/2/3.
//

import Foundation

class EntryPageViewModel: ViewModelType {
    
    typealias Input = EntryInput
    typealias Output = EntryOutput
    
    struct EntryInput {}
    struct EntryOutput {
        var titleStr: String
        var btnStr: String
    }

}
