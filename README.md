# Fluent AdFlow Widget iOS SDK

This guide will help you integrate the **Fluent AdFlow Widget SDK** into your iOS app to display ads and gather data.

## Requirements

Before you begin, ensure you have the latest version of [Xcode](https://developer.apple.com/xcode/) installed on your computer.

## Project Structure

The `Package.swift` file defines the setup for the Fluent AdFlow Widget SDK package. It contains configurations that manage dependencies and define the SDK's binary target for iOS.

## Installation

### Adding the SDK to Your Project in Xcode

1. Open your Xcode project.
2. In the top menu, go to **File > Add Packages**.
3. In the prompt that appears, paste this URL:  
   `https://github.com/FluentCo/Fluent-AdFlow-Widget-Package.git`
4. Select the **Up to Next Major** option and choose the highest version available.

Alternatively, you can add the package manually by editing your `Package.swift` file. Add the following code in the `dependencies` section:

```swift
dependencies: [
    .package(url: "https://github.com/FluentCo/Fluent-AdFlow-Widget-Package.git", .upToNextMajor(from: "<highest-available-version>"))
]
```

## Privacy Settings: User Tracking Permission

Before using the SDK, you need to request permission to track the user's activity. Add the following key to your Info.plist to explain why your app is requesting this permission:

- Open the Info.plist file in your Xcode project.
- Add the following key to the file:

```
<key>NSUserTrackingUsageDescription</key>
<string>This app uses tracking to display personalized ads. We value your privacy and will only use this data for ad display purposes.</string>
```

This description will be shown in the app’s privacy dialog to explain why the app is requesting user tracking permission. You can customize the message as needed to fit your app's context.

## SwiftUI integration

### Initializing the SDK

To initialize the SDK, you need to call it once when the app starts. Here’s how:

```
import SwiftUI
import FluentAdFlowAdsWidget

@main
struct DemoApp: App {
    init() {
        // Initialize the SDK with your API key and referrer
        FluentAdFlowAdsSdk().initSdk("<your-api-key>", withReferrer: "<referer>")
        print("SDK Initialization triggered.")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

This ensures that the SDK is ready to show ads when the app launches.

### Displaying Ads in Your App

Now, you can use the widget in your app. Here's how to show the ad and pass user data for personalization:

```
import SwiftUI
import FluentAdFlowAdsWidget

struct ContentView: View {
    @State private var isVisible = false
    @State private var fluentAdFlowWidget = FluentAdFlowWidget()

    var body: some View {
        VStack {
            VStack {
                Text("Embedded Ad")
                    .font(.headline)
                    .padding(.top)

                fluentAdFlowWidget.getView()

                Spacer()

                Button("Check Out") {
                    fluentAdFlowWidget.setParams(params: userParams)
                }
                .padding()
            }
            .padding()
        }
        .onAppear {
            setupAdHandlers()
        }
    }

    private func setupAdHandlers() {
        fluentAdFlowWidget.onAdShow = { isAdShown in
            print("Embedded Ad 1 onAdShow triggered: \(isAdShown)")
            DispatchQueue.main.async {
                isVisible = isAdShown
            }
        }
    }

    private var userParams: NSDictionary {
        return [
            "email": "demo@test.com",
            "emailmd5": "7b6cfb77576b5a89d7a5f29fcbe3a60c",
            "emailsha256": "4a1810784ede742110589c3b70c3bf66d149e981",
            "firstname": "John",
            "lastname": "Smith",
            "gender": "male",
            "address1": "37 Willow Street",
            "address2": "Apt 2",
            "city": "Wichita",
            "state": "Kansas",
            "telephone": "1234567890",
            "transactionId": "123",
            "currency": "USD",
            "primaryCategory": "Sports",
            "subCategory": "Tickets",
            "subaff1": "Sports",
            "orderId": "11111",
            "transactionValue": "90.00",
            "zip": "10010"
        ]
    }
}

#Preview {
    ContentView()
}

```

### Important Notes

- SDK Initialization: The SDK must be initialized when the app starts. Call the FluentAdFlowAdsSdk().initSdk("<your-api-key>", withReferrer: "<referrer>") method, providing your API key and referrer.
- Using the Widget: Add the view component by calling getView() on the FluentAdFlowWidget object to display the ad widget in your app.
- Loading the Ad: Use setParams() to load the ads into the view by passing user data (such as email, transaction details, etc.), allowing the ad to be personalized based on that information.

With these simple steps, you can integrate the Fluent AdFlow Widget SDK into your iOS app and start displaying personalized ads!
