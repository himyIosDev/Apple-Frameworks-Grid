//
//  FrameworkItemView.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 29/08/2024.
//

import SwiftUI

struct FrameworkItemView : View {
    //
    let farmeworkObj : Framework
    
    var body : some View {
        //
        VStack {
            //
            Image(farmeworkObj.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(farmeworkObj.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkItemView(farmeworkObj: MockData.sampleFramework)
}
