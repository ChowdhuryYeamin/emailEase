//
//   EmailTypePickerView.swift
//  email_drafter_swift
//
//  Created by Yamin Ayon on 7/26/23.
//

import SwiftUI

struct EmailTypePickerView: View {
    @Binding var emailType: String
    @State private var searchTerm: String = ""
    let emailTypes = ["Business", "Personal", "Support", "Inquiry", "Feedback", "Complaint", "Request", "Proposal", "Follow-up"]

    var filteredEmailTypes: [String] {
        if searchTerm.isEmpty {
            return emailTypes
        } else {
            return emailTypes.filter { $0.lowercased().contains(searchTerm.lowercased()) }
        }
    }

    var body: some View {
        VStack {
            TextField("Search email types", text: $searchTerm)
                .padding()
                .border(Color.gray, width: 0.5)
            
            Picker(selection: $emailType, label: Text("Email Type")) {
                ForEach(filteredEmailTypes, id: \.self) {
                    Text($0)
                }
            }
            .padding()
        }
    }
}


