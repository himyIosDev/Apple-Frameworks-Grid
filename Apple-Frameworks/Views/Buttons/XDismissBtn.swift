//
//  XDismissBtn.swift
//  Apple-Frameworks
//
//  Created by Hamza Mughal on 29/08/2024.
//

import SwiftUI

struct XDismissBtn: View {
    //
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        //
        HStack() {
            //
            Spacer()
            
            Button {
                //
                isShowingDetailView = false
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissBtn(isShowingDetailView: .constant(false))
}
