//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 28/08/2024.
//

import SwiftUI

struct AFButton: View {
    //
    var textTitle : String
    
    var body: some View {
        //
        Text(textTitle)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(textTitle: "Test Title")
}
