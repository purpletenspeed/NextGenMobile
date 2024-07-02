import SwiftUI
import CXoneChatSDK

struct ChatViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CXoneChatViewController {
        CXoneChatViewController()
    }

    func updateUIViewController(_ uiViewController: CXoneChatViewController, context: Context) {}
}

