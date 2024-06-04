//
//  SettingView.swift
//  swift-study
//
//  Created by Tyh2001 on 2024/6/3.
//

import SwiftUI

struct SettingView: View {
    @State private var editingNameTextfield = ""
    @State private var editingTwitterTextfield = ""
    @State private var editingSiteTextfield = ""
    @State private var editingBioTextfield = ""

    @State private var nameBounce = ""
    @State private var twitterBounce = ""
    @State private var siteBounce = ""
    @State private var bioBounce = ""

    @State private var name = ""
    @State private var twitter = ""
    @State private var site = ""
    @State private var bio = ""
    
    private let gennerator = UISelectionFeedbackGenerator()

    var body: some View {
        Text("hello")
    }
}

#Preview {
    SettingView()
}
