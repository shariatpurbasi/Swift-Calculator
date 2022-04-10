//
//  ContentView.swift
//  First Project
//
//  Created by Time on 4/10/22.
//

import SwiftUI


struct ContentView: View {
    @State var currentValue = "2"
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                TotalText(value: currentValue)
                HStack {
                    CalculatorButton(buttonText: "1", action: didPressNumber)
                    CalculatorButton(buttonText: "2", action: didPressNumber)
                    CalculatorButton(buttonText: "3", action: didPressNumber)
                    CalculatorButton(buttonText: "+", color: .orange, action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "4", action: didPressNumber)
                    CalculatorButton(buttonText: "5", action: didPressNumber)
                    CalculatorButton(buttonText: "6", action: didPressNumber)
                    CalculatorButton(buttonText: "-", color: .orange, action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "7", action: didPressNumber)
                    CalculatorButton(buttonText: "8", action: didPressNumber)
                    CalculatorButton(buttonText: "9", action: didPressNumber)
                    CalculatorButton(buttonText: "X", color: .orange, action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "0", width: 148 , action: didPressNumber)
                    CalculatorButton(buttonText: "C", color: .gray)
                    CalculatorButton(buttonText: "=", color: .orange)
                }
                
            }
            
           
        }
        
        .ignoresSafeArea()
        
    }
    
    func didPressNumber(button: CalculatorButton){
        currentValue = button.buttonText
    }
    func didPressMode(button: CalculatorButton){
        currentValue = button.buttonText
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}
