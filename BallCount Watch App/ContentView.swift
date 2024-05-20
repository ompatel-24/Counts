import SwiftUI

struct ContentView: View {
    // State variables to keep track of the counts
    @State private var leftCounter: Int = 0
    @State private var rightCounter: Int = 0
    @State private var currentTime: String = ""
    @State private var showAlert = false // New state variable for the alert

    // Timer to update the time every second
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        
        VStack {
            Text(currentTime)
                .onReceive(timer) { _ in
                    updateTime()
                }
            Spacer()

            HStack {
                VStack {
                    Spacer()

                    Text("\(leftCounter)")
                        .font(.title)
                        .colorMultiply(.teal)
                    
                    Button("+1") {
                        leftCounter += 1
                    }
                    .font(.headline)
                    .colorMultiply(.teal)

                    
                    Button("+2") {
                        leftCounter += 2
                    }
                    .font(.headline)
                    .colorMultiply(.teal)
                }

                VStack {
                    Spacer(minLength: 5)

                    Text("-")
                        .font(.title)
                    Spacer(minLength: 15)
                                    
                    Button("🏀") {
                        if (leftCounter > 0 || rightCounter > 0) {
                            showAlert = true
                        }
                    }
                    .buttonStyle(.borderless)
                    .font(.title)
                    
                    Spacer(minLength: 65)
                }
                
                VStack {
                    Spacer()

                    // Display the right counter
                    Text("\(rightCounter)")
                        .font(.title)
                        .colorMultiply(.red)

                    // Increment the right counter by 1
                    Button("+1") {
                        rightCounter += 1
                    }
                    .font(.headline)
                    .colorMultiply(.red)
                    
                    // Increment the right counter by 2
                    Button("+2") {
                        rightCounter += 2
                    }
                    .font(.headline)
                    .colorMultiply(.red)
                }
            }
        }
        .onAppear {
            updateTime() // Initial call to set the time
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Reset Counters"),
                message: Text("Are you sure you want to reset both counters?"),
                primaryButton: .destructive(Text("Reset")) {
                    leftCounter = 0
                    rightCounter = 0
                },
                secondaryButton: .cancel()
            )
        }
        Spacer()
    }
    
    // Function to update the current time
    private func updateTime() {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        currentTime = formatter.string(from: Date())
    }
}

#Preview {
    ContentView()
}
