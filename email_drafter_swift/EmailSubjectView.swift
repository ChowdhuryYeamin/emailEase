// EmailSubjectView.swift

import SwiftUI

struct EmailSubjectView: View {
    var emailSubject: String

    var body: some View {
        VStack {
            Text("Subject:")
                .font(.headline)
            Text(emailSubject)
                .font(.body)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: .gray, radius: 5, x: 0, y: 2)
                )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

