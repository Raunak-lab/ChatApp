# Chat App

A chat application built using Flutter and Firebase. The app allows users to create and join groups to chat with other users.

## Features

User authentication: Users can register and log in to the app using their email and password. Firebase Authentication is used for secure user authentication.

Group creation: Users can create their own groups and become administrators of those groups. They can set a name, description, and other settings for the group.

Group search and join: Users can search for groups by name or browse through a list of available groups. They can join any public group and start chatting with other group members.

Real-time chat: Once inside a group, users can send and receive messages in real-time. Firebase Cloud Firestore is used to store and synchronize messages across all devices.

## Screenshots
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/3b335d59-d392-47e7-8175-077b6a1b810b" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/e03652fd-0014-402e-8117-11cb748a3452" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/4b92b9de-1788-42e6-8bbd-02d528e3ad81" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/ff0cf1f6-dc2f-498b-b8d4-25eb50f8388b" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/c5fd9cd0-bad5-4633-9a29-e2a5fe8834c5" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/30ed5580-24e0-404c-acb1-61df93238729" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/dc5dbc78-f6fd-4846-909f-bb6568a8a0fe" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/00482977-1cf1-41ab-bbb2-39b8129273cd" width = "400" height = "720">
<img src ="https://github.com/Raunak-lab/ChatApp/assets/85052170/bc56336a-cdab-4810-b751-d3d852f20baf" width = "400" height = "720">


## Prerequisites

### Before running the app, make sure you have the following installed:

### Flutter SDK: Install Flutter
### Firebase project: Create a Firebase project

## Getting Started
### Clone the repository:

```
git clone https://github.com/your-username/your-repo.git
```

### Set up Firebase:

Create a new Firebase project in the Firebase console.
Enable the Authentication and Firestore services in your project.
Download the google-services.json file from the Firebase console.
Place the google-services.json file in the android/app directory of your project.

### Set up Flutter:

Run the following command to fetch the Flutter dependencies:

```flutter pub get```

### Run the app:

Connect a physical device or start an emulator.

Run the following command to start the app:

```flutter run```

## Configuration

You can customize the app by modifying the following files:

lib/main.dart: Update the Firebase project initialization code with your own project configuration.
lib/screens: Modify or add new screens to change the app's behavior or UI.
lib/services: Customize the Firebase-related services if needed.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## Acknowledgements

This app was developed using Flutter, a UI toolkit by Google.
Firebase was used for user authentication and real-time data synchronization.
The project structure and some code patterns were inspired by various open-source Flutter projects.
