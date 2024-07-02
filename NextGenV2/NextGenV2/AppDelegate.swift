import UIKit
import CXoneChatSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize CXoneChatSDK
        let config = CXoneChatConfig(apiKey: "YOUR_API_KEY", domain: "YOUR_DOMAIN")
        CXoneChatSDK.initialize(with: config)
        
        // Connect to the chat
        do {
            try CXoneChat.shared.connection.prepare(environment: .NA1, brandId: 1092, channelId: "chat_b221994c-72e1-463c-a395-ae1dca5d9282")
            try CXoneChat.shared.connection.connect()
        } catch {
            print("Failed to prepare or connect: \(error)")
        }
        
        return true
    }
}

