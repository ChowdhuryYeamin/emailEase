// EmailBodyView.swift

import SwiftUI

struct EmailBodyView: View {
    var emailBody: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("Body:\n")
                .font(.headline)
            Text(emailBody)
                .font(.body)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 5, x: 0, y: 2)
                )
        }
        .padding()
    }
}

