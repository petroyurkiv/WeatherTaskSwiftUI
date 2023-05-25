//
//  DailySummaryItemView.swift
//  WeatherTaskSwiftUI
//
//  Created by Petro on 25.05.2023.
//

import SwiftUI

struct DailySumarryItemView: View {
    var iconSize: CGFloat
    var image: String
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack() {
            Image(image)
                .resizable()
                .frame(width: iconSize, height: iconSize)
                .padding(.top, 8.0)
                .padding(.bottom, 0)
            Text(title)
                .font(.myParagraphText)
                .foregroundColor(Color("bgSunnyColor"))
            Text(subtitle)
                .font(.myDescriptionText)
                .foregroundColor(Color("bgSunnyColor"))
                .padding(.bottom, 16.0)
        }
        .frame(maxWidth: .infinity)
    }
}