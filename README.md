# Counter App

## Overview

This SwiftUI-based app provides a simple interface to track and manage two counters. It includes the following features:
- Two separate counters (left and right) with increment buttons.
- A reset button with a confirmation alert to reset both counters to zero.
- A real-time clock display that updates every second.

## Features

- **Increment Counters**: Each counter can be incremented by 1 or 2 with dedicated buttons.
- **Reset Confirmation**: The reset button prompts a confirmation alert before resetting both counters.
- **Real-Time Clock**: Displays the current time, updated every second.

## Screenshots

<img width="550" alt="image" src="https://github.com/ompatel-24/BallCount/assets/107497339/ba267d94-e3ae-4c60-a4c8-dce7cb2b9083">

## Getting Started

### Prerequisites

- Xcode 12.0 or later
- Swift 5.3 or later
- iOS 14.0 or later

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/counter-app.git
    ```
2. Open the project in Xcode:
    ```bash
    cd counter-app
    open CounterApp.xcodeproj
    ```
3. Build and run the project on a simulator or a physical device.

### Usage

- **Increment Counters**: Tap on the +1 or +2 buttons to increment the left or right counter respectively.
- **Reset Counters**: Tap on the basketball icon to reset both counters after confirming the action in the alert.
- **View Time**: The current time is displayed at the top of the screen and updates every second.

## Code Overview

### ContentView

The main view of the app, `ContentView`, consists of:
- State variables to track the counts, current time, and alert state.
- A timer to update the current time every second.
- Increment buttons for both counters.
- A reset button with an alert confirmation.

### Functions

- `updateTime()`: Updates the `currentTime` state variable with the current time.

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- SwiftUI documentation
- Various SwiftUI tutorials and guides
