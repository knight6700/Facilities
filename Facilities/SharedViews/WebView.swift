//
//  WebView.swift
//  Facilities
//
//  Created by Mahmoud Fares on 28/07/2021.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let codeString: String
    @Binding var dynamicHeight: CGFloat

    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString("<html><body><p><font size=30>" + codeString + "</font></p></body></html>", baseURL: nil)
        uiView.evaluateJavaScript("document.documentElement.scrollHeight", completionHandler: { (height, error) in
            DispatchQueue.main.async {
                self.dynamicHeight = height as! CGFloat
            }
        })

    }
    
}

struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(codeString: "", dynamicHeight: .constant(123))
    }
}

struct Webview : UIViewRepresentable {
    @Binding var dynamicHeight: CGFloat
    let codeString: String
    var webview: WKWebView = WKWebView()

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: Webview

        init(_ parent: Webview) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            webView.evaluateJavaScript("document.documentElement.scrollHeight", completionHandler: { (height, error) in
                DispatchQueue.main.async {
                    self.parent.dynamicHeight = height as! CGFloat
                }
            })
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> WKWebView  {
        webview.scrollView.bounces = false
        webview.navigationDelegate = context.coordinator
        let htmlStart = "<HTML><HEAD><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=yes\"></HEAD><BODY>"
        let htmlEnd = "</BODY></HTML>"
        let dummy_html = codeString
        let htmlString = "\(htmlStart)\(dummy_html)\(htmlEnd)"
        webview.loadHTMLString(htmlString, baseURL:  nil)
        return webview
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}


struct TestWebViewInScrollView: View {
    @State private var webViewHeight: CGFloat = .zero
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "doc")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                Divider()
                Webview(dynamicHeight: $webViewHeight, codeString: "")
                    .padding(.horizontal)
                    .frame(height: webViewHeight)
            }
        }
    }
}

struct TestWebViewInScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TestWebViewInScrollView()
    }
}
