//
//  InstructionView.swift
//  Bullseye
//
//  Created by maxPro on 8/15/22.
//

import SwiftUI

struct InstructionView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            InstructionsText(text: "🎯🎯🎯\n Put the bullseye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            
            BigNumberText(text: String(game.target))
        }
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView(game: .constant(Game()))
    }
}
