//
//  HitMeButton.swift
//  Bullseye
//
//  Created by maxPro on 8/16/22.
//

import SwiftUI

struct HitMeButton: View {
    @Binding var alertisVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    
    var body: some View {
        Button {
            withAnimation {
                self.alertisVisible = true
            }
        } label: {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
                .foregroundColor(Color("TextColor"))
        }
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                    .foregroundColor(Color("TextColor"))
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(Constants.General.roundedRectCornerRadius)
        .overlay{
            RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
        }
    }
}

struct HitMeButton_Previews: PreviewProvider {
    static var previews: some View {
        HitMeButton(alertisVisible: .constant(true), sliderValue: .constant(50.0), game: .constant(Game()))
    }
}
