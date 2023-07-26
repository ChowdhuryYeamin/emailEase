import SwiftUI

struct GeneratedEmailView: View {
    @State private var showingAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""

    @Binding var emailSubject: String
    @Binding var emailBody: String

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            EmailSubjectView(emailSubject: emailSubject)
                .onLongPressGesture {
                    alertTitle = "Copy Subject"
                    alertMessage = emailSubject
                    showingAlert = true
                }

            EmailBodyView(emailBody: emailBody)
                .onLongPressGesture {
                    alertTitle = "Copy Body"
                    alertMessage = emailBody
                    showingAlert = true
                }
        }
        .padding()
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text(alertTitle),
                message: Text(alertMessage),
                primaryButton: .default(Text("Copy to Clipboard")) {
                    UIPasteboard.general.string = alertMessage
                },
                secondaryButton: .cancel()
            )
        }
    }
}
