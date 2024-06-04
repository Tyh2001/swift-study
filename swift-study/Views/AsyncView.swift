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
            let res = await self.loadData()

            print(res)
        }
    }

    // 添加 throws 关键字允许在函数内部抛出错误
    func loadData() async throws -> String {
//        return "123"
//        https://api.thecatapi.com/v1/images/search?limit=10&page=1
//        https://onevcat.com/2021/07/swift-concurrency/
    }
}

#Preview {
    AsyncView()
}
