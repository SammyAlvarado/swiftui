//
//  PointsView.swift
//  Bullseye
//
//  Created by maxPro on 8/18/22.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertisVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        
        VStack(alignment: .center, spacing: 10.0) {
            InstructionsText(text: "The sliders value is".uppercased())
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) Points\n 🎉🎉🎉")
            Button {
                withAnimation {
                    alertisVisible = false
                }
                let roundedValue = Int(sliderValue.rounded())
                let points = game.points(sliderValue: roundedValue)
                game.startNewRound(points: points)
            } label: {
                ButtonText(text: "Start new round!")
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(Constants.General.roundedRectCornerRadius)
        .shadow(radius: 10, x: 5, y: 5)
        .transition(.scale)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView(alertisVisible: .constant(true), sliderValue: .constant(50.0), game: .constant(Game()))
        PointsView(alertisVisible: .constant(true), sliderValue: .constant(50.0), game: .constant(Game()))
            .previewLayout(.fixed(width: 568, height: 320))
        
        
        PointsView(alertisVisible: .constant(true), sliderValue: .constant(50.0), game: .constant(Game()))
            .preferredColorScheme(.dark)
        PointsView(alertisVisible: .constant(true), sliderValue: .constant(50.0), game: .constant(Game()))
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
