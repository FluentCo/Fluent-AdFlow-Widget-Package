# Fluent AdFlow Widget iOS SDK

Fluent AdFlow Widget SDK for iOS

## Requirements

Download the latest version of [XCode](https://developer.apple.com/xcode/) for development.

## Project structure

`Package.swift` is the main package manifest that defines updated configurations to the Fluent AdFlow Widget iOS SDK package. This manifest has a target of the iOS SDK binary.

## Installation

To install for iOS development:

On Xcode:

Go to File > Add Packages
Enter Package URL https://github.com/FluentCo/Fluent-AdFlow-Widget-Package.git
Select Up to Next Major with the highest version available.

You can also add this code snippet to the `dependencies` part of `Package.swift`.

```
dependencies: [
    .package(url: "https://github.com/FluentCo/Fluent-AdFlow-Widget-Package.git", .upToNextMajor(from: "<highest-available-version>"))
]
```

## Integration into your application

### Instantiation and initialization

You can instantiate and initialize the sdk with the following:

```
var sdk : FluentAdFlowWidget
sdk = FluentAdFlowWidget(apiKey: "<your-api-key>", referer: "<referer>")
```

### Usage in the display of your application

```
import SwiftUI
import FluentAdFlowAdsWidget

struct ContentView: View {
    @State var showAd = false
    @State var sdk : FluentAdFlowWidget?

    var body: some View {
        VStack {
            HStack (alignment: .center){
                Button {
                    sdk = FluentAdFlowWidget(apiKey: "<your-api-key>", referer: "<referer>")
                } label: {
                    Text("Call sdk")
                }
            }.frame(
                minWidth: 0,
                maxWidth: .infinity
            ).padding(15)



            if showAd {
                sdk?.show(params:  ["email": "jsmith@gmail.com"])
            }

            Button("Load Ad View") {
                showAd.toggle()
            }


            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
