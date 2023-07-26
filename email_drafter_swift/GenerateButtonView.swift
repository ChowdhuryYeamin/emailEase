//  GenerateButtonView.swift
//  email_drafter_swift
//
//  Created by Yamin Ayon on 7/26/23.
//

import SwiftUI

// Create a dummy OpenAIResponse struct for testing
struct OpenAIResponse: Codable {
    struct Choice: Codable {
        let text: String
    }
    let choices: [Choice]
}
struct GenerateButtonView: View {
    var userInput: String
    var emailType: String
    @Binding var emailSubject: String
    @Binding var emailBody: String
    
    var body: some View {
        Button(action: {
            callOpenAI(userInput: userInput, emailType: emailType)
        }) {
            Text("Generate Email")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
    
    func callOpenAI(userInput: String, emailType: String) {
        // Simulate a delay and set a dummy email subject and body
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            emailSubject = "Dummy Subject"
            emailBody = "Dear Recipient,\n\nThis is a dummy generated email.\n\nBest,\nYour Name"
        }
    }
}


//replace callOpenAI function when you make the
/*
 func callOpenAI(userInput: String, emailType: String) {
        // Define the API url (replace with your server URL)
        guard let url = URL(string: "https://myserver.com/openai") else { return }

        // Create the URLRequest
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        // Create the body
        let prompt = "You are a professional email writer. Your task is to write a \(emailType) email based on the following outline: \(userInput)."
        let body: [String: Any] = ["prompt": prompt, "maxTokens": 200]
        let bodyData = try! JSONSerialization.data(withJSONObject: body, options: [])

        // Attach the body to the request
        request.httpBody = bodyData

        // Create the URLSession data task
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            do {
                // Decode the data
                let decodedResponse = try JSONDecoder().decode(OpenAIResponse.self, from: data)

                // Update the emailDraft
                DispatchQueue.main.async {
                    self.emailDraft = decodedResponse.choices[0].text
                }

            } catch {
                print("Error: \(error)")
            }
        }

        // Start the data task
        task.resume()
    }
 */
