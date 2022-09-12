//
//  InstructionsText.swift
//  Bullseye
//
//  Created by maxPro on 8/15/22.
//

import SwiftUI

struct InstructionsText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .fontWeight(.black)
            .kerning(-1)
            .font(.largeTitle)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .bold()
            .kerning(1.5)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.caption)
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(String(text))
            .font(.subheadline)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(
                Color.accentColor
                    .cornerRadius(12.0)
            )
    }
}

struct RoundedRectTextView: View {
    var text: String
    var body: some View{
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68.0, height: 55.78, alignment: .center)
            .foregroundColor(Color("TextColor"))
            .overlay{
                RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                    .stroke(Color("ButtonStrokeColor"), lineWidth: 2.0)
            }
    }
}

struct RoundedTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
    }
}

struct TextIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20.0) {
            InstructionsText(text: "Instructions")
            BigNumberText(text: "Big number")
            SliderLabelText(text: "test")
            LabelText(text: "Score")
            RoundedRectTextView(text: "99")
            RoundedTextView(text: "1")
            BodyText(text: "You scored 200 Points\n 🎉🎉🎉")
            ScoreText(score: 459)
            DateText(date: Date())
            ButtonText(text: "Start New Round")
        }
        .padding()
    }
}
