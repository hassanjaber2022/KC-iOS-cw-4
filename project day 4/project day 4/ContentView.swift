//
//  ContentView.swift
//  project day 4
//
//  Created by mac on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var finalgrade = ""
    @State var gradedes = ""
    
    var body: some View {
        ZStack{
            Color.blue.opacity(0.7)
                .ignoresSafeArea()
            VStack{
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                Spacer()
                Image("calculator")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                TextField("enter your grade",text: $finalgrade)
                    .background(.green.opacity(0.6))
                    .textFieldStyle(.roundedBorder)
                Text("احسب درجتي")
                    .frame(width: 150, height:60)
                    .background(.yellow)
                    .font(.title2)
                    .clipShape(Capsule())
                    .onTapGesture{
                 if (Double(finalgrade) ?? 0) >= 90 { gradedes = "امتياز"
                 }
                        else if (Double(finalgrade) ?? 0) <= 89 {
                            gradedes = "جيد جداً"
                        }
                    }
                Text("لقد حصلت على درجه")
                
                Spacer()
                Text(gradedes)
            } .padding()
                        
        
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
