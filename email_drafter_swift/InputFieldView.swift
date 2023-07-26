//
//  InputFieldView.swift
//  email_drafter_swift
//
//  Created by Yamin Ayon on 7/26/23.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var userInput: String
    
    var body: some View {
        TextField("Enter your main points here", text: $userInput)
            .padding()
    }
}
