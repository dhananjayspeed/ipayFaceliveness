//
//  ContentView.swift
//  ipayFaceliveness
//
//  Created by Dhananjay Kumar on 29/04/24.
//

import SwiftUI
//import FaceLiveness

struct ContentView: View {
    
    @Binding var options: [String: Any]
    
    @State private var isPresentingLiveness = false
    
    @State private var instructionList = [
        "When an oval appears, fill the oval with your face within 7 seconds.",
        "Maximize vour screen's brightness.",
        "Make sure your face is not covered with sunglasses or a mask.",
        "Move to a well-lit place that is not in direct sunlight.",
        "This check displays colored lights. Use caution if you are photosensitive."
    ]
    
    var body: some View {
        
            //Title Layout
            HStack{
                Text("\(options["title"] ?? "Liveness Check")")
                    .font(Font.system(size:26,design: .default))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                                        
                Spacer()
                                    
                Image(systemName: "xmark")
                .font(Font.system(size: 22, weight: .bold))
            }.frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .topLeading
            ).padding(.bottom, 5)
            
            ZStack(alignment: .bottom) {
                
                VStack{
                    
                    ScrollView{
                        Text("sdfsdfsfsdf - 1")
                    }
                    
                }.frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                ).border(Color.red, width: 8)
                    .background(Color.red)
                    .zIndex(1)

                
                VStack{
                    Text("sdfsdfsfsdf - 2 ")
                    Text("sdfsdfsfsdf- 3")
                }.frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                ).border(Color.yellow, width: 5)
                    .background(Color.white)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            ).border(Color.green, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
    }
}
 
extension Color {
   init(hex: String, opacity: Double = 1.0) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: opacity)
    }
}

#Preview {

    ContentView(options: .constant([
        "title1" : "dds",
        "hideScreen" : true
    ]))
}
                                                                                                                         
                                                                                                                    
