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
        NavigationView {
            //
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    //
                    ForEach(MockData.frameworks) { frameworkObj in
                        //
                        FrameworkItemView(farmeworkObj: frameworkObj)
                            .onTapGesture {
                                //
                                viewModel.selectedFramework = frameworkObj
                            }
                    }
                }
                .navigationTitle("🍏 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    //
                    FrameworkDetailVIew(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
    }
}
                                        

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
