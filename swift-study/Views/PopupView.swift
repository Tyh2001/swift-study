//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 赵金红 on 6/3/24.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            VStack {
                Button {
                    withAnimation(Animation.spring(duration: 0.4)) {
                        showSheet.toggle()
                    }
                } label: {
                    Text("Show Sheet".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .bold()
                        .padding(20)
                        .background(.gray)
                        .cornerRadius(25)
                }
                Spacer()
            }

            if showSheet {
                Popup(showSheet: $showSheet)
                    .zIndex(1)
                    .padding(.top, 140)
                    .transition(.move(edge: .bottom))
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}

struct Popup: View {
    @Binding var showSheet: Bool

    var body: some View {
        ZStack(alignment: .topLeading, content: {
            Color
                .orange
                .ignoresSafeArea(.all)

            Button {
                withAnimation(.spring(duration: 0.4)) {
                    showSheet.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.blue)
                    .font(.title)
                    .bold()
                    .padding(10)
            }
        })
    }
}
