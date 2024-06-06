import Capacitor

@objc(CustomBridgePluginPlugin)
public class CustomBridgePluginPlugin: CAPPlugin {
    override public func load() {
        // Customize the bridged web view
        bridge?.webView?.frame.origin = CGPoint(x: 0, y: getStatusBarHeight())
        bridge?.webView?.frame.size.height = UIScreen.main.bounds.size.height - getStatusBarHeight() - getBottomSafeAreaInset()
    }

    private func getStatusBarHeight() -> CGFloat {
        let window = UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        return window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    }

    private func getBottomSafeAreaInset() -> CGFloat {
        let window = UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        return window?.safeAreaInsets.bottom ?? 0
    }
}