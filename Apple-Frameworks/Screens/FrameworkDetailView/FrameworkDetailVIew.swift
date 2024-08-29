//
//  FrameworkDetailVIew.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 28/08/2024.
//

import SwiftUI

struct FrameworkDetailVIew: View {
    //
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariVIew = false
    
    var body: some View {
        //
        VStack {
            //
            XDismissBtn(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            // frame work item
            FrameworkItemView(farmeworkObj: framework)
            
            // body of detail view
            BodyTextView(frameworkObj: framework)
                
            Spacer()
            
            Button {
                // show in app browser
                isShowingSafariVIew = true
                
            } label: {
                AFButton(textTitle: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariVIew, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailVIew(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
