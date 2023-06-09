//
//  SearchView.swift
//  WeatherTaskSwiftUI
//
//  Created by Petro on 25.05.2023.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchedCity: String
    @State var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(R.string.texts.weatherTaskSwiftUISearchViewTitle())
                .font(Font(R.font.interSemiBold(size: 20.0) ?? .systemFont(ofSize: 20.0, weight: .semibold)))
                .padding(.leading)
            HStack {
                TextField("City", text: $text)
                    .font(Font(R.font.interMedium(size: 16.0) ?? .systemFont(ofSize: 16.0, weight: .medium)))
                    .onSubmit {
                        self.searchedCity = text
                    }
            }
            .padding(8.0)
            .overlay(RoundedRectangle(cornerRadius: 24.0)
                .stroke(.black, lineWidth: 4.0))
            .padding(.horizontal, 16.0)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
