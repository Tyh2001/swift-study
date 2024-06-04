//
//  AsyncView.swift
//  swift-study
//
//  Created by Tyh2001 on 2024/6/4.
//

import SwiftUI

struct AsyncView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .task {
            do {
                if let signature = try await loadData() {
                    print("res", type(of: signature))
                } else {
                    print("error")
                }
            } catch {
                print("error:", error.localizedDescription)
            }
        }
    }

    // 添加 throws 关键字允许在函数内部抛出错误
    func loadData() async throws -> String? {
        guard let someURL = URL(string: "https://api.thecatapi.com/v1/images/search?limit=10&page=1") else {
            return nil
        }

        let (data, _) = try await URLSession.shared.data(from: someURL)
        return String(data: data, encoding: .utf8)
    }
}

#Preview {
    AsyncView()
}
