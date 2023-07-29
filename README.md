# emailEase

# EmailEase - Email Drafting Assistant

EmailEase is a simple iOS application designed to assist users in drafting professional emails. Leveraging the power of OpenAI's GPT-3.5 language model, it provides a user-friendly interface to generate email drafts on the fly.

## Table of Contents

- [Features](#features)
- [Design & Implementation](#design--implementation)
- [Future Development](#future-development)
- [Conclusion](#conclusion)

## Features
- **Email Type Picker**: Dropdown menu for users to select the type of email to write (options include 'Business', 'Personal', and 'Support' emails).
- **Outline Input Field**: User can enter a brief outline of the email content they want to generate.
- **Email Generation Button**: Triggers the call to the GPT-3.5 model with a crafted prompt to generate the draft email.
- **Generated Email View**: Displays the generated email split into two parts - 'Subject' and 'Body'. Both can be viewed, and their contents copied to the clipboard by long-pressing on them.

## Design & Implementation
The app is designed following the Model-View-ViewModel (MVVM) pattern, separating the UI and business logic for enhanced maintainability and testability. The app's files are divided based on their roles, making the structure intuitive and easy to navigate.

- **ContentView**: Main view, brings together all the other views.
- **TitleView**: Displays the title of the app.
- **InputFieldView**: Handles the input field where the user enters the outline for the email content.
- **EmailTypePickerView**: Handles the dropdown menu for selecting the email type.
- **GenerateButtonView**: Responsible for the button that triggers the email generation. When pressed, it prompts the GPT-3.5 model with a crafted prompt that includes the user's inputs and persona of an email writer.
- **GeneratedEmailView**: Displays the generated email. It includes two separate subviews - EmailSubjectView and EmailBodyView.

## Future Development
Plans for future iterations of the EmailEase application could include:

- A search bar in the email type picker for ease of selection.
- Enhancing the email generation process with the subject and body generated and stored separately.
- Ability to save and retrieve past generated emails.
- Ability to send the generated email directly from the app, given user's consent and proper email account configuration.

## Conclusion
EmailEase is a beneficial tool for anyone who regularly drafts professional emails. The application is designed to be simple, intuitive, and efficient in generating high-quality email drafts with the help of OpenAI's GPT-3.5 language model. This project serves as a testament to the potential of AI in assisting with daily tasks and improving productivity.
