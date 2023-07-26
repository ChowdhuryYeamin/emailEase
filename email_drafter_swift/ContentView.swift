import SwiftUI

struct ContentView: View {
    @State private var userInput = ""
    @State private var emailType = "Business"
    @State private var emailSubject = ""
    @State private var emailBody = ""

    var body: some View {
        VStack {
            TitleView()
            InputFieldView(userInput: $userInput)
            EmailTypePickerView(emailType: $emailType)
            GenerateButtonView(userInput: userInput, emailType: emailType, emailSubject: $emailSubject, emailBody: $emailBody)
            GeneratedEmailView(emailSubject: $emailSubject, emailBody: $emailBody)
        }
    }
}
