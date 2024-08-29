//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 28/08/2024.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject {
    //
    var selectedFramework : Framework? {
        //
        didSet {
            //
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    
    let colums : [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
