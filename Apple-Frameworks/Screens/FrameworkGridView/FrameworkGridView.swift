//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 28/08/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    //
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        //
        NavigationStack {
            //
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    //
                    ForEach(MockData.frameworks) { frameworkObj in
                        //
                        NavigationLink(value: frameworkObj) {
                            FrameworkItemView(farmeworkObj: frameworkObj)
                        }
                    }
                }
                .navigationTitle("🍏 Frameworks")
                .navigationDestination(for: Framework.self) { framework in
                    FrameworkDetailVIew(framework: framework)
                }
            }
        }
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
