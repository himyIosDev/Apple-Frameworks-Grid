//
//  BodyTextView.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 29/08/2024.
//

import SwiftUI

struct BodyTextView: View {
    //
    var frameworkObj : Framework
    
    var body: some View {
        //
        // body of detail view
        Text(frameworkObj.description)
            .font(.body)
            .padding()
    }
}

#Preview {
    BodyTextView(frameworkObj: MockData.sampleFramework)
}
